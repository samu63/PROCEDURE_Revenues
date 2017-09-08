create or replace package geocalldevutilities.A100_INS_ASSIMOCO is

  -- Author  : 076SAMCORRAD
  -- Created : 8/1/2017 7:32:57 PM
  -- Purpose : Case Assimoco value

  --  function calculating purchease percentage
  -- operation to do:
  -- select Cases, multiply for percentage
  -- select activity, mutiply for percentage

  -- Public type declarations
  --type <TypeName> is <Datatype>;

  -- Public constant declarations
  --<ConstantName> constant <Datatype> := <Value>;

  -- Public variable declarations
  --<VariableName> <Datatype>;

  -- Public function and procedure declarations

  procedure ReadDataCase(IDLotto in varchar2, IDInvoice in Number);

  procedure A100_ASSIMOCO_ACTIVE(ID_FATTURA      NUMBER,
                                 ID_COMMITTENTE  NUMBER,
                                 ID_UTENTE       NUMBER,
                                 ID_ESATTORE     NUMBER,
                                 ID_LOTTO        NUMBER,
                                 ID_LOTTO_MASTER NUMBER,
                                 ID_CONTRATTO    NUMBER,
                                 ID_COND_CONTR   NUMBER,
                                 DT_INIZIO       DATE,
                                 DT_FINE         DATE,
                                 TIPO_FATTURA    VARCHAR2,
                                 TIPO_FATTURA_2  VARCHAR2,
                                 ESITO           OUT VARCHAR2);
 --Unit Test may to be private but it seems not possible 
     procedure UtA100_ASSIMOCO_ACTIVE(ID_FATTURA      NUMBER,
                                 ID_COMMITTENTE  NUMBER,
                                 ID_UTENTE       NUMBER,
                                 ID_ESATTORE     NUMBER,
                                 ID_LOTTO        NUMBER,
                                 ID_LOTTO_MASTER NUMBER,
                                 ID_CONTRATTO    NUMBER,
                                 ID_COND_CONTR   NUMBER,
                                 DT_INIZIO       DATE,
                                 DT_FINE         DATE,
                                 TIPO_FATTURA    VARCHAR2,
                                 TIPO_FATTURA_2  VARCHAR2,
                                 ESITO           OUT VARCHAR2);
                                 

end A100_INS_ASSIMOCO;
/
create or replace package body geocalldevutilities.A100_INS_ASSIMOCO IS

  -- Private type declarations
  --type <TypeName> is <Datatype>;
  
  -- Private constant declarations
  --<ConstantName> constant <Datatype> := <Value>;

  -- Private variable declarations
  --<VariableName> <Datatype>;
  --private UTest Procedure
   
                                 
    procedure UtA100_ASSIMOCO_ACTIVE(ID_FATTURA      NUMBER,
                                 ID_COMMITTENTE  NUMBER,
                                 ID_UTENTE       NUMBER,
                                 ID_ESATTORE     NUMBER,
                                 ID_LOTTO        NUMBER,
                                 ID_LOTTO_MASTER NUMBER,
                                 ID_CONTRATTO    NUMBER,
                                 ID_COND_CONTR   NUMBER,
                                 DT_INIZIO       DATE,
                                 DT_FINE         DATE,
                                 TIPO_FATTURA    VARCHAR2,
                                 TIPO_FATTURA_2  VARCHAR2,
                                 ESITO           OUT VARCHAR2) is
  IDLOTTO number;
  IDFATTURA number; 
  begin
    IDLOTTO:=688904;
    IDFATTURA:=100;
    -- MAnaging set of Case Assimoco with purchased amount and activity
    -- result 16 rows in the table GEOCALLDEVUTILITIES.X900PFATTURAZIONEIMPORTI use select * from GEOCALLDEVUTILITIES.X900PFATTURAZIONEIMPORTI t
    ReadDataCase(IDLOTTO, IDFATTURA);
    
  END UtA100_ASSIMOCO_ACTIVE;



  -- Function and procedure implementations

  -- test Setof accounts 688904
  procedure A100_ASSIMOCO_ACTIVE(ID_FATTURA      NUMBER,
                                 ID_COMMITTENTE  NUMBER,
                                 ID_UTENTE       NUMBER,
                                 ID_ESATTORE     NUMBER,
                                 ID_LOTTO        NUMBER,
                                 ID_LOTTO_MASTER NUMBER,
                                 ID_CONTRATTO    NUMBER,
                                 ID_COND_CONTR   NUMBER,
                                 DT_INIZIO       DATE,
                                 DT_FINE         DATE,
                                 TIPO_FATTURA    VARCHAR2,
                                 TIPO_FATTURA_2  VARCHAR2,
                                 ESITO           OUT VARCHAR2) is
    
  begin
    ReadDataCase(ID_LOTTO, ID_FATTURA);
  END A100_ASSIMOCO_ACTIVE;

  procedure ReadDataCase(IDLotto in varchar2, IDInvoice in Number) IS
    --Declaration
    cursorParam     SYS_REFCURSOR;
    AmountRecovered Number;
    PERCValue       Number;
    VLettValue      Number;
    IDPratica       Number;
    CaseValue       Number;
    NRecord         Number; -- REturn of function
    NRecordW        Number; -- Records elaborated
    NRecordDetail   Number; -- REcord elaborate detail
    VActivityType   Varchar2(10);
    VActivityDesc   Varchar2(100);
    dbUserTable GEOCALL.X900APRATICHE%ROWTYPE;
    CURSOR cursorActivity IS
      SELECT LOTTI.X900ALOTID,
             PRAT.X900APRAID                       IdCase,
             PRAT.X900APRACODICE                   CaseCode,
             PRATATTIV.X900RPTAID                  attivita_id,
             PRATATTIV.X900RPTAID_X900APRA         attivita_pratica_id,
             PRATATTIV.X900RPTADATA                attivita_data,
             X900TTATID                            attivita_tipo_id,
             X900TTATCODICE                        attivita_tipo_codice,
             X900TTATDESCRIZIONE                   attivita_tipo_descr,
             PRATATTIV.X900RPTANUMATTIVITA         attivita_num,
             PRATATTIV.X900RPTAFATTURAZIONE        attivita_flag_fatturaz,
             PRATATTIV.X900RPTAID_X900LLBA         attivita_lavorazbase_id,
             PRATATTIV.X900RPTAGETTONI             attivita_gettoni,
             PRATATTIV.X900RPTANUMGETTONICONSUMATI attivita_gettoni_numconsum,
             PRATATTIV.X900RPTAAZZERATO            as attivita_azzerato --,
      
        FROM geocall.x900Apratiche PRAT
       inner join geocall.X900RPRATICHETIPIATTIVITA PRATATTIV
          ON PRAT.X900APRAID = PRATATTIV.X900RPTAID_X900APRA
      
       inner join geocall.x900alotti LOTTI
          on PRAT.x900apraid_x900alot = LOTTI.X900ALOTID
      
       inner join geocall.X900TTIPIATTIVITA
          on geocall.X900TTIPIATTIVITA.X900TTATID =
             PRATATTIV.X900RPTAID_X900TTAT
      
       WHERE PRATATTIV.X900RPTAVISIBILE = 1
            
         and PRATATTIV.X900RPTAID_X900TTAT in
             (select x900ttatid
                from geocall.X900TTIPIATTIVITA
               where X900TTATDESCRIZIONE like '%Letter%'
                  or X900TTATDESCRIZIONE like '%Diffid%')
         and LOTTI.X900ALOTID = IDLotto
       order by PRAT.X900APRAID;
    DBUserTableActivity cursorActivity%ROWTYPE;
  BEGIN
    --Procedure
    OPEN cursorParam FOR
      Select *
        from GEocall.X900APRATICHE PRAT
       WHERE PRAT.x900apraid_x900alot = IDLotto;
    LOOP
      FETCH cursorParam
        INTO dbUserTable;
    
      EXIT WHEN cursorParam%NOTFOUND;
      if Geocalldevutilities.A000_Utility_Pck.fCaseAccountable(dbUserTable) THEN
      
        AmountRecovered := Geocalldevutilities.A000_Utility_Pck.ftotalamountpurchased(dbUserTable);
        dbms_output.put_line('IDPratica: ' || dbUserTable.X900APRAID ||
                             ' Cdo Pratica: ' ||
                             dbUserTable.X900APRACODICE ||
                             ' Amount Recovered: ' || AmountRecovered);
        IDPratica := dbUserTable.X900APRAID;
        PERCValue := 0.06;
        CaseValue := AmountRecovered * PercValue;
        /*
        write result
        */
        if CaseValue != 0 then 
          BEGIN
            
           VActivityType:='RECTOT';
           VActivityDesc:='Recuperato Totale';
           NRecord:= Geocalldevutilities.A000_Utility_Pck.fWriteCalculatedValue(IDInvoice,
                                                                               IDLotto,
                                                                               dbUserTable.X900APRAID,
                                                                               VActivityType,
                                                                               VActivityDesc,
                                                                               0,
                                                                               CaseValue);
            END;
          End if;          
      end if;
    
    END LOOP;
    CLOSE cursorParam;
    --caLCULATING aCTIVITY
    NRecord := 0;
    NRecordW := 0;
    OPEN cursorActivity;
   
    /* € 3,60 per lettera */
    VLettValue := 3.6 * 10 ** 6;
    LOOP
      FETCH cursorActivity
        INTO DBUserTableActivity;
      EXIT WHEN cursorActivity%NOTFOUND;  
      -- Calculating activity for each case
      -- define activity to pay by a table o a collection defined in the top of the procecure who calculate the   
    
      /*procedure if description contains lett then VLETT with Activity description otherwise VDiff with other description
      */
      
      if Geocalldevutilities.A000_Utility_Pck.fCaseAccountable(dbUserTableActivity.Attivita_Pratica_Id) THEN
        if INSTR(dbUserTableActivity.attivita_tipo_descr, 'Letter') > 0 or
          INSTR(dbUserTableActivity.attivita_tipo_descr, 'Diffid') > 0 then
          BEGIN
         
            -- find out Letter
             NRecord:= Geocalldevutilities.A000_Utility_Pck.fWriteCalculatedValue(IDInvoice,
                                                                       IDLotto,
                                                                       dbUserTableActivity.attivita_pratica_id,
                                                                       DBUserTableActivity.Attivita_Tipo_Codice,
                                                                       dbUserTableActivity.attivita_tipo_descr,
                                                                       0,
                                                                       VLettValue);
             NRecordDetail:=Geocalldevutilities.A000_Utility_Pck.fWriteInvoiceDetail(IDInvoice,
                                                                       Geocalldevutilities.A000_Utility_Pck.fCaseCustomer(dbUserTableActivity.attivita_pratica_id), 
                                                                       dbUserTableActivity.attivita_pratica_id,
                                                                       Geocalldevutilities.A000_Utility_Pck.fCaseDebtor(dbUserTableActivity.attivita_pratica_id),   
                                                                       dbUserTableActivity.attivita_id ,
                                                                       VLettValue);
                                                                                                                                      
          
          END;
        END IF;  
      END IF;
      NRecordW:=NRecord + NRecordW;
    END LOOP;
  
    CLOSE cursorActivity;
  
  end ReadDataCase;
  -- Initialization
--<Statement>;

end A100_INS_ASSIMOCO;
/
