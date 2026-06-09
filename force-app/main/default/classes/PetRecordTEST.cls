// Test class to create a Pet Record
@IsTest
public class PetRecordTEST {
    @IsTest
    static void createPet(){
        // Create Pet
        Test.startTest();
        pca_Pet__c testPet = new pca_Pet__c(
        	Name = 'Jan',
            Breed__c = 'Lakeland Terrier',
            Type__c = 'Dog'
        );
        insert testPet;
     	
        pca_Pet__c valPet = [SELECT Id, Name FROM pca_Pet__c LIMIT 1];
        Test.stopTest();
        
        System.assertEquals(
        	'Jan',
            valPet.Name,
            'Pet name should be Jan'
        );
    }

}