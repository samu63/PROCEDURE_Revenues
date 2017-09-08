create or replace package geocalldevutilities.R100_UTILITY_REPORTING is

  -- Author  : 076SAMCORRAD
  -- Created : 8/31/2017 4:02:01 PM
  -- Purpose : Utility Reporting Service
  
  -- Public type declarations
  --type <TypeName> is <Datatype>;
  
  -- Public constant declarations
  --<ConstantName> constant <Datatype> := <Value>;

  -- Public variable declarations
  ---<VariableName> <Datatype>;

  -- Public function and procedure declarations
  function fValuePromises(IdCase Numeric) return Number;
  function fStateofCAse (IdCase Numeric) return varchar2;
  function fClusteCase (IdCase Numeric) return varchar2;
  function fStateCase (IdCase Numeric) return varchar2;
  function fGetNumOutcomecall (IdPrat numeric) return Number;

  
  

end R100_UTILITY_REPORTING;
/
create or replace package body geocalldevutilities.R100_UTILITY_REPORTING is

  -- Private type declarations
  --type <TypeName> is <Datatype>;
  
  -- Private constant declarations
  --<ConstantName> constant <Datatype> := <Value>;

  -- Private variable declarations
  --<VariableName> <Datatype>;

  -- Function and procedure implementations
  function fValuePromises(IdCase Numeric) return Number
    is
    importpromises number;
    begin
      importpromises:= 1 * 10**6;
      return importpromises;
      
    end fValuePromises;
    
  function fStateofCAse (IdCase Numeric) return varchar2
    is
    stateofCase varchar2(100);
    
    begin
      stateofCase:='Altro';
      return stateofCase;  
    end fStateofCAse;
  function fClusteCase (IdCase Numeric) return varchar2
    is
    ClusterofCase varchar2(100);
    
    begin
      ClusterofCase:='Easy';
      return ClusterofCase;  
    end fClusteCase;
  function fStateCase (IdCase Numeric) return varchar2
    is
    StateCase varchar2(100);
    
    begin
      StateCase:='In gestione';
      return StateCase;
    end fStateCase;
    
    
    function fGetNumOutcomecall (IdPrat numeric) return Number
      IS
      num_esiti                         NUMBER ;
      Cursor_Esiti                      Sys_Refcursor;

      begin

      OPEN Cursor_Esiti FOR
      select count(sechid) num_esiti
               from 
                ( select sechid idesito 
                  from geocall.sesitichiamate 
                  where X900SECHID_X900APRA = idprat
                  union 
                  select sechid idesito 
                  from geocall.sesitichiamate, geocall.x900sstrutturalavorazioni, geocall.x900slavorazioni 
                  where x900slavid_x900apra = idprat and x900slavid = x900sslaid_x900slav and x900sslacodiceprocedura = SECHCODICEPROCEDURA  
                  union 
                  select sechid idesito from geocall.sesitichiamate, geocall.x900rpraticheriscontrilav 
                  where x900rprlid_x900apra = idprat and x900rprlcodiceprocedura = SECHCODICEPROCEDURA  
                 ), geocall.sesitichiamate, geocall.aclienti 
              where sechid = idesito and SECHID_ACLI  = acliid (+) 
              and X900SECHID_X900APRA is not null
      group by  X900SECHID_X900APRA        ;
      loop
      fetch Cursor_Esiti INTO num_esiti;
        exit when Cursor_Esiti%notfound;
      end loop;
      return (num_esiti);

      end fGetNumOutcomecall;

    
  
    
    
    
    
       

  end R100_UTILITY_REPORTING;
/
