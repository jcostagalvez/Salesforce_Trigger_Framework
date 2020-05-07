/**
 * @File Name          : AccountBeforeInsertHandler.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 7/5/2020 18:46:11
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    7/5/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public class AccountBeforeInsertHandler extends TriggerHandlerBase {
    Public override void mainEntry(TriggerParameters tp){
        executeControllers((List<Account>)tp.newList);        
    }
	private static void executeControllers(List<Account> listNewAccounts) {
		AccountNamecontroller.NameValidation(listNewAccounts);
	}
    
}