#!/usr/bin/env groovy

/* Initialize Piper Library */
@Library(['piper-lib','piper-lib-os']) _

/* FlowInterruptedException is used for catching multiple error/exception occurred in jenkins workflows */
import org.jenkinsci.plugins.workflow.steps.FlowInterruptedException

/* Flow control can be managed is with Groovy’s exception handling support. When Steps fail for whatever reason they throw an exception. Handling behaviors on-error must make use of the try/catch/finally blocks in Groovy */
try 
{	
	/* A stage block defines a conceptually distinct subset of tasks performed through the entire Pipeline */
	stage('Building Quiz App') 
	{
		/* The lock step limits the number of builds running concurrently in a section of your Pipeline */
		lock(resource: "${env.JOB_NAME}/10", inversePrecedence: true)  
		{
			/* The milestone step ensures that older builds of a job will not overwrite a newer build */
			milestone 10
			
			/* Node declaration allocates an executor on Jenkins Machine */ 
			node 
			{				
				/* Clean Jenkins Workspace */
				//deleteDir()
		
				/* Checkout Code from GitHub */
				//checkout scm
				
				/* Executes a closure inside a docker container with the specified docker image */
				dockerExecute(script: this,dockerImage: 'cirrusci/flutter')
				{
					/* Clean Jenkins Workspace */
					deleteDir()
		
					/* Checkout Code from GitHub */
					checkout scm

					//sh ' flutter --version'
					//sh 'flutter build'
					sh ' flutter build web '

				}
			}
		}
	}

	stage('Publishing to App Center') 
	{
		/* The lock step limits the number of builds running concurrently in a section of your Pipeline */
		lock(resource: "${env.JOB_NAME}/20", inversePrecedence: true)  
		{
			/* The milestone step ensures that older builds of a job will not overwrite a newer build */
			milestone 20
			
			/* Node declaration allocates an executor on Jenkins Machine */ 
			node 
			{
				/* Publishing app to application center*/

				// appCenter apiToken: 'aa0a77384c98da8f21b549686967d759bbc8d912',
				// ownerName: '2021sp93061-wilp.bits-pilani.ac.in',
				// appName: 'Quiz',
				// pathToApp: 'build/app/outputs/apk/debug/app-debug.apk',
				// distributionGroups: 'Pandvaas'


				dockerExecute(script: this,dockerImage: 'rambabusaravanan/firebase')
				{
					//sh ' flutter --version'
					//sh 'flutter build'
					//sh ' flutter build web '
					sh 'firebase init --non-interactive'
					sh 'firebase use quiz-bf7e6 --token AIzaSyC6QAJffwBweDr3dNrsghjnHC7sGdAbFME'
					sh	'firebase deploy --token AIzaSyC6QAJffwBweDr3dNrsghjnHC7sGdAbFME --non-interactive'

				}
									
			}
		}
	}       
}
catch (Throwable err) 
{ 
    /* Catching multiple error/exception occurred in jenkins workflows */
    globalPipelineEnvironment.addError(this, err)
    throw err
}
finally 
{
    /* Node declaration allocates an executor on Jenkins Machine */
    node
    {
        /* Discarding Old Logs for the Jenkins Pipeline */
		buildlogdiscarder()
		
		/* Sending build metrics to InfluxDB servers */
        influxWriteData script: this

        /* Sends notifications to all potential culprits of a current or previous build failure and to fixed list of recipients */
        // mailSendNotification script: this
    }
}
/* Custom Groovy function to discard the logs */
def buildlogdiscarder() 
{
  properties([
    buildDiscarder(logRotator(numToKeepStr: '5',daysToKeepStr: '-1',))
  ])
}