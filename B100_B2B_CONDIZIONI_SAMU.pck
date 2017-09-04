create or replace package geocalldevutilities.B100_B2B_CONDIZIONI_SAMU is

  -- Author  : 076SAMCORRAD
  -- Created : 9/1/2017 11:17:58 AM
  -- Purpose : 
  
  -- Public type declarations
 -- type <TypeName> is <Datatype>;
  
  -- Public constant declarations
 -- <ConstantName> constant <Datatype> := <Value>;

  -- Public variable declarations
 -- <VariableName> <Datatype>;

  -- Public function and procedure declarations
 -- function <FunctionName>(<Parameter> <Datatype>) return <Datatype>;

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
end B100_B2B_CONDIZIONI_SAMU;
/
create or replace package body geocalldevutilities.B100_B2B_CONDIZIONI_SAMU is

  -- Private type declarations
  --type <TypeName> is <Datatype>;
  
  -- Private constant declarations
  --<ConstantName> constant <Datatype> := <Value>;

  -- Private variable declarations
  --<VariableName> <Datatype>;

  -- Function and procedure implementations
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
  
  sNameProcedure:='pRCN_ATT_ALL_HEALTH';
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
          if NTot2Recover <= 10000*10**6  then
             
            if  geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=360 then
                Npercentageapplicable:=0.08;
            
            else 
                Npercentageapplicable:=0.10;
            end if;
                
          elsif  NTot2Recover >10000*10**6   and NTot2Recover <=20000*10**6  then
            if  geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=360 then
                Npercentageapplicable:=0.06;
     
            else 
                Npercentageapplicable:=0.10;
            end if;    
          else
            if  geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=360 then
                Npercentageapplicable:=0.04;

            else 
                Npercentageapplicable:=0.10;      
            end if;    
          end if;
       
        
        NPercentageInterestFees := 0.5;
        
        NCAseValue:=geocalldevutilities.a000_utility_pck.fPrincipalAmountPurchased(DbUserTablePrat)*Npercentageapplicable;
        NCAseValue:= NCAseValue + (geocalldevutilities.a000_utility_pck.fInterestAmountPurchased(DbUserTablePrat)+
                                   geocalldevutilities.a000_utility_pck.fFeesAmountPurchased(DbUserTablePrat))
                                   *NPercentageInterestFees;
        
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
  
  sNameProcedure:='pRCN_STD_ATTIVA_ANTIN';
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
          if NTot2Recover <= 10000*10**6  then
             
            if  geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=360 then
                Npercentageapplicable:=0.08;
            
            else 
                Npercentageapplicable:=0.15;
            end if;
                
          elsif  NTot2Recover >10000*10**6   and NTot2Recover <=20000*10**6  then
            if  geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=360 then
                Npercentageapplicable:=0.06;
     
            else 
                Npercentageapplicable:=0.12;
            end if;    
          else
            if  geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=360 then
                Npercentageapplicable:=0.04;

            else 
                Npercentageapplicable:=0.10;      
            end if;    
          end if;

        
        NPercentageInterestFees := 0.5;
        
        NCAseValue:=geocalldevutilities.a000_utility_pck.fPrincipalAmountPurchased(DbUserTablePrat)*Npercentageapplicable;
        NCAseValue:= NCAseValue + (geocalldevutilities.a000_utility_pck.fInterestAmountPurchased(DbUserTablePrat)+
                                   geocalldevutilities.a000_utility_pck.fFeesAmountPurchased(DbUserTablePrat))
                                   *NPercentageInterestFees;
        
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
            elsif geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) > 60 and
              geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=90 then
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
            if  geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=60 then
                Npercentageapplicable:=0.06;
            elsif geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) > 60 and
              geocalldevutilities.a000_utility_pck.fAgeCase(DbUserTablePrat) <=90 then
                Npercentageapplicable:=0.08;
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

  

end B100_B2B_CONDIZIONI_SAMU;
/
