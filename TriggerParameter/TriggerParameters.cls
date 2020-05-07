/**
 * @File Name          : TriggerParameters.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 7/5/2020 18:47:45
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    7/5/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public class TriggerParameters {
    
    public Enum TriggerEvent { beforeInsert, beforeUpdate, beforeDelete, afterInsert, afterUpdate, afterDelete, afterUndelete }

    public List<SObject> oldList { get; private set; }
	public List<SObject> newList { get; private set; }
	public Map<Id, SObject> oldMap { get; private set; }
	public Map<Id, SObject> newMap { get; private set; }
    
    public TriggerParameters (List<SObject> olist, List<SObject> nlist, Map<Id, SObject> omap, Map<Id, SObject> nmap ){
        
        this.oldList = olist;
		this.newList = nlist;
		this.oldMap = omap;
		this.newMap = nmap;
    }
}