/**
 * @File Name          : TriggerDispatcher.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 7/5/2020 18:41:20
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    7/5/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public class TriggerFactory {
    
    public static void createTriggerDispatcher(Type t){
        ITriggerDispatcher dispatcher = getDispatcher(t);
        if(dispatcher == null){
           System.debug('No Trigger Handler: ' + t.getName()); 
        }else{
            excuteTriggerDispatcher(dispatcher);
        }
    }
    
    public static void excuteTriggerDispatcher(ITriggerDispatcher TriggerDispatcher){
        
        TriggerParameters tp = new TriggerParameters(Trigger.old, Trigger.new, Trigger.oldMap, Trigger.newMap);
    	switch on Trigger.operationType {
            WHEN BEFORE_INSERT{
            	TriggerDispatcher.beforeInsert(tp);    
            }
            WHEN BEFORE_UPDATE{
                TriggerDispatcher.beforeUpdate(tp);
            }
            WHEN BEFORE_DELETE{
                TriggerDispatcher.beforeDelete(tp);
            }
            WHEN AFTER_INSERT{
                TriggerDispatcher.afterInsert(tp);
            }
            WHEN AFTER_UPDATE{
                TriggerDispatcher.afterUpdate(tp);
            }
            WHEN AFTER_DELETE{
                TriggerDispatcher.afterDelete(tp);
            }
            WHEN AFTER_UNDELETE{
                TriggerDispatcher.afterUndelete(tp);
            }
    	}
    }
    
    private  static ITriggerDispatcher getDispatcher(Type t){
		Object o = t.newInstance();

		if (o instanceOf ITriggerDispatcher)return (ITriggerDispatcher)o;
		else return null;
	}
}