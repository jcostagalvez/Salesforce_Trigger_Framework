/**
 * @File Name          : TriggerHandelerBase.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 7/5/2020 18:46:23
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    7/5/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public abstract class TriggerHandlerBase implements ITriggerHandler {
    
    public virtual void mainEntry(TriggerParameters tp){
        
    }
    
    public virtual void inProgressEntry(TriggerParameters tp){
            
    }
}