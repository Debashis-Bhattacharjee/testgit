/**
* @author Atos India Pvt Ltd.
* @date March,2016
*
* @group 
* @group-content 
*
* @description Class to send  request to Amazon SQS Service . It is a subclass of AmazonRESTV4Manager and adds some properties specific to Queue
* @Jira Task RSPSET-190,RSPSET-191
*/
public class RSP_AmazonRESTSQSManager extends RSP_AmazonRESTV4Manager{
    
     /*******************************************************************************************************
    * @description Constructor of the AmazonRESTSQSManager class 
    * @param hostName The hostname of the server
    * @param serviceURL The path of the file in bucket or queue .For e.g /bucket1/File.jpg or /XXXXXXXX/MyQueue
    * @param regionName The region 
    * @param serviceName The service like S3 or SQS
    * @param key The unique key provided for the Amazon account
    * @param secretKey The secret key provided for the Amazon account
    */
    
    public RSP_AmazonRESTSQSManager(String hostName,String serviceURL,String regionName,String serviceName,String key,String secretKey){
        super(hostName,serviceURL,regionName,serviceName,key,secretKey);
        canonicalizedQueryMap.put('Action','ReceiveMessage');
        canonicalizedQueryMap.put('WaitTimeseconds','10');
        canonicalizedQueryMap.put('MaxNumberOfMessages','5');
    }

}