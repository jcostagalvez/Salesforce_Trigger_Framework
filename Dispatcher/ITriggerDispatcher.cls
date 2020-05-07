/**
 * @File Name          : ITriggerDispatcher.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 7/5/2020 18:44:43
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    7/5/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public interface  ITriggerDispatcher {
	void beforeInsert(TriggerParameters tp);
    void beforeUpdate(TriggerParameters tp);
    void beforeDelete(TriggerParameters tp);
    void afterInsert(TriggerParameters tp);
    void afterUpdate(TriggerParameters tp);
    void afterDelete(TriggerParameters tp);
    void afterUndelete(TriggerParameters tp);    
}