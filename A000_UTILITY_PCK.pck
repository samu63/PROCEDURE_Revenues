create or replace package geocalldevutilities.A000_UTILITY_PCK is

  -- Author  : 076SAMCORRAD
  -- Created : 8/2/2017 2:08:39 PM
  -- Purpose : Packages utilities

  /*
  This packages contains a lot of procedures to manages data
  */

  -- Public type declarations
  --type TotalAmountPurchased is Number;

  -- Public constant declarations
  --<ConstantName> constant <Datatype> := <Value>;

  -- Public function and procedure declarations
  function fTotalAmountPurchased(dbUserTableCase GEOCALL.X900APRATICHE%ROWTYPE)
    return Number;
  function fPrincipalAmountPurchased(dbUserTableCase GEOCALL.X900APRATICHE%ROWTYPE)
    return Number;  
  function fFeesAmountPurchased(dbUserTableCase GEOCALL.X900APRATICHE%ROWTYPE)
    return Number; 
  function fInterestAmountPurchased(dbUserTableCase GEOCALL.X900APRATICHE%ROWTYPE)
    return Number;         
  function fTotalAmount2BeRecovered(dbUserTableCase GEOCALL.X900APRATICHE%ROWTYPE)
    return Number;
  function fAgeCase(dbUserTableCase GEOCALL.X900APRATICHE%ROWTYPE)
    return Number;  
  function fDataLotto(IDlotto Number) 
    return date;  
  function fCaseAccountable(dbUserTableCase GEOCALL.X900APRATICHE%ROWTYPE)
    return Boolean;
  function fCaseAccountable(idCase Number) return Boolean;
  function fCaseDebtor(IDCase Number) return Number;
  function fCaseCustomer(IDCase Number) return Number;
  function fWriteCalculatedValue(IDInvoice              Number,
                                 IDSetOfCase            Number,
                                 IDCase                 Number,
                                 lAccountingReference   varchar2,
                                 lAccuontingDescription varchar2,
                                 NValueRecovered        Number,
                                 NAccountingCalculated  Number) return Number;
  function fWriteInvoiceDetail(IDInvoice  Number,
                               IDCustomer Number,
                               IDCase     Number,
                               IDDebtor   Number,
                               IDActivity Number,
                               NValue     Number) return Number;
  function fWriteLogDetail(cTypeCall         varchar2,
                           cNameCall         varchar2,
                           cDescriptionError varchar2,
                           CState            varchar2) return Number;

  function fState(Status varchar2) return NUMBER;
  function fDataOldCAse(IdCase Number) return DATE;
  function fDayScad (IdLotto Numeric) return DATE;
  --unit test
  procedure UtpWriteCalculatedValue(ftest out Boolean);
  procedure UtpWriteLogDetail(NrecordWrite out number);
  procedure UtpCaseCustomer(nameCustomer out Varchar2);
  procedure UtpCaseDebtor(nameDebtor out Varchar2); 
  procedure UtpDAtaLotto(datalotto out geocall.x900alotti.x900alotdataacquisizione%type);
  procedure UtpAgeCAse (numdays out Number);

--function fCaseAccountable (customCursor SYS_REFCURSOR) return Boolean;
end A000_UTILITY_PCK;
/
create or replace package body geocalldevutilities.A000_UTILITY_PCK is

  -- Private type declarations
  --type <TypeName> is <Datatype>;

  -- Private constant declarations
  --<ConstantName> constant <Datatype> := <Value>;

  -- Private variable declarations



  CaseAccountable         boolean;
  


  -- Function and procedure implementations
  function fTotalAmountPurchased(dbUserTableCase GEOCALL.X900APRATICHE%ROWTYPE)
    return Number is
    --  <LocalVariable> <Datatype>;
      TotalAmountPurchased    Number;
  begin
    --<Statement>;
    TotalAmountPurchased := dbUserTableCase.X900APRAIMPORTOTOTRECUPERATO;
    return(TotalAmountPurchased);
  end fTotalAmountPurchased;

  function fPrincipalAmountPurchased(dbUserTableCase GEOCALL.X900APRATICHE%ROWTYPE)
    return Number is
    --  <LocalVariable> <Datatype>;
      PrincipalAmountPurchased    Number;
  begin
    --<Statement>;
    PrincipalAmountPurchased := dbUserTableCase.X900aprarecuperatorate;
    return(PrincipalAmountPurchased);
  end fPrincipalAmountPurchased;
  
    function fFeesAmountPurchased(dbUserTableCase GEOCALL.X900APRATICHE%ROWTYPE)
    return Number is
    --  <LocalVariable> <Datatype>;
      FeesAmountPurchased    Number;
  begin
    --<Statement>;
    FeesAmountPurchased := dbUserTableCase.X900aprarecuperatospese;
    return(FeesAmountPurchased);
  end fFeesAmountPurchased;
  
    function fInterestAmountPurchased(dbUserTableCase GEOCALL.X900APRATICHE%ROWTYPE)
    return Number is
    --  <LocalVariable> <Datatype>;
      InterestAmountPurchased    Number;
  begin
    --<Statement>;
    InterestAmountPurchased := dbUserTableCase.X900aprarecuperatointeressi;
    return(InterestAmountPurchased);
  end fInterestAmountPurchased;

  function fTotalAmount2BeRecovered(dbUserTableCase GEOCALL.X900APRATICHE%ROWTYPE)
    return Number is
    --  <LocalVariable> <Datatype>;
      TotalAmount2BeRecovered Number;
  begin
    --<Statement>;
    TotalAmount2BeRecovered := dbUserTableCase.X900APRATOTIMPORTOARECUPERO;
    return(TotalAmount2BeRecovered);
  end fTotalAmount2BeRecovered;
  
 
  
  
  function fDayScad (IdLotto Numeric) return DATE
  is
  DataChiusuraLotto DATE;
  cursorData Sys_Refcursor;
  NRecordLog Number; 
  begin
  OPEN cursorData FOR
       Select Lotto.X900alotdatafinelavorazione  
  
        from GEocall.x900alotti  Lotto
        WHERE Lotto.X900alotid=IDLotto;
  LOOP
    Fetch cursorData 
    into DataChiusuraLotto;
    EXIT WHEN cursorData%NOTFOUND;
    if DataChiusuraLotto is null then
          NRecordLog:=fWriteLogDetail('function',
                         'fDataLotto',
                         'No Data found out for idLotto:' || IDLotto,
                         'KO');
      return(NULL);
    end if;  
   end loop;
   return (DataChiusuraLotto);
   end fDayScad;
  
  
  
  /**
  fDataLotto 20170831
  */
  function fDataLotto(IDlotto Number) return date
  is
  DataAcquisizioneLotto DATE;
  cursorData Sys_Refcursor;
  NRecordLog Number; 
  begin
  OPEN cursorData FOR
       Select Lotto.X900alotdataacquisizione  
  
        from GEocall.x900alotti  Lotto
        WHERE Lotto.X900alotid=IDLotto;
  LOOP
    Fetch cursorData 
    into DataAcquisizioneLotto;
    EXIT WHEN cursorData%NOTFOUND;
    if DataAcquisizioneLotto is null then
          NRecordLog:=fWriteLogDetail('function',
                         'fDataLotto',
                         'No Data found out for idLotto:' || IDLotto,
                         'KO');
      return(NULL);
    end if;  
   end loop;
  return (DataAcquisizioneLotto);
    
  end fDataLotto;
  
  function fDataOldCAse(IdCase Number) return DATE
    IS
    CursorMinData Sys_Refcursor;
    DAtaMinCase DATE;
    NRecordLog Number;
    BEGIN
      OPEN CursorMinData FOR
      SELECT MIN(RIGHEP.X900ARPRDATASCADENZAPAGAMENTO)
      FROM GEOCALL.X900ARIGHEPRATICHE RIGHEP
      WHERE RIGHEP.X900ARPRID_X900APRA=IdCase; 
      LOOP
        FETCH CursorMinData INTO DataMinCase;
        EXIT WHEN CursorMinData%NOTFOUND;
        if DataMinCase is null then
          NRecordLog:=fWriteLogDetail('function',
                         'fDataOldCAse',
                         'No Data found out for idCase:' || IDCase,
                         'KO');
          return(NULL);
        end if;  
      END LOOP;
      return (DataMinCase);
  
  END fDataOldCAse;
  
  
  
  
  /***
  fuction FCase Age 
  Figure out in days how much time there is from the oldest invoice and the acquisition of the set of Cases
  */
  
  function fAgeCase(dbUserTableCase GEOCALL.X900APRATICHE%ROWTYPE)
    return Number
    IS
    /*variable*/
    dDataLotto DATE;
    dDAtaMinCase DATE;
    
    BEGIN 
      /*code*/
      
      /* number of days between date acquisition set of case  and oldest date of invoices*/
      /*
      select sulle rate facendosi restituire la meno recente
      
      */
      dDAtaMinCase:=fdataOldCase(DbUserTableCAse.X900apraid);
      
      /*
      select per la data del lotto
      */
      dDataLotto:=fDAtaLotto(DbUserTableCAse.X900apraid_X900alot);
      /*
      Differences between date
      */
      
      return dDataLotto-dDAtaMinCase;
      
      
    end fAgeCase;
        

  function fCaseAccountable(idCase Number) return Boolean is
    --  <LocalVariable> <Datatype>;
    /*
    A case is accountable when is not Eliminated or Unworkable
    */
  begin
    --<Statement>;
    CaseAccountable := TRUE; /* to be define the case of accountbility*/
    return(CaseAccountable);
  end fCaseAccountable;
  /**
  function fCaseDebtor gather the cid Debtor Code
  */
    function fCaseCustomer(IDCase Number) return Number
      IS
      /*EXCEPTION*/
      InvalidCase EXCEPTION;
      /*variable*/
      IDCustomerCase Number;
      cursorCase SYS_REFCURSOR; --Cursor for Cases
      NRecordLog Number;
      BEGIN
        OPEN cursorCase FOR
       SELECT X900APRAID_X900ACMM IDCustomer
       FROM GEOCALL.X900APRATICHE
       WHERE X900APRAID=IDCase;
       LOOP
             FETCH cursorCase INTO IDCustomerCase; 
             EXIT WHEN cursorCase%NOTFOUND;
             IF IDCustomerCase IS NULL THEN
               RAISE InvalidCase;
             END IF;
             return(IDCustomerCase);    
       END LOOP;
       EXCEPTION 
         WHEN InvalidCAse then
           BEGIN
         NRecordLog:=fWriteLogDetail('function',
                         'fCaseDebtor',
                         'No Customer found out for idcase:' || IDCase,
                         'KO');
           return(NULL);
           END;                   
      END fCaseCustomer;
  /**
  function fCaseDebtor gather the ID Customer Code
  */
  function fCaseDebtor(IDCase Number) return Number
      IS
      /*EXCEPTION*/
      InvalidCase EXCEPTION;
      /*variable*/
      
      
        NRecordLog Number;
        Cursor CursorDebtors IS
          select ac.acliid as debitori_id,
           cp.x900rprcid_x900apra as debitori_pratica_id,
           c.x900lcliid as debitore_tipo_id,
           c.x900lclicodice as debitore_tipo_cod,
           c.x900lclidescrizione as debitore_tipo_desc,
           ac.aclinome as debitori_nome,
           ac.aclicognome as debitori_cognome,
           ac.acliragionesociale as debitori_ragionesociale,
           ac.aclifisica as debitori_fisica_giuridica,
           sc.tsclid as debitori_statcliente_id,
           sc.tscldescrizione as debitori_statcliente_desc

            from geocall.ACLIENTI ac left outer join geocall.X900RPRATICHECLIENTI cp ON (ac.acliid = cp.x900rprcid_acli)
                                                     inner join geocall.x900lcliente c ON(cp.x900rprcid_x900lcli = c.x900lcliid)
                                     left outer join geocall.tstaticliente sc  on (ac.acliid_tscl = sc.tsclid)

            where 

            cp.x900rprcid_x900apra <> 0
            and c.x900lclicodice ='I'
            and cp.x900rprcid_x900apra=IdCase;
            DBUserTableDebtors cursorDebtors%ROWTYPE;
      BEGIN
            OPEN CursorDebtors;
   
   
            LOOP
              FETCH CursorDebtors
                INTO DBUserTableDebtors;
              EXIT WHEN CursorDebtors%NOTFOUND; 
              IF DBUserTableDebtors.debitori_pratica_id IS NULL THEN
                       RAISE InvalidCase;
                     END IF;
                     return(DBUserTableDebtors.debitori_id);    
               END LOOP;
               EXCEPTION 
                 WHEN InvalidCAse then
                   BEGIN
                   NRecordLog:=fWriteLogDetail('function',
                                 'fCaseCustomer',
                                 'No Debtor found out for idcase:' || IDCase,
                                 'KO');
                    return(NULL);
                    END;
                           
      
      END fCaseDebtor;

  function fCaseAccountable(dbUserTableCase GEOCALL.X900APRATICHE%ROWTYPE)
    return Boolean is
    --  <LocalVariable> <Datatype>;
    /*
    A case is accountable when is not Eliminated or Unworkable
    */
  begin
    --<Statement>;
    CaseAccountable := TRUE; /* to be define the case of accountbility*/
    return(CaseAccountable);
  end fCaseAccountable;

  function fWriteCalculatedValue(IDInvoice              Number,
                                 IDSetOfCase            Number,
                                 IDCase                 Number,
                                 lAccountingReference   varchar2,
                                 lAccuontingDescription varchar2,
                                 NValueRecovered        Number,
                                 NAccountingCalculated  Number) return number
  
    /*
    INPUT PARAMETER
      IDInvoice: Number NUMBER of invoice PARAMETER received from geocall
      IDSetOfCase: Number NUMBER of set of case (lotto) PARAMETER received from geocall
      IDCase: Number ID of the case calculated by the procedure 
      lAccountingReference varchar2 value of Accounting REFERENCE defined durig the elaboration (need a Collection shared by element)
      NValueRecovered: Number Value recovered from in the case
      NAccountingCalculated Number (value amuont calculated)
    
    
    */
  
   is
    --  <LocalVariable> <Datatype>;
    /*
    Function available to Write the result of each evaluation of the Revenues return the number of records Wrote
    
    */
    /*EXCEPTION*/
    InvalidReference EXCEPTION; -- no reference in the table geocall.X900ABASECONTEGGIO
    InvalidAmount    EXCEPTION; --error in insert data 
  
    dbUserTableReferenceRead  GEOCALLDEVUTILITIES.ACCOUNTINGREFERENCE%ROWTYPE;
    dbUserTableReferenceWrite GEOCALLDEVUTILITIES.ACCOUNTINGREFERENCE%ROWTYPE;
    dbUserTableLog            GEOCALLDEVUTILITIES.LOG_STOREPROC%ROWTYPE;
  
    cursorReference SYS_REFCURSOR; --Cursor for reference
    NrecordWrite    Number; -- number of write records 
    QueryReference  varchar2(4000);
  
    InvalidfImport EXCEPTION; -- **** Excepion for substitute sequence delete after meeting 20170829
    cursorLastValue SYS_REFCURSOR; -- **** Cursor for substitute sequence delete after meeting 20170829
    NlastNumber     Number; -- variable to substitute sequence delete after meeting 20170829
    NRecordLog      Number;  
  begin
  
    /*
    Mandatory:
    TABLE geocall.X900
    */
  
    /* list of field to manage in the TABLE
    X900PFIMID Id Unique: Number(10) it must be use the sequence SX900PFATTURAZIONEIMPORTI.NEXTVAL
    X900PFIMID_X900APTE: Number(10) Id of the invoice (table X900APREFATTURETESTATE; field X900APTEID); 
                         fuction parameters input
    X900PFIMID_X900ALOT: Number(10) Id of set of Cases (table X900ALOTTI; field X900ALOTID); 
                         fuction parameters input
    X900PFIMID_X900APRA: Number(10) Id case's (table X900APRATICHE; field X900APRAID)
                         fuction parameters input
    X900PFIMID_X900ACCR: Number(10) REference of the condition in the contract; 
                         It's not also referred to the table X900ACONDCONTRATTORIGHE, 
                         It have to indicate to group by the name in the invoice print
    X900PFIMBASECONTEGGIOCODICE: Varchar2(20 Char) Code of the accounting value used  
                                 referred to the table X900ABASECONTEGGIO
                                 depending on an input parameter
    X900PFIMBASECONTEGGIODESC: Varchar2(40 Char) Name of the REference used keep from X900ABASECONTEGGIO
                               Today we used the field X900ABCODESCRIZIONE in table X900ABASECONTEGGIO)
    X900PFIMTIPOCONTEGGIO: Char(1 Char) Available value: '1', '0'; 
                           '1' indicate aa accounting blended to cases (nowadays X900ABCOTIPOCONTEGGIO); 
                           mandatory to visualize correctly the invoice
    
    X900PFIMCONTEGGIOINCASSI: Char(1 Char) Available value: '1', '0'; 
                              '1' indicate an accouintig based on purchased amount (nowadays X900ABCOCONTEGGIOINCASSI);
                               mandatory to visualize correctly the invoice
    X900PFIMIMPORTO Number(20) Amount calculated by the Reference;
                               the value depends on the kind of Reference
    X900PFIMVALORE Number(10)  Number inserted in the Reference
    X900PFIMVALOREPERC Number(6,3) Percentage referred in the Refeence
    X900PFIMVALUNITARIO: Number(20) Amount fixed the value depends on 
                         table X900ACONDCONTRATTORIGHE in fields:
                         X900ACCRCOMPFISSOVALORE, X900ACCRINCENTVALORE, X900ACCRINCENTPERCENTUALE, X900ACCR PROVVPERCENTUALE
    X900PFIMPERCENTUALE: Number (6,3) Amount fixed the value depends on 
                         table X900ACONDCONTRATTORIGHE in fields:
                         X900ACCRCOMPFISSOVALORE, X900ACCRINCENTVALORE, X900ACCRINCENTPERCENTUALE, X900ACCR PROVVPERCENTUALE
    X900PFIMIMPONIBILE: Number(20) Amount calculated by the procedure
                        fuction parameters input
    DATASTAMP: TimeStamp(6) SYSTIMESTAMP
    
    move on creation code
    
    CREATE TABLE GEOCALLDEVUTILITIES.TACCOUNTINGCODE
    ( X900PFIMBASECONTEGGIOCODICE Varchar2(20 Char), --Code of the accounting value used  
                                 --Defined a Table to manage this information (TACCOUNTINGCODE)
                                 --depending on an input parameter
    X900PFIMBASECONTEGGIODESC Varchar2(40 Char),
     IDTACCOUNTINGCODE --TODO INSERT automatic number like an identity Example by Roberti
     )
    
    
    */
  
    /*problem sequence don't working
    Select from GEOCALL.X900PFATTURAZIONEIMPORTI and increment value by myself
    comment code verify after 20170829 meeting 
    */
    /* start coment*/
    NlastNumber := 0; --initialization
    OPEN cursorLastValue FOR
    --select X900PFIMID from GEOCALL.X900PFATTURAZIONEIMPORTI;
      select MAX(X900PFIMID)
        from GEOCALLDEVUTILITIES.X900PFATTURAZIONEIMPORTI;
  
    LOOP
      FETCH cursorLastValue
        INTO NlastNumber;
      EXIT WHEN cursorLastValue%NOTFOUND;
      IF NlastNumber IS NULL THEN
        --RAISE InvalidFImport; -- it's impossible to escute an Exception and come back to the program
        NRecordLog:=fWriteLogDetail 
          ('function',
           'fWriteCalculatedValue',
           'reference not found in: select MAX(X900PFIMID) from GEOCALL.X900PFATTURAZIONEIMPORTI;',
            'KO');
 
           
        NlastNumber := 0;
      END IF;
    END LOOP;
    CLOSE cursorLastValue;
    NlastNumber    := NlastNumber + 1;
    /* end coment*/
    QueryReference := 'select *
        FROM GEOCALLDEVUTILITIES.ACCOUNTINGREFERENCE REFER
       WHERE REFER.LAccountingCOD = ''' ||
                      lAccountingReference || '''';
    --  dbms_output.put_line (QueryReference) ;

    OPEN cursorReference FOR QueryReference;
  
    LOOP
      FETCH cursorReference
        INTO dbUserTableReferenceRead;
    
      IF dbUserTableReferenceRead.LAccountingDESCR IS NULL then
        RAISE InvalidReference;
      END IF;
    
      EXIT WHEN cursorReference%NOTFOUND;
      INSERT INTO  GEOCALL.X900PFATTURAZIONEIMPORTI
      --INSERT INTO GEOCALLDEVUTILITIES.X900PFATTURAZIONEIMPORTI --verify at 20170830 INSERT INTO GEOCALL.X900PFATTURAZIONEIMPORTI
        (X900PFIMID,
         X900PFIMID_X900APTE,
         X900PFIMID_X900ALOT,
         X900PFIMID_X900APRA,
         X900PFIMID_X900ACCR,
         X900PFIMBASECONTEGGIOCODICE,
         X900PFIMBASECONTEGGIODESC,
         X900PFIMTIPOCONTEGGIO,
         X900PFIMCONTEGGIOINCASSI,
         X900PFIMIMPORTO,
         X900PFIMVALORE,
         X900PFIMVALOREPERC,
         X900PFIMVALUNITARIO,
         X900PFIMPERCENTUALE,
         X900PFIMIMPONIBILE,
         DATASTAMP)
      VALUES
         (GEOCALL.SX900PFATTURAZIONEIMPORTI.NEXTVAL, 

       --  (NlastNumber, -- GEOCALL.SX900PFATTURAZIONEIMPORTI.NEXTVAL, code to comment  after 20170830 CR meeting

         IDInvoice,
         IDSetOfCase,
         IDCase,
         101,  -- verfica in collaudo 20170901 per capire se parametro deve essere variabile
         lAccountingReference,
         dbUserTableReferenceRead.LAccountingDESCR,
         '0',
         '0',
         NValuerecovered,
         NULL,
         NULL,
         NULL,
         NULL,
         NAccountingCalculated,
         SYSTIMESTAMP);
    
      COMMIT;
      NrecordWrite := 1;
      --RAISE InvalidAmount; -- verify this exception
    END LOOP;
  
    CLOSE cursorReference;
    return(NrecordWrite);
  EXCEPTION
    WHEN InvalidReference THEN
      BEGIN
        /*write log*/
      
        NRecordLog:=fWriteLogDetail 
          ('function',
           'fWriteCalculatedValue',
           'reference not found in: select * FROM GEOCALLDEVUTILITIES.ACCOUNTINGREFERENCE REFER' ||
           ' WHERE REFER.LAccountingCOD = ' || lAccountingReference,
            'KO');
  
        /* raised an error in GEOCALLDEVUTILITIES.ACCOUNTINGREFERENCE no record
        insert the new one and restart the procedure
        */
        dbUserTableReferenceWrite.Laccountingcod   := lAccountingReference;
        dbUserTableReferenceWrite.Laccountingdescr := lAccuontingDescription;
      
        Insert into GEOCALLDEVUTILITIES.ACCOUNTINGREFERENCE
        VALUES
          (dbUserTableReferenceWrite.Laccountingcod,
           dbUserTableReferenceWrite.Laccountingdescr);
        COMMIT;
        /* ****** 20170823 inserire checkErrore errore da gestire il fatto che non scriva il record*/
        NrecordWrite := fWriteCalculatedValue(IDInvoice,
                                              IDSetOfCase,
                                              IDCase,
                                              lAccountingReference,
                                              lAccuontingDescription,
                                              NValueRecovered,
                                              NAccountingCalculated);
        return(NrecordWrite);
      END;
           NRecordLog:=fWriteLogDetail 
          ('function',
           'fWriteCalculatedValue',
           'ADDED new REFERENCE ' || dbUserTableReferenceWrite.Laccountingcod || ', ' ||
         dbUserTableReferenceWrite.Laccountingdescr,
            'OK');
        
     
    
    WHEN InvalidAmount THEN
      BEGIN
           NRecordLog:=fWriteLogDetail 
          ('function',
           'fWriteCalculatedValue',
           'reference not found in: INSERT INTO geocall.X900PFATTURAZIONEIMPORTI',
            'KO');
     
        return(NrecordWrite);
      END;
           
    WHEN InvalidFImport THEN
      BEGIN
        NRecordLog:=fWriteLogDetail 
          ('function',
           'fWriteCalculatedValue',
           'reference not found in: select MAX(X900PFIMID) from GEOCALL.X900PFATTURAZIONEIMPORTI;',
            'KO');
        return(NrecordWrite);
      END;
  end fWriteCalculatedValue;



  function fState(Status varchar2) return Number IS
    bstatus Boolean;
  BEGIN
    bstatus := FALSE;
    if Status = 'OK' then
      bstatus := TRUE;
      return(1);
    end if;
  
    return(0);
  
  end fState;

  /***
  function to write invoice detail receive input data and write in the table GEOCALLDEVUTILITIES.DETAILINVOICE
  */
  function fWriteInvoiceDetail(IDInvoice  Number,
                               IDCustomer Number,
                               IDCase     Number,
                               IDDebtor   Number,
                               IDActivity Number,
                               NValue     Number) return Number
  
   IS
 
  BEGIN
      INSERT INTO GEOCALLDEVUTILITIES.DETAILINVOICE 
      VALUES (
             SYS_GUID(),
             IDCustomer ,
             IDCase     ,
             IDDebtor   ,
             IDActivity ,
             NValue     ,
             IDInvoice  );
  return (1); -- number record write           
  END fWriteInvoiceDetail;

  function fWriteLogDetail(cTypeCall         varchar2,
                           cNameCall         varchar2,
                           cDescriptionError varchar2,
                           CState            varchar2) return Number IS
    cQuery varchar2(4000);
  BEGIN
  
    cQuery := 'INSERT INTO geocalldevutilities.LOG_STOREPROC
      VALUES
        (SYS_GUID(), 
        ''' || cTypeCall || ''', ' 
        || '''' || cNameCall  || ''', ' 
        || ' SYSTIMESTAMP, Geocalldevutilities.A000_Utility_Pck.fState(''' || CState || '''), ' 
        || '''' || CDescriptionError || ''')';

         dbms_output.put_line(cQuery);
         Execute immediate cQuery;
     return(1);         
  END fWriteLogDetail;
  procedure UtpWriteLogDetail(NrecordWrite out number) 
    IS
    
    BEGIN
     nRecordWrite:=fWriteLogDetail 
          ('function',
           'UtpWriteLogDetail',
           'Unit TEst',
           'KO'); 
    END UtpWriteLogDetail; 
    
     procedure UtpCaseCustomer(nameCustomer out Varchar2)
       IS
       IDCase Number;
       CursorCustomer SYS_REFCURSOR;
       BEGIN
         IDCase:=14847478;
         OPEN CursorCustomer FOR
         select
         
         Customer.X900ACMMDENOMINAZIONE DescrCommittente

          from "GEOCALL"."X900ACOMMITTENTI" CUSTOMER
          where CUSTOMER.X900ACMMID=fCaseCustomer(IDCase);
          Loop
            fetch CursorCustomer
            into nameCustomer;
              EXIT WHEN CursorCustomer%NOTFOUND; 
          END LOOP;
 
         END UtpCaseCustomer;
         
  procedure UtpCaseDebtor(nameDebtor out Varchar2)
      IS
      IDCase Number;
           Cursor CursorDebtors IS
           select ac.acliid as debitori_id,
           
           ac.aclinome as debitori_nome,
           ac.aclicognome as debitori_cognome,
           ac.acliragionesociale as debitori_ragionesociale
           
           

            from geocall.ACLIENTI ac 

            where 

            ac.acliid=fCaseDebtor(IDCase);
            DBUserTableDebtors cursorDebtors%ROWTYPE;
      BEGIN
        IDCase:=14847478;
            OPEN CursorDebtors;
   
   
            LOOP
              FETCH CursorDebtors
                INTO DBUserTableDebtors;
              EXIT WHEN CursorDebtors%NOTFOUND; 
              /* Assert value RAGSOC47439 */
              nameDebtor:= DBUserTableDebtors.debitori_ragionesociale;
         
              END LOOP;         
         END UtpCaseDebtor;
         
  procedure UtpDAtaLotto(datalotto out geocall.x900alotti.x900alotdataacquisizione%type)

  is
  
  begin
    datalotto:=fDataLotto(675909);
    /*
    Assert la data lorro che restituisce deve essere 27/04/2016
    */
    
  End UtpDAtaLotto;
  
  procedure UtpAgeCAse (numdays out Number)
    IS
    CursorPRat sys_refcursor;
    DbUserTablePRat Geocall.X900apratiche%ROWTYPE;
    BEGIN
    OPEN CursorPrat FOR
    SELECT * FROM Geocall.X900apratiche PRAT
    WHERE PRAT.X900APRAID=15170741;
    LOOP
      FETCH CursorPRat INTO
      DbUserTablePRat;   
      EXIT WHEN CursorPRat%NOTFOUND;
      
      numdays:=fAgecase(DbUserTablePRat);
    END LOOP;
    END UtpAgeCAse;

  procedure UtpWriteCalculatedValue(ftest OUT Boolean) IS
  
  BEGIN
  
    if (fWriteCalculatedValue(100,
                              10000,
                              11000,
                              'TEST_CODE',
                              'TEsting Code',
                              110,
                              1) = 1) then
      ftest := TRUE;
    
    ELSE
      ftest := FALSE;
    END IF;
  
  END UtpWriteCalculatedValue;

  --begin
-- Initialization
--  <Statement>;
end A000_UTILITY_PCK;
/
