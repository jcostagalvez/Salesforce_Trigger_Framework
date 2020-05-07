/**
 * @File Name          : AccountNamecontroller.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 7/5/2020 18:48:29
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    7/5/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public class AccountNamecontroller {
	public static void NameValidation(List<Account> listNewAccounts) {
		for(Account acct : listNewAccounts) {
            if(acct.Name != 'test'){
                acct.addError('The name must be test');}
		} 
	}
}