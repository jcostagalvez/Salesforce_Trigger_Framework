/**
 * @File Name          : AccountTriggerDispatcher.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 7/5/2020 18:42:47
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    7/5/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public class AccountTriggerDispatcher extends TriggerDispatcherBase {
    
    private static Boolean isBeforeInsertProcessing = false;
    
    public virtual override void beforeInsert(TriggerParameters tp){
        if(!isBeforeInsertProcessing){
            isBeforeInsertProcessing = true;
            	execute(new AccountBeforeInsertHandler(), tp, TriggerParameters.TriggerEvent.beforeInsert);
            isBeforeInsertProcessing = false;
        }else{

        }    
    }

}