/**
 * @File Name          : AccountTrigger.trigger
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 7/5/2020 18:40:31
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    7/5/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
trigger AccountTrigger on Account (before insert) {
	TriggerFactory.createTriggerDispatcher(AccountTriggerDispatcher.class);
}