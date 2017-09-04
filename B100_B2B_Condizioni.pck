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
                          'fgh', -- valore fittizio
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
  NTot2Recover Number; -- Total amount to be revovered
  NRecordLog Number;
  Npercentageapplicable Number;
  NCAseValue Number; -- VAlue calculated
  NrecordW Number; --Nrecords Write
  NrecordD Number; --Nrecord write detail invoice
  BEGIN/*codice*/
  /*
  leggere pratica si potrebbe faer una funzione che restituisce un cursore di pratiche
  accountable?
  calcolare anzianità
  calcolare range
  calcolare recuperato
  
  applicare percentuali
  */
  OPEN cursorPratiche FOR
    SELECT * FROM GEOCALL.x900Apratiche PRAT
    where PRAT.X900APRAID_X900ALOT=ID_LOTTO_MASTER;
  LOOP
    FETCH cursorPratiche INTO DbUserTablePrat;
    EXIT WHEN cursorPratiche%NOTFOUND;
    if (DbUserTablePrat.X900apraid) IS NULL THEN
      RAISE InvalidPrat;
    end if;  
    --Ngiornidiff:=geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat);
    if (geocalldevutilities.a000_utility_pck.fCaseAccountable(DbUserTablePrat)) then
      NTot2Recover:=geocalldevutilities.a000_utility_pck.fTotalAmount2BeRecovered(DbUserTablePrat); 
      /*applicare range sul totale da recuperare*/
      if NTot2Recover <= 3000  then
         
        if  geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=180 then
            Npercentageapplicable:=0.08;
        elsif geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=720 then
             Npercentageapplicable:=0.12;
        else 
            Npercentageapplicable:=0.18;
        end if;
            
      elsif  NTot2Recover >3000  and NTot2Recover <=6000 then
        if  geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=180 then
            Npercentageapplicable:=0.06;
        elsif geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=720 then
             Npercentageapplicable:=0.10;
        else 
            Npercentageapplicable:=0.18;
        end if;    
      else
        if  geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=180 then
            Npercentageapplicable:=0.04;
        elsif geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=720 then
             Npercentageapplicable:=0.08;
        else 
            Npercentageapplicable:=0.18;      
        end if;    
      end if;
    end if;
    NCAseValue:=geocalldevutilities.a000_utility_pck.fTotalAmountPurchased(DbUserTablePrat)*Npercentageapplicable;
    
    /**
    scrivere risultato
    */
    NrecordW:=geocalldevutilities.a000_utility_pck.fWriteCalculatedValue(ID_FATTURA,
                                                                         ID_LOTTO_MASTER,
                                                                         DbusertablePrat.X900apraid,           
                                                                         'REC_B2B',
                                                                         'Recuperato Totale',
                                                                         NTot2Recover,
                                                                         NCAseValue);
                                                                         
    NrecordD:=geocalldevutilities.a000_utility_pck.fWriteInvoiceDetail(ID_FATTURA,
                                                                       geocalldevutilities.a000_utility_pck.fCaseCustomer(DbusertablePrat.X900apraid),
                                                                       DbusertablePrat.X900apraid,
                                                                       geocalldevutilities.a000_utility_pck.fCaseDebtor(DbusertablePrat.X900apraid),
                                                                       0,
                                                                       NCAseValue);
  END LOOP;  
  ESITO:='Finito'; -- valore fittizio 20170831                                                         
  
  
  
  
  
  EXCEPTION
  When InvalidPrat then
    begin
      NRecordLog:=geocalldevutilities.a000_utility_pck.fWriteLogDetail 
                                                                ('procedure',
                                                                 'pRCN_COND_FATT_STD',
                                                                 'No Record found for idCase ' || DbUserTablePrat.X900apraid,
                                                                  'KO');
    end;
      
  
  
  END pRCN_COND_FATT_STD;
end B100_B2B_Condizioni;
/
