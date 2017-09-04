create or replace package geocalldevutilities.B100_B2B_Condizioni is

  -- Author  : 076SAMCORRAD
  -- Created : 8/30/2017 12:08:53 PM
  -- Purpose : Contiene tutte le condizioni per B2B e UNEP
  
  -- Public type declarations
  --type <TypeName> is <Datatype>;
  
  -- Public constant declarations
  --<ConstantName> constant <Datatype> := <Value>;

  -- Public variable declarations
  --<VariableName> <Datatype>;

  -- Public function and procedure declarations
   Procedure pRCN_COND_FATT_STD(ID_FATTURA   IN   NUMBER,
                                             ID_COMMITTENTE IN  NUMBER,
                                             ID_UTENTE       IN NUMBER,
                                             ID_ESATTORE  IN   NUMBER,
                                             ID_LOTTO     IN   NUMBER,
                                             ID_LOTTO_MASTER IN NUMBER,
                                             ID_CONTRATTO  IN  NUMBER,
                                             ID_COND_CONTR IN  NUMBER,
                                             DT_INIZIO     IN  DATE,
                                             DT_FINE       IN  DATE,
                                             TIPO_FATTURA  IN  VARCHAR2,
                                             TIPO_FATTURA_2 IN  VARCHAR2,
                                             ESITO           OUT VARCHAR2);
  /*
  Unit Test
  */                                           
  Procedure UtpRCN_COND_FATT_STD(finito out Boolean);
  
end B100_B2B_Condizioni;
/
create or replace package body geocalldevutilities.B100_B2B_Condizioni is

  -- Private type declarations
--  type <TypeName> is <Datatype>;
  
  -- Private constant declarations
--  <ConstantName> constant <Datatype> := <Value>;

  -- Private variable declarations
--  <VariableName> <Datatype>;

  -- Function and procedure implementations
  /*
  function <FunctionName>(<Parameter> <Datatype>) return <Datatype> is
    <LocalVariable> <Datatype>;
  begin
    <Statement>;
    return(<Result>);
  end;



begin
  -- Initialization
  <Statement>;
*/
   Procedure UtpRCN_COND_FATT_STD(finito out Boolean)
     IS
     ESITOPROC VARCHAR2(100);
     BEGIN
       pRCN_COND_FATT_STD(100,  -- valore fittizio
                          1000, -- valore fittizio
                          12,   -- valore fittizio 
                          15,   -- valore fittizio
                          683524,-- valore reale
                          683524,-- valore reale
                          123,   -- valore fittizio
                          123,   -- valore fittizio
                          SYSDATE,-- valore fittizio
                          SYSdate,-- valore fittizio
                          'abc', -- valore fittizio
                          'pRCN_COND_FATT_STD', -- valore fittizio
                          ESITOPROC
                          );
                        
     finito:=TRUE;                     
     END UtpRCN_COND_FATT_STD;


   Procedure pRCN_COND_FATT_STD(ID_FATTURA   IN   NUMBER,
                                             ID_COMMITTENTE IN  NUMBER,
                                             ID_UTENTE       IN NUMBER,
                                             ID_ESATTORE  IN   NUMBER,
                                             ID_LOTTO     IN   NUMBER,
                                             ID_LOTTO_MASTER IN NUMBER,
                                             ID_CONTRATTO  IN  NUMBER,
                                             ID_COND_CONTR IN  NUMBER,
                                             DT_INIZIO     IN  DATE,
                                             DT_FINE       IN  DATE,
                                             TIPO_FATTURA  IN  VARCHAR2,
                                             TIPO_FATTURA_2 IN  VARCHAR2,
                                             ESITO           OUT VARCHAR2)
  IS
  /*  Declare variable*/
  InvalidPrat EXCEPTION;
  
  
  DbUserTablePrat Geocall.X900Apratiche%Rowtype;
  cursorPratiche SYS_REFCURSOR;
  NRecovered Number; -- Total amount to be revovered
  NRecordLog Number;
  NpercentageapplicableMin Number;
  NpercentageapplicableMid Number;
  NpercentageapplicableMax Number;
  NCAseValue Number; -- VAlue calculated
  NrecordW Number; --Nrecords Write
  NrecordD Number; --Nrecord write detail invoice
  sNameProcedure varchar2(40);
-- quotes to divide the amount recovered
-- MIN, MID, MAX 

  MINValue Number;
  MIDValue Number;
  MAXValue Number;
-- quotes to divide the interval of time
  MinDays Number;
  MidDays Number;
  MaxDays Number;  
  BEGIN/*codice*/
  /*
  leggere pratica 
  accountable?
  calcolare anzianità
  applicare range
  calcolare recuperato
  
  applicare percentuali
  */
  -- value Range 10**6 value according to Geocall rule
  MINValue := 0;
  MIDValue := 3000 * 10**6;
  MAXVALUE := 6000 * 10**6;
  -- time range
  MinDays:=0;
  MidDays:=180;
  MaxDays:=720;
  sNameProcedure := 'pRCN_COND_FATT_STD';
  OPEN cursorPratiche FOR
    SELECT * FROM GEOCALL.x900Apratiche PRAT
    where PRAT.X900APRAID_X900ALOT=ID_LOTTO_MASTER;
  LOOP
    FETCH cursorPratiche INTO DbUserTablePrat;
    EXIT WHEN cursorPratiche%NOTFOUND;
    if (DbUserTablePrat.X900apraid) IS NULL THEN
      RAISE InvalidPrat;
    end if;  
    NCaseValue:=0;
    --Ngiornidiff:=geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat);
    if (geocalldevutilities.a000_utility_pck.fCaseAccountable(DbUserTablePrat)) then
     /*applicare range sul totale recuperato*/ 
     NRecovered:=geocalldevutilities.a000_utility_pck.fTotalAmountPurchased(DbUserTablePrat); 
     
      
         
        if  geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=MidDays then
            NpercentageapplicableMax:=0.04;
            NpercentageapplicableMid:=0.06;
            NpercentageapplicableMin:=0.08;                        
        elsif geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=MaxDays then
            NpercentageapplicableMax:=0.08;
            NpercentageapplicableMid:=0.10;
            NpercentageapplicableMin:=0.12;   
        else 
            NpercentageapplicableMax:=0.18;
            NpercentageapplicableMid:=0.18;
            NpercentageapplicableMin:=0.18;
        end if;
        
        NCaseValue:=(NRecovered-MAXVALUE)*NpercentageapplicableMAX;
        if NCAseValue < 0 then
          NCAseValue:=0;
        else  
          NRecovered:=(NRecovered-MAXVALUE);
        end if;
        NCaseValue:=Ncasevalue + (NRecovered-MIDVALUE)*NpercentageapplicableMid;  
        if NCAseValue < 0 then
          NCAseValue:=0;
        else  
          NRecovered:=(NRecovered-MIDValue);
        end if;
        NCaseValue:=Ncasevalue + (NRecovered-MINVALUE)*NpercentageapplicableMin;     
   

    
    
    
    /**
    scrivere risultato
    */
    NrecordW:=geocalldevutilities.a000_utility_pck.fWriteCalculatedValue(ID_FATTURA,
                                                                         ID_LOTTO_MASTER,
                                                                         DbusertablePrat.X900apraid,           
                                                                         'REC_B2B',
                                                                         'Recuperato Totale',
                                                                         geocalldevutilities.a000_utility_pck.fTotalAmountPurchased(DbUserTablePrat),
                                                                         NCAseValue);
                                                                         
    NrecordD:=geocalldevutilities.a000_utility_pck.fWriteInvoiceDetail(ID_FATTURA,
                                                                       geocalldevutilities.a000_utility_pck.fCaseCustomer(DbusertablePrat.X900apraid),
                                                                       DbusertablePrat.X900apraid,
                                                                       geocalldevutilities.a000_utility_pck.fCaseDebtor(DbusertablePrat.X900apraid),
                                                                       0,
                                                                       NCAseValue);
    end if;
  END LOOP;  
  ESITO:='Finito'; -- valore fittizio 20170831                                                         
  
  
  
  
  
  EXCEPTION
  When InvalidPrat then
    begin
      NRecordLog:=geocalldevutilities.a000_utility_pck.fWriteLogDetail 
                                                                ('procedure',
                                                                 sNameprocedure,
                                                                 'No Record found for idCase ' || DbUserTablePrat.X900apraid,
                                                                  'KO');
    end;
      
  
  
  END pRCN_COND_FATT_STD;
end B100_B2B_Condizioni;
/
