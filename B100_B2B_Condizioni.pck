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
  
    -- Public function and procedure declarations
   Procedure pRCN_NO_PREPAGATO(ID_FATTURA   IN   NUMBER,
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

 -- Public function and procedure declarations
     Procedure pRCN_STD_ATTIVA_GIUGNO(ID_FATTURA   IN   NUMBER,
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


 -- Public function and procedure declarations
     Procedure pRCN_CONV_NESTLE_2014(ID_FATTURA   IN   NUMBER,
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
  
 -- Public function and procedure declarations
     Procedure pRCN_ESTERO_GIU_2009(ID_FATTURA   IN   NUMBER,
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


-- Public function and procedure declarations
     Procedure pRCN_CRIBIS_DB_AFFITTO_2012(ID_FATTURA   IN   NUMBER,
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
  Procedure UtpRCN_CRIBIS_DB_AFFITTO_2012(finito out Boolean); 
  
  /*
  Unit Test
  */                                           
  Procedure UtpRCN_COND_FATT_STD(finito out Boolean);
  
  /*
  Unit Test
  */                                           
  Procedure UtpRCN_CONV_NESTLE_2014(finito out Boolean);
  /*
  Unit Test
  */                                           
  Procedure UtpRCN_ESTERO_GIU_2009(finito out Boolean);
  /*
  Unit Test
  */                                           
  Procedure UtpRCN_STD_ATTIVA_GIUGNO(finito out Boolean);
  /*
  Unit Test
  */                                           
  Procedure UtpRCN_NO_PREPAGATO(finito out Boolean);
 

Procedure pRCN_ATT_8CAP_50ISP(ID_FATTURA   IN   NUMBER,
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
  
  Procedure UtpRCN_ATT_8CAP_50ISP(finito out Boolean);
  
  Procedure pCondomini_Pellegrino(ID_FATTURA   IN   NUMBER,
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
  
 Procedure UtpCondomini_Pellegrino(finito out Boolean);
 
 Procedure pRCN_ESTERO_2011_EU1(ID_FATTURA   IN   NUMBER,
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
                                             
  Procedure UtpRCN_ESTERO_2011_EU1(finito out Boolean);
  
  Procedure pRCN_ESTERO_2011_EU2(ID_FATTURA   IN   NUMBER,
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
                                             
  Procedure UtpRCN_ESTERO_2011_EU2(finito out Boolean);
  
  Procedure pRCN_ESTERO_2011_WORLD(ID_FATTURA   IN   NUMBER,
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
                                             
  Procedure UtpRCN_ESTERO_2011_WORLD(finito out Boolean);
 
 /**
Procedure pRCN_ATT_ALL_HEALTH calculate the amount divided in ranges
*/
 Procedure pRCN_ATT_ALL_HEALTH(ID_FATTURA   IN   NUMBER,
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
/**
Procedure pRCN_STD_ATTIVA_ANTIN calculate the amount divided in ranges
*/
   Procedure pRCN_STD_ATTIVA_ANTIN (ID_FATTURA   IN   NUMBER,
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
   Procedure pLEG_B2B_STD (ID_FATTURA   IN   NUMBER,
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
                                                                                                               
   Procedure pGIC_PROCEDURALE (ID_FATTURA   IN   NUMBER,
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
/**
Procedure pGIC_SINTETICO calculate the amount divided in ranges
  !! not finished yet 20170908 we have to implement the number of working day to calculate the correct value
*/
   
   
   Procedure pGIC_SINTETICO (ID_FATTURA   IN   NUMBER,
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
 --pGIC_PROCEDURALE
  /*
  Unit Test
  */                                           
  Procedure UtpRCN_ATT_ALL_HEALTH(finito out Boolean);
  Procedure UtpRCN_STD_ATTIVA_ANTIN(finito out Boolean);
  Procedure UtpLEG_B2B_STD(finito out Boolean);
  Procedure UtpGIC_PROCEDURALE(finito out Boolean);
  Procedure UtpGIC_SINTETICO(finito out Boolean);

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
          NRecovered:=Nrecovered - (NRecovered-MAXVALUE);
        end if;
        NCaseValue:=Ncasevalue + (NRecovered-MIDVALUE)*NpercentageapplicableMid;  
        if NCAseValue < 0 then
          NCAseValue:=0;
        else  
          NRecovered:=Nrecovered - (NRecovered-MIDValue);
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
  

-- inizio procedura RCN_NO_PREPAGATO
   Procedure UtpRCN_NO_PREPAGATO(finito out Boolean)
     IS
     ESITOPROC VARCHAR2(100);
     BEGIN
       pRCN_NO_PREPAGATO(400,  -- valore fittizio
                          1000, -- valore fittizio
                          12,   -- valore fittizio 
                          15,   -- valore fittizio
                          683524,-- valore reale
                          683524,-- valore reale
                          123,   -- valore fittizio
                          123,   -- valore fittizio
                          SYSDATE,-- valore fittizio
                          SYSdate,-- valore fittizio
                          'RCN_NO_PREPAGATO', -- valore fittizio
                          'fgh', -- valore fittizio
                          ESITOPROC
                          );
                        
     finito:=TRUE;                     
     END UtpRCN_NO_PREPAGATO;


   Procedure pRCN_NO_PREPAGATO(ID_FATTURA   IN   NUMBER,
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
  sNameProcedure := 'pRCN_NO_PREPAGATO';
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
          NRecovered:=Nrecovered - (NRecovered-MAXVALUE);
        end if;
        NCaseValue:=Ncasevalue + (NRecovered-MIDVALUE)*NpercentageapplicableMid;  
        if NCAseValue < 0 then
          NCAseValue:=0;
        else  
          NRecovered:=Nrecovered - (NRecovered-MIDValue);
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
      
  
  
  END pRCN_NO_PREPAGATO;
  
 -- inizio procedura RCN_STD_ATTIVA_GIUGNO
   Procedure UtpRCN_STD_ATTIVA_GIUGNO(finito out Boolean)
     IS
     ESITOPROC VARCHAR2(100);
     BEGIN
       pRCN_STD_ATTIVA_GIUGNO(400,  -- valore fittizio
                          1000, -- valore fittizio
                          12,   -- valore fittizio 
                          15,   -- valore fittizio
                          683524,-- valore reale
                          683524,-- valore reale
                          123,   -- valore fittizio
                          123,   -- valore fittizio
                          SYSDATE,-- valore fittizio
                          SYSdate,-- valore fittizio
                          'RCN_STD_ATTIVA_GIUGNO', -- valore fittizio
                          'fgh', -- valore fittizio
                          ESITOPROC
                          );
                        
     finito:=TRUE;                     
     END UtpRCN_STD_ATTIVA_GIUGNO;


   Procedure pRCN_STD_ATTIVA_GIUGNO(ID_FATTURA   IN   NUMBER,
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
  /*  Declare variable*/
  InvalidPrat EXCEPTION;
  
  
  DbUserTablePrat Geocall.X900Apratiche%Rowtype;
  cursorPratiche SYS_REFCURSOR;
  NRecovered Number; -- Total amount to be revovered
  NRecordLog Number;
  NPercentageRecuperato Number;
  NpercentageapplicableMin Number;
  NpercentageapplicableMid Number;
  NpercentageapplicableMax Number;
  NCAseValueF1 Number; -- VAlore calcolato su range importo capitale;
  NCAseValue Number; -- somma dei valori range+interessi+spese;
  NCAseValueInterest Number; -- Valore calcolato su interessi
  NCAseValueFees Number;-- Valore calcolato su spese
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
  MIDValue := 10000 * 10**6;
  MAXVALUE := 20000 * 10**6;
  -- time range
  MinDays:=0;
 -- MidDays:=180;
  MaxDays:=360;
  NPercentageRecuperato := 0.5;
  sNameProcedure := 'pRCN_STD_ATTIVA_GIUGNO';
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
    NCAseValueFees:=0;
    NCAseValueInterest:=0;
    NCAseValuef1:=0;
    --Ngiornidiff:=geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat);
    if (geocalldevutilities.a000_utility_pck.fCaseAccountable(DbUserTablePrat)) then
     /*applicare range sul totale recuperato*/ 
     NRecovered:=geocalldevutilities.a000_utility_pck.fPrincipalAmountPurchased(DbUserTablePrat); 
     
      
         
        if  geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=MaxDays then
            NpercentageapplicableMax:=0.04;
            NpercentageapplicableMid:=0.06;
            NpercentageapplicableMin:=0.08;                        
        else 
            NpercentageapplicableMax:=0.10;
            NpercentageapplicableMid:=0.12;
            NpercentageapplicableMin:=0.15;
        end if;
                
        
        NCaseValuef1:=(NRecovered-MAXVALUE)*NpercentageapplicableMAX;
        if NCAseValuef1 < 0 then
          NCAseValuef1:=0;
        else  
          NRecovered:=Nrecovered - (NRecovered-MAXVALUE);
        end if;
        NCaseValuef1:=Ncasevaluef1 + (NRecovered-MIDVALUE)*NpercentageapplicableMid;  
        if NCAseValuef1 < 0 then
          NCAseValuef1:=0;
        else  
          NRecovered:=Nrecovered - (NRecovered-MIDValue);
        end if;
        NCaseValuef1:=Ncasevaluef1 + (NRecovered-MINVALUE)*NpercentageapplicableMin;     
       
        NCAseValueFees:=geocalldevutilities.a000_utility_pck.fFeesAmountPurchased(DbUserTablePrat)
                    *NPercentageRecuperato;
        NCAseValueInterest:=geocalldevutilities.a000_utility_pck.fInterestAmountPurchased(DbUserTablePrat)
                    *NPercentageRecuperato;

        NCAseValue:=NCAseValueF1+NCAseValueFees+NCAseValueInterest;
    
    
    
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
      
  
  
  END pRCN_STD_ATTIVA_GIUGNO; 
 
-- inizio procedura RCN_CONV_CONCESS_NESTLE_2014
   Procedure UtpRCN_CONV_NESTLE_2014(finito out Boolean)
     IS
     ESITOPROC VARCHAR2(100);
     BEGIN
       pRCN_CONV_NESTLE_2014(400,  -- valore fittizio
                          1000, -- valore fittizio
                          12,   -- valore fittizio 
                          15,   -- valore fittizio
                          683524,-- valore reale
                          683524,-- valore reale
                          123,   -- valore fittizio
                          123,   -- valore fittizio
                          SYSDATE,-- valore fittizio
                          SYSdate,-- valore fittizio
                          'RCN_CONV_NESTLE_2014', -- valore fittizio
                          'fgh', -- valore fittizio
                          ESITOPROC
                          );
                        
     finito:=TRUE;                     
     END UtpRCN_CONV_NESTLE_2014;


   Procedure pRCN_CONV_NESTLE_2014(ID_FATTURA   IN   NUMBER,
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
  /*  Declare variable*/
  InvalidPrat EXCEPTION;
  
  
  DbUserTablePrat Geocall.X900Apratiche%Rowtype;
  cursorPratiche SYS_REFCURSOR;
  NRecovered Number; -- Total amount to be revovered
  NRecordLog Number;
  NPercentageRecuperato Number;
  NpercentageapplicableMin Number;
  NpercentageapplicableMid Number;
  NpercentageapplicableMax Number;
  NCAseValueF1 Number; -- VAlore calcolato su range importo capitale;
  NCAseValue Number; -- somma dei valori range+interessi+spese;
  NCAseValueInterest Number; -- Valore calcolato su interessi
  NCAseValueFees Number;-- Valore calcolato su spese
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
  MIDValue := 10000 * 10**6;
  MAXVALUE := 20000 * 10**6;
  -- time range
  MinDays:=0;
 -- MidDays:=180;
  MaxDays:=360;
  NPercentageRecuperato := 0.5;
  sNameProcedure := 'RCN_CONV_NESTLE_2014';
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
    NCAseValueFees:=0;
    NCAseValueInterest:=0;
    NCAseValuef1:=0;
    
    --Ngiornidiff:=geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat);
    if (geocalldevutilities.a000_utility_pck.fCaseAccountable(DbUserTablePrat)) then
     /*applicare range sul totale recuperato*/ 
     NRecovered:=geocalldevutilities.a000_utility_pck.fPrincipalAmountPurchased(DbUserTablePrat); 
     
      
         
        if  geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=MaxDays then
            NpercentageapplicableMax:=0.04;
            NpercentageapplicableMid:=0.06;
            NpercentageapplicableMin:=0.08;                        
        else 
            NpercentageapplicableMax:=0.10;
            NpercentageapplicableMid:=0.12;
            NpercentageapplicableMin:=0.14;
        end if;
                        
        NCaseValuef1:=(NRecovered-MAXVALUE)*NpercentageapplicableMAX;
        if NCAseValuef1 < 0 then
          NCAseValuef1:=0;
        else  
          NRecovered:=Nrecovered - (NRecovered-MAXVALUE);
        end if;
        NCaseValuef1:=Ncasevaluef1 + (NRecovered-MIDVALUE)*NpercentageapplicableMid;  
        if NCAseValuef1 < 0 then
          NCAseValuef1:=0;
        else  
          NRecovered:=Nrecovered - (NRecovered-MIDValue);
        end if;
        NCaseValuef1:=Ncasevaluef1 + (NRecovered-MINVALUE)*NpercentageapplicableMin;     
       
        NCAseValueFees:=geocalldevutilities.a000_utility_pck.fFeesAmountPurchased(DbUserTablePrat)
                    *NPercentageRecuperato;
        NCAseValueInterest:=geocalldevutilities.a000_utility_pck.fInterestAmountPurchased(DbUserTablePrat)
                    *NPercentageRecuperato;

        NCAseValue:=NCAseValueF1+NCAseValueFees+NCAseValueInterest;
    
    
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
      
  
  
  END pRCN_CONV_NESTLE_2014; 
 

-- inizio procedura RCN_ESTERO_GIU_2009
   Procedure UtpRCN_ESTERO_GIU_2009(finito out Boolean)
     IS
     ESITOPROC VARCHAR2(100);
     BEGIN
       pRCN_ESTERO_GIU_2009(400,  -- valore fittizio
                          1000, -- valore fittizio
                          12,   -- valore fittizio 
                          15,   -- valore fittizio
                          683524,-- valore reale
                          683524,-- valore reale
                          123,   -- valore fittizio
                          123,   -- valore fittizio
                          SYSDATE,-- valore fittizio
                          SYSdate,-- valore fittizio
                          'RCN_ESTERO_GIU_2009', -- valore fittizio
                          'fgh', -- valore fittizio
                          ESITOPROC
                          );
                        
     finito:=TRUE;                     
     END UtpRCN_ESTERO_GIU_2009;


   Procedure pRCN_ESTERO_GIU_2009(ID_FATTURA   IN   NUMBER,
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
  /*  Declare variable*/
  InvalidPrat EXCEPTION;
  
  
  DbUserTablePrat Geocall.X900Apratiche%Rowtype;
  cursorPratiche SYS_REFCURSOR;
  NRecovered Number; -- Total amount to be revovered
  NRecordLog Number;
  NPercentageRecuperato Number;
  NpercentageapplicableMin Number;
  NpercentageapplicableMid Number;
  NpercentageapplicableMax Number;
  NCAseValueF1 Number; -- VAlore calcolato su range importo capitale;
  NCAseValue Number; -- somma dei valori range+interessi+spese;
  NCAseValueInterest Number; -- Valore calcolato su interessi
  NCAseValueFees Number;-- Valore calcolato su spese
  NrecordW Number; --Nrecords Write
  NrecordD Number; --Nrecord write detail invoice
  sNameProcedure varchar2(40);
-- quotes to divide the amount recovered
-- MIN, MID, MAX 

  MINValue Number;
  MIDValue Number;
  MAXValue Number;
-- quotes to divide the interval of time
--  MinDays Number;
--  MidDays Number;
--  MaxDays Number;  
  
  
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
  MIDValue := 10000 * 10**6;
  MAXVALUE := 20000 * 10**6;
  -- time range
 -- MinDays:=0;
 -- MidDays:=180;
 -- MaxDays:=360;
  NPercentageRecuperato := 0.5;
  sNameProcedure := 'RCN_ESTERO_GIU_2009';
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
    NCAseValueFees:=0;
    NCAseValueInterest:=0;
    NCAseValuef1:=0;
    --Ngiornidiff:=geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat);
    if (geocalldevutilities.a000_utility_pck.fCaseAccountable(DbUserTablePrat)) then
     /*applicare range sul totale recuperato*/ 
     NRecovered:=geocalldevutilities.a000_utility_pck.fPrincipalAmountPurchased(DbUserTablePrat); 
     
      
         
            NpercentageapplicableMax:=0.10;
            NpercentageapplicableMid:=0.12;
            NpercentageapplicableMin:=0.15;                        
                            
        NCaseValuef1:=(NRecovered-MAXVALUE)*NpercentageapplicableMAX;
        if NCAseValuef1 < 0 then
          NCAseValuef1:=0;
        else  
          NRecovered:=Nrecovered - (NRecovered-MAXVALUE);
        end if;
        NCaseValuef1:=Ncasevaluef1 + (NRecovered-MIDVALUE)*NpercentageapplicableMid;  
        if NCAseValuef1 < 0 then
          NCAseValuef1:=0;
        else  
          NRecovered:=Nrecovered - (NRecovered-MIDValue);
        end if;
        NCaseValuef1:=Ncasevaluef1 + (NRecovered-MINVALUE)*NpercentageapplicableMin;     
       
        NCAseValueFees:=geocalldevutilities.a000_utility_pck.fFeesAmountPurchased(DbUserTablePrat)
                    *NPercentageRecuperato;
        NCAseValueInterest:=geocalldevutilities.a000_utility_pck.fInterestAmountPurchased(DbUserTablePrat)
                    *NPercentageRecuperato;

        NCAseValue:=NCAseValueF1+NCAseValueFees+NCAseValueInterest;
    
    
    
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
      
  
  
  END pRCN_ESTERO_GIU_2009; 

-- inizio procedura RCN_CRIBIS_DB_AFFITTO_2012
   Procedure UtpRCN_CRIBIS_DB_AFFITTO_2012(finito out Boolean)
     IS
     ESITOPROC VARCHAR2(100);
     BEGIN
       pRCN_CRIBIS_DB_AFFITTO_2012(400,  -- valore fittizio
                          1000, -- valore fittizio
                          12,   -- valore fittizio 
                          15,   -- valore fittizio
                          683524,-- valore reale
                          683524,-- valore reale
                          123,   -- valore fittizio
                          123,   -- valore fittizio
                          SYSDATE,-- valore fittizio
                          SYSdate,-- valore fittizio
                          'RCN_CRIBIS_DB_AFFITTO_2012', -- valore fittizio
                          'fgh', -- valore fittizio
                          ESITOPROC
                          );
                        
     finito:=TRUE;                     
     END UtpRCN_CRIBIS_DB_AFFITTO_2012;


   Procedure pRCN_CRIBIS_DB_AFFITTO_2012(ID_FATTURA   IN   NUMBER,
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
  /*  Declare variable*/
  InvalidPrat EXCEPTION;
  
  
  DbUserTablePrat Geocall.X900Apratiche%Rowtype;
  cursorPratiche SYS_REFCURSOR;
  NRecovered Number; -- Total amount to be revovered
  NRecordLog Number;
  Npercentageapplicable Number;
  NPercentageRecuperato Number;
  NCAseValueF1 Number; -- VAlore calcolato su range importo capitale;
  NCAseValue Number; -- somma dei valori range+interessi+spese;
  NCAseValueInterest Number; -- Valore calcolato su interessi
  NCAseValueFees Number;-- Valore calcolato su spese
  NrecordW Number; --Nrecords Write
  NrecordD Number; --Nrecord write detail invoice
  sNameProcedure varchar2(40);
   
  BEGIN/*codice*/
  /*
  leggere pratica 
  accountable?
  calcolare anzianità
  applicare range
  calcolare recuperato
  
  applicare percentuali
  */
  NPercentageRecuperato := 0.5;
  sNameProcedure := 'RCN_CRIBIS_DB_AFFITTO_2012';
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
    NCAseValueFees:=0;
    NCAseValueInterest:=0;
    NCAseValuef1:=0;
    --Ngiornidiff:=geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat);
    if (geocalldevutilities.a000_utility_pck.fCaseAccountable(DbUserTablePrat)) then
     /*applicare range sul totale recuperato*/ 
     NRecovered:=geocalldevutilities.a000_utility_pck.fPrincipalAmountPurchased(DbUserTablePrat); 
                 
            if  geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=360 then
                Npercentageapplicable:=0.15;
            
            else 
                Npercentageapplicable:=0.25;
            end if;
            
                
        NCAseValuef1:=NRecovered*Npercentageapplicable;           
       
        NCAseValueFees:=geocalldevutilities.a000_utility_pck.fFeesAmountPurchased(DbUserTablePrat)
                    *NPercentageRecuperato;
        NCAseValueInterest:=geocalldevutilities.a000_utility_pck.fInterestAmountPurchased(DbUserTablePrat)
                    *NPercentageRecuperato;

        NCAseValue:=NCAseValueF1+NCAseValueFees+NCAseValueInterest;
    
    
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
      
  
  
  END pRCN_CRIBIS_DB_AFFITTO_2012;   
  
  



Procedure pRCN_ATT_8CAP_50ISP(ID_FATTURA   IN   NUMBER,
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
                                             ESITO          OUT VARCHAR2)
  IS
  /*  Declare variable*/
  InvalidPrat EXCEPTION;
  DbUserTablePrat Geocall.X900Apratiche%Rowtype;
  cursorPratiche SYS_REFCURSOR;
  NRecordLog Number;
  NCAseValue Number; -- VAlue calculated
  NrecordW Number; --Nrecords Write
  NrecordD Number; --Nrecord write detail invoice
  BEGIN/*codice*/
  /*
  leggere pratica si potrebbe fare una funzione che restituisce un cursore di pratiche
  accountable?
  calcolare recuperato rate
  calcolare recuperato interessi
  calcolare recuperato spese
    
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
    
    if (geocalldevutilities.a000_utility_pck.fCaseAccountable(DbUserTablePrat)) then
            
       NCAseValue:=geocalldevutilities.a000_utility_pck.fPrincipalAmountPurchased(DbUserTablePrat)*0.08
                  +geocalldevutilities.a000_utility_pck.fInterestAmountPurchased(dbUserTablePrat)*0.50
                  +geocalldevutilities.a000_utility_pck.fFeesAmountPurchased(dbusertableprat)*0.50;
    
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
                                                                 'pRCN_ATT_8CAP_50ISP',
                                                                 'No Record found for idCase ' || DbUserTablePrat.X900apraid,
                                                                  'KO');
    end;
      
  
  
  END pRCN_ATT_8CAP_50ISP;
 
  
Procedure UtpRCN_ATT_8CAP_50ISP(finito out Boolean)
     IS
     ESITOPROC VARCHAR2(100);
     BEGIN
       pRCN_ATT_8CAP_50ISP(300,  -- valore fittizio
                          1000, -- valore fittizio
                          12,   -- valore fittizio 
                          15,   -- valore fittizio
                          691222,-- valore reale
                          691222,-- valore reale
                          123,   -- valore fittizio
                          123,   -- valore fittizio
                          SYSDATE,-- valore fittizio
                          SYSdate,-- valore fittizio
                          'abc', -- valore fittizio
                          'fgh', -- valore fittizio
                          ESITOPROC
                          );
                        
     finito:=TRUE;                     
     END UtpRCN_ATT_8CAP_50ISP;
  
 
Procedure pCondomini_Pellegrino(ID_FATTURA   IN   NUMBER,
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
                                             ESITO          OUT VARCHAR2)
IS
   --variabili
  CursorPratiche SYS_REFCURSOR;
  DbUserTablePrat Geocall.X900Apratiche%Rowtype;
  InvalidPrat EXCEPTION;
  NRecordLog Number;
  NCAseValue Number; -- VAlue calculated
  NrecordW Number; --Nrecords Write
  NrecordD Number; --Nrecord write detail invoice
  Npercentageapplicable Number;
  nTotalAmountPurchased number;
  nAgeCase number;
   
   BEGIN
     --codice
     --leggere pratiche
     --calcola recuperato
     --calcola range
     --applica percentuali
     
     Open CursorPratiche FOR 
     select * from geocall.x900apratiche prat
     where PRAT.X900APRAID_X900ALOT=ID_LOTTO_MASTER;
     
     LOOP
       FETCH CursorPratiche into DbUserTablePrat; 
       EXIT WHEN CursorPratiche%notfound;
       
       if (DbUserTablePrat.X900apraid) IS NULL THEN
           RAISE InvalidPrat;
       end if;
       

     if (geocalldevutilities.a000_utility_pck.fCaseAccountable(dbUserTablePrat)) 
       then
       nTotalAmountPurchased:=geocalldevutilities.a000_utility_pck.fTotalAmountPurchased(dbUserTablePrat);
       nAgeCase:=geocalldevutilities.a000_utility_pck.fAgeCase(dbUserTablePrat);
        if nAgeCase <=180 then
          if nTotalAmountPurchased <=3000*10**6
             then Npercentageapplicable:=0.08;
             else if nTotalAmountPurchased <=6000*10**6
                     then Npercentageapplicable:=0.06;
                     else Npercentageapplicable:=0.04;
                  end if;
              end if;
           else if nAgeCase <=720 then
              if nTotalAmountPurchased <=3000*10**6
                 then Npercentageapplicable:=0.12;
                 else if nTotalAmountPurchased <=6000*10**6
                         then Npercentageapplicable:=0.10;
                         else Npercentageapplicable:=0.08;
                  
                      end if;
               end if;     
                else Npercentageapplicable:=0.18;   
                end if;
        end if; 
        NCAseValue:=nTotalAmountPurchased*Npercentageapplicable+
                    geocalldevutilities.a000_utility_pck.fProtestAmountPurchased(dbUserTablePrat);
        -- aggiungi recuperato protesti e spese -- verifica  geocalldevutilities.a000_utility_pck.;
        end if;
     ---
     
     
     
     
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
  
 
                                                    
  END LOOP;  
  ESITO:='Finito'; -- valore fittizio 20170831                                                         
  
    
  EXCEPTION
  When InvalidPrat then
    begin
      NRecordLog:=geocalldevutilities.a000_utility_pck.fWriteLogDetail 
                                                                ('procedure',
                                                                 'pCondomini_Pellegrino',
                                                                 'No Record found for idCase ' || DbUserTablePrat.X900apraid,
                                                                  'KO');
    end;
      
  
  END pCondomini_Pellegrino;
  
  
  Procedure UtpCondomini_Pellegrino(finito out Boolean)
     IS
     ESITOPROC VARCHAR2(100);
     BEGIN
       pCondomini_Pellegrino(300,  -- valore fittizio
                          1000, -- valore fittizio
                          12,   -- valore fittizio 
                          15,   -- valore fittizio
                          607442,-- valore reale
                          607442,-- valore reale
                          123,   -- valore fittizio
                          123,   -- valore fittizio
                          SYSDATE,-- valore fittizio
                          SYSdate,-- valore fittizio
                          'abc', -- valore fittizio
                          'fgh', -- valore fittizio
                          ESITOPROC
                          );
                        
     finito:=TRUE;                     
     END UtpCondomini_Pellegrino;
     
          
    Procedure pRCN_ESTERO_2011_EU1(ID_FATTURA   IN   NUMBER,
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
                                             ESITO          OUT VARCHAR2)
  IS
  /*  Declare variable*/
  InvalidPrat EXCEPTION;
  DbUserTablePrat Geocall.X900Apratiche%Rowtype;
  cursorPratiche SYS_REFCURSOR;
  NRecordLog Number;
  NCAseValue Number; -- VAlue calculated
  NrecordW Number; --Nrecords Write
  NrecordD Number; --Nrecord write detail invoice
  BEGIN/*codice*/
  /*
  leggere pratica si potrebbe fare una funzione che restituisce un cursore di pratiche
  accountable?
  calcolare recuperato rate
  calcolare recuperato interessi
  calcolare recuperato spese
    
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
    
    if (geocalldevutilities.a000_utility_pck.fCaseAccountable(DbUserTablePrat)) then
            
       NCAseValue:=geocalldevutilities.a000_utility_pck.fPrincipalAmountPurchased(DbUserTablePrat)*0.15
                  +geocalldevutilities.a000_utility_pck.fInterestAmountPurchased(dbUserTablePrat)*0.50
                  +geocalldevutilities.a000_utility_pck.fFeesAmountPurchased(dbusertableprat)*0.50;
    
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
                                                                 'pRCN_ESTERO_2011_EU1',
                                                                 'No Record found for idCase ' || DbUserTablePrat.X900apraid,
                                                                  'KO');
    end;
      
  
  
  END pRCN_ESTERO_2011_EU1;
 
  
Procedure UtpRCN_ESTERO_2011_EU1(finito out Boolean)
     IS
     ESITOPROC VARCHAR2(100);
     BEGIN
       pRCN_ESTERO_2011_EU1(300,  -- valore fittizio
                          1000, -- valore fittizio
                          12,   -- valore fittizio 
                          15,   -- valore fittizio
                          691222,-- valore reale
                          691222,-- valore reale
                          123,   -- valore fittizio
                          123,   -- valore fittizio
                          SYSDATE,-- valore fittizio
                          SYSdate,-- valore fittizio
                          'abc', -- valore fittizio
                          'fgh', -- valore fittizio
                          ESITOPROC
                          );
                        
     finito:=TRUE;                     
     END UtpRCN_ESTERO_2011_EU1; 
     
     Procedure pRCN_ESTERO_2011_EU2(ID_FATTURA   IN   NUMBER,
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
                                             ESITO          OUT VARCHAR2)
  IS
  /*  Declare variable*/
  InvalidPrat EXCEPTION;
  DbUserTablePrat Geocall.X900Apratiche%Rowtype;
  cursorPratiche SYS_REFCURSOR;
  NRecordLog Number;
  NCAseValue Number; -- VAlue calculated
  NrecordW Number; --Nrecords Write
  NrecordD Number; --Nrecord write detail invoice
  BEGIN/*codice*/
  /*
  leggere pratica si potrebbe fare una funzione che restituisce un cursore di pratiche
  accountable?
  calcolare recuperato rate
  calcolare recuperato interessi
  calcolare recuperato spese
    
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
    
    if (geocalldevutilities.a000_utility_pck.fCaseAccountable(DbUserTablePrat)) then
            
       NCAseValue:=geocalldevutilities.a000_utility_pck.fPrincipalAmountPurchased(DbUserTablePrat)*0.18
                  +geocalldevutilities.a000_utility_pck.fInterestAmountPurchased(dbUserTablePrat)*0.50
                  +geocalldevutilities.a000_utility_pck.fFeesAmountPurchased(dbusertableprat)*0.50;
    
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
                                                                 'pRCN_ESTERO_2011_EU2',
                                                                 'No Record found for idCase ' || DbUserTablePrat.X900apraid,
                                                                  'KO');
    end;
      
  
  
  END pRCN_ESTERO_2011_EU2;
 
  
Procedure UtpRCN_ESTERO_2011_EU2(finito out Boolean)
     IS
     ESITOPROC VARCHAR2(100);
     BEGIN
       pRCN_ESTERO_2011_EU2(300,  -- valore fittizio
                          1000, -- valore fittizio
                          12,   -- valore fittizio 
                          15,   -- valore fittizio
                          691222,-- valore reale
                          691222,-- valore reale
                          123,   -- valore fittizio
                          123,   -- valore fittizio
                          SYSDATE,-- valore fittizio
                          SYSdate,-- valore fittizio
                          'abc', -- valore fittizio
                          'fgh', -- valore fittizio
                          ESITOPROC
                          );
                        
     finito:=TRUE;                     
     END UtpRCN_ESTERO_2011_EU2; 
     
     Procedure pRCN_ESTERO_2011_WORLD(ID_FATTURA   IN   NUMBER,
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
                                             ESITO          OUT VARCHAR2)
  IS
  /*  Declare variable*/
  InvalidPrat EXCEPTION;
  DbUserTablePrat Geocall.X900Apratiche%Rowtype;
  cursorPratiche SYS_REFCURSOR;
  NRecordLog Number;
  NCAseValue Number; -- VAlue calculated
  NrecordW Number; --Nrecords Write
  NrecordD Number; --Nrecord write detail invoice
  BEGIN/*codice*/
  /*
  leggere pratica si potrebbe fare una funzione che restituisce un cursore di pratiche
  accountable?
  calcolare recuperato rate
  calcolare recuperato interessi
  calcolare recuperato spese
    
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
    
    if (geocalldevutilities.a000_utility_pck.fCaseAccountable(DbUserTablePrat)) then
            
       NCAseValue:=geocalldevutilities.a000_utility_pck.fPrincipalAmountPurchased(DbUserTablePrat)*0.20
                  +geocalldevutilities.a000_utility_pck.fInterestAmountPurchased(dbUserTablePrat)*0.50
                  +geocalldevutilities.a000_utility_pck.fFeesAmountPurchased(dbusertableprat)*0.50;
    
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
                                                                 'pRCN_ESTERO_2011_WORLD',
                                                                 'No Record found for idCase ' || DbUserTablePrat.X900apraid,
                                                                  'KO');
    end;
      
  
  
  END pRCN_ESTERO_2011_WORLD;
 
  
Procedure UtpRCN_ESTERO_2011_WORLD(finito out Boolean)
     IS
     ESITOPROC VARCHAR2(100);
     BEGIN
       pRCN_ESTERO_2011_WORLD(300,  -- valore fittizio
                          1000, -- valore fittizio
                          12,   -- valore fittizio 
                          15,   -- valore fittizio
                          691222,-- valore reale
                          691222,-- valore reale
                          123,   -- valore fittizio
                          123,   -- valore fittizio
                          SYSDATE,-- valore fittizio
                          SYSdate,-- valore fittizio
                          'abc', -- valore fittizio
                          'fgh', -- valore fittizio
                          ESITOPROC
                          );
                        
     finito:=TRUE;                     
     END UtpRCN_ESTERO_2011_WORLD;
     
    --RCN_ATTIVA_ALLIANCE_HEALTHCARE
     Procedure UtpRCN_ATT_ALL_HEALTH(finito out Boolean)
     IS
     ESITOPROC VARCHAR2(100);
     BEGIN
       pRCN_ATT_ALL_HEALTH(100,  -- valore fittizio
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
                          'pRCN_ATT_ALL_HEALTH', -- valore fittizio
                          ESITOPROC
                          );
                        
     finito:=TRUE;                     
     END UtpRCN_ATT_ALL_HEALTH;
     
     --RCN_STD_ATTIVA_GIUGNO_09_ANTIN
     Procedure UtpRCN_STD_ATTIVA_ANTIN(finito out Boolean)
     IS
     ESITOPROC VARCHAR2(100);
     BEGIN
       pRCN_STD_ATTIVA_ANTIN(100,  -- valore fittizio
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
                          'pRCN_STD_ATTIVA_ANTIN', -- valore fittizio
                          ESITOPROC
                          );
                        
     finito:=TRUE;                     
     END UtpRCN_STD_ATTIVA_ANTIN;
     
     --LEG_B2B_STD_2015
     Procedure UtpLEG_B2B_STD(finito out Boolean)
     IS
     ESITOPROC VARCHAR2(100);
     BEGIN
       pLEG_B2B_STD(100,  -- valore fittizio
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
                          'pRCN_STD_ATTIVA_ANTIN', -- valore fittizio
                          ESITOPROC
                          );
                        
     finito:=TRUE;                     
     END UtpLEG_B2B_STD;

     Procedure UtpGIC_PROCEDURALE(finito out Boolean)
     IS
     ESITOPROC VARCHAR2(100);
     BEGIN
       pLEG_B2B_STD(100,  -- valore fittizio
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
                          'pRCN_STD_ATTIVA_ANTIN', -- valore fittizio
                          ESITOPROC
                          );
                        
     finito:=TRUE;                     
     END UtpGIC_PROCEDURALE;
 
     Procedure UtpGIC_SINTETICO(finito out Boolean)
     IS
     ESITOPROC VARCHAR2(100);
     BEGIN
       pLEG_B2B_STD(100,  -- valore fittizio
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
                          'pRCN_STD_ATTIVA_ANTIN', -- valore fittizio
                          ESITOPROC
                          );
                        
     finito:=TRUE;                     
     END UtpGIC_SINTETICO;    




Procedure pRCN_ATT_ALL_HEALTH    (ID_FATTURA   IN   NUMBER,
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
  NpercentageapplFeesInterest Number;
  NpercentageapplicableMin Number;
  NpercentageapplicableMid Number;
  NpercentageapplicableMax Number;
  NCaseValuePrincipal Number; -- VAlue calculated
  NCaseValueFees Number;
  NCaseValueInterest Number;
  NCaseValue Number;
  NrecordW Number; --Nrecords Write
  NrecordD Number; --Nrecord write detail invoice
  NRecovered Number; --Value Principal purchased
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
  MIDValue := 10000 * 10**6;
  MAXVALUE := 20000 * 10**6;
  -- time range
  MinDays:=0;
  MidDays:=360;
 -- MaxDays:=720;
  NpercentageapplFeesInterest:=0.5;
  
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
    NCaseValuePrincipal:=0;
    NCaseValueFees:=0;
    NCaseValueInterest:=0;        
    --Ngiornidiff:=geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat);
    if (geocalldevutilities.a000_utility_pck.fCaseAccountable(DbUserTablePrat)) then
     /*applicare range sul totale recuperato*/ 
     NRecovered:=geocalldevutilities.a000_utility_pck.fPrincipalAmountPurchased(DbUserTablePrat); 
     
      
         
        if  geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=MidDays then
            NpercentageapplicableMax:=0.04;
            NpercentageapplicableMid:=0.06;
            NpercentageapplicableMin:=0.08;                        
        elsif geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) >=MidDays then
            NpercentageapplicableMax:=0.10;
            NpercentageapplicableMid:=0.10;
            NpercentageapplicableMin:=0.10;   

        end if;
        
        NCaseValuePrincipal:=(NRecovered-MAXVALUE)*NpercentageapplicableMAX;
        if NCaseValuePrincipal < 0 then
          NCaseValuePrincipal:=0;
        else  
          NRecovered:=Nrecovered - (NRecovered-MAXVALUE);
        end if;
        NCaseValuePrincipal:=NCaseValuePrincipal + (NRecovered-MIDVALUE)*NpercentageapplicableMid;  
        if NCaseValuePrincipal < 0 then
          NCaseValuePrincipal:=0;
        else  
          NRecovered:=Nrecovered - (NRecovered-MIDValue);
        end if;
        NCaseValuePrincipal:=NCaseValuePrincipal + (NRecovered-MINVALUE)*NpercentageapplicableMin;     
        NCaseValueFees:=geocalldevutilities.a000_utility_pck.fFeesAmountPurchased(DbUserTablePrat)*
                                                                                           NpercentageapplFeesInterest;
        NCaseValueInterest:=geocalldevutilities.a000_utility_pck.fInterestAmountPurchased (DbUserTablePrat) *
                                                                                           NpercentageapplFeesInterest;
        NCaseValue:=NCaseValuePrincipal + NcaseValueFees + NCaseValueInterest;
        /**
        scrivere risultato
        */
        
        NrecordW:=geocalldevutilities.a000_utility_pck.fWriteCalculatedValue(ID_FATTURA,
                                                                             ID_LOTTO_MASTER,
                                                                             DbusertablePrat.X900apraid,           
                                                                             'REC_B2B',
                                                                             'Recuperato Totale',
                                                                             geocalldevutilities.a000_utility_pck.fTotalAmountPurchased(DbUserTablePrat),
                                                                             NCaseValue);
                                                                             
        NrecordD:=geocalldevutilities.a000_utility_pck.fWriteInvoiceDetail(ID_FATTURA,
                                                                           geocalldevutilities.a000_utility_pck.fCaseCustomer(DbusertablePrat.X900apraid),
                                                                           DbusertablePrat.X900apraid,
                                                                           geocalldevutilities.a000_utility_pck.fCaseDebtor(DbusertablePrat.X900apraid),
                                                                           0,
                                                                           NCaseValue);
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
      
  
  
  END pRCN_ATT_ALL_HEALTH;
  


   Procedure pRCN_STD_ATTIVA_ANTIN    (ID_FATTURA   IN   NUMBER,
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
  NPercentageInterestFees Number; --percentage interest and fees
  NpercentageapplFeesInterest Number;
  NpercentageapplicableMin Number;
  NpercentageapplicableMid Number;
  NpercentageapplicableMax Number;
  NCaseValuePrincipal Number; -- VAlue calculated
  NCaseValueFees Number;
  NCaseValueInterest Number;
  NCaseValue Number;
  NrecordW Number; --Nrecords Write
  NrecordD Number; --Nrecord write detail invoice
  NRecovered Number; --Value Principal purchased
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
  MIDValue := 10000 * 10**6;
  MAXVALUE := 20000 * 10**6;
  -- time range
  MinDays:=0;
  MidDays:=360;
 -- MaxDays:=720;
  NpercentageapplFeesInterest:=0.5;
  
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
    NCaseValuePrincipal:=0;
    NCaseValueFees:=0;
    NCaseValueInterest:=0;        
    --Ngiornidiff:=geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat);
    if (geocalldevutilities.a000_utility_pck.fCaseAccountable(DbUserTablePrat)) then
     /*applicare range sul totale recuperato*/ 
     NRecovered:=geocalldevutilities.a000_utility_pck.fPrincipalAmountPurchased(DbUserTablePrat); 
     
      
         
        if  geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=MidDays then
            NpercentageapplicableMax:=0.04;
            NpercentageapplicableMid:=0.06;
            NpercentageapplicableMin:=0.08;                        
        elsif geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) >=MidDays then
            NpercentageapplicableMax:=0.10;
            NpercentageapplicableMid:=0.12;
            NpercentageapplicableMin:=0.15;   

        end if;
        
        NCaseValuePrincipal:=(NRecovered-MAXVALUE)*NpercentageapplicableMAX;
        if NCaseValuePrincipal < 0 then
          NCaseValuePrincipal:=0;
        else  
          NRecovered:=Nrecovered - (NRecovered-MAXVALUE);
        end if;
        NCaseValuePrincipal:=NCaseValuePrincipal + (NRecovered-MIDVALUE)*NpercentageapplicableMid;  
        if NCaseValuePrincipal < 0 then
          NCaseValuePrincipal:=0;
        else  
          NRecovered:=Nrecovered - (NRecovered-MIDValue);
        end if;
        NCaseValuePrincipal:=NCaseValuePrincipal + (NRecovered-MINVALUE)*NpercentageapplicableMin;     
        NCaseValueFees:=geocalldevutilities.a000_utility_pck.fFeesAmountPurchased(DbUserTablePrat)*
                                                                                           NpercentageapplFeesInterest;
        NCaseValueInterest:=geocalldevutilities.a000_utility_pck.fInterestAmountPurchased (DbUserTablePrat) *
                                                                                           NpercentageapplFeesInterest;
        NCaseValue:=NCaseValuePrincipal + NcaseValueFees + NCaseValueInterest;

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
                                                                 sNameProcedure,
                                                                 'No Record found for idCase ' || DbUserTablePrat.X900apraid,
                                                                  'KO');
    end;
      
  
  
  END pRCN_STD_ATTIVA_ANTIN;
  

   Procedure pLEG_B2B_STD    (ID_FATTURA   IN   NUMBER,
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
  NPercentageInterestFees Number; --percentage interest and fees
  NCAseValue Number; -- VAlue calculated
  NrecordW Number; --Nrecords Write
  NrecordD Number; --Nrecord write detail invoice
  sNameProcedure varchar2(40);
  
  BEGIN/*codice*/
  /*
  leggere pratica si potrebbe faer una funzione che restituisce un cursore di pratiche
  accountable?
  calcolare anzianità
  calcolare range
  calcolare recuperato
  
  applicare percentuali
  */
  
  sNameProcedure:='pLEG_B2B_STD';
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

    
      
      Npercentageapplicable:=0.08;
      
      NCAseValue:=geocalldevutilities.a000_utility_pck.fPrincipalAmountPurchased(DbUserTablePrat)*Npercentageapplicable;
     
      
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
                                                                 sNameProcedure,
                                                                 'No Record found for idCase ' || DbUserTablePrat.X900apraid,
                                                                  'KO');
    end;
      
  
  
  END pLEG_B2B_STD;
  
  
  
   Procedure pGIC_PROCEDURALE    (ID_FATTURA   IN   NUMBER,
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
  NPercentageInterestFees Number; --percentage interest and fees
  NCAseValue Number; -- VAlue calculated
  NrecordW Number; --Nrecords Write
  NrecordD Number; --Nrecord write detail invoice
  sNameProcedure varchar2(40);
  
  BEGIN/*codice*/
  /*
  leggere pratica si potrebbe faer una funzione che restituisce un cursore di pratiche
  accountable?
  calcolare anzianità
  calcolare range
  calcolare recuperato
  
  applicare percentuali
  */
  
  sNameProcedure:='pGIC_PROCEDURALE';
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
            if  geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=60 then
                Npercentageapplicable:=0.06;
            elsif geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) > 60 then
                Npercentageapplicable:=0.08;
/*20170904
condizione da verificare sembra valga solo tra 0 e 90 giorni e poi niente altro 
           else 
                Npercentageapplicable:=0.15;
*/                
            end if;
    
      

      
      NCAseValue:=geocalldevutilities.a000_utility_pck.fPrincipalAmountPurchased(DbUserTablePrat)*Npercentageapplicable;
     
      
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
                                                                 sNameProcedure,
                                                                 'No Record found for idCase ' || DbUserTablePrat.X900apraid,
                                                                  'KO');
    end;
      
  
  
  END pGIC_PROCEDURALE;


   Procedure pGIC_SINTETICO    (ID_FATTURA   IN   NUMBER,
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
  NPercentageInterestFees Number; --percentage interest and fees
  NCAseValue Number; -- VAlue calculated
  NrecordW Number; --Nrecords Write
  NrecordD Number; --Nrecord write detail invoice
  sNameProcedure varchar2(40);
  
  BEGIN/*codice*/
  /*
  leggere pratica si potrebbe faer una funzione che restituisce un cursore di pratiche
  accountable?
  calcolare anzianità
  calcolare range
  calcolare recuperato
  
  applicare percentuali
  */
  
  sNameProcedure:='pGIC_SINTETICO';
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
            if  geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=30 then
                Npercentageapplicable:=0.04;
            elsif geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) > 30 then
                Npercentageapplicable:=0.03;
/*20170904
condizione da verificare il concetto primi 30 giorni di lavorazione e secondi 30 giorni di lavorazione 
           
*/                
            end if;
    
      
      NCAseValue:=geocalldevutilities.a000_utility_pck.fPrincipalAmountPurchased(DbUserTablePrat)*Npercentageapplicable;
     
      
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
                                                                 sNameProcedure,
                                                                 'No Record found for idCase ' || DbUserTablePrat.X900apraid,
                                                                  'KO');
    end;
      
  
  
  END pGIC_SINTETICO;

  

  
end B100_B2B_Condizioni;
/
