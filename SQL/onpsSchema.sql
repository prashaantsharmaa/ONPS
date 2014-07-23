use ONPS; 

/* creating USERS table for login authentication */ 

create table Users(voterIdentityNumber int(15),
                  password varchar(120) NOT NULL ,
				  isActive boolean  default false,
				  accountType varchar(5) NOT NULL ,
				  primary key(voterIdentityNumber));
				  


create table  Voter(voterIdentityNumber int(15),
                    fName varchar(25) NOT NULL,
					mName varchar(25) NOT NULL,
					lName varchar(25) NOT NULL,
					gender varchar(1) NOT NULL ,
					DOB date NOT NULL ,
					cityCode varchar(5) NOT NULL,
					fathersName varchar(60) NOT NULL ,
					mothersName varchar(60) NOT NULL ,
					voterIdentityCard blob ,
					primary key(voterIdentityNumber)
					);				  
				  
create table PoliticalParty(pCode varchar(5),
                            pName varchar(30) NOT NULL,
							emblem blob,
							primary key(pcode));	


create table City(cityCode varchar(30),
                  cityName varchar(30) NOT NULL ,
				  primary key(cityCode) 
                 ) ;

create table Candidate(cID int(15),
                       voterIdentityNumber int(15) NOT NULL ,
					   pCode varchar(5) NOT NULL,
					   cityCode varchar(5) NOT NULL,
					   currentPosition varchar(30) NOT NULL,
					   votes int(5) NOT NULL,
					   primary key(cID)
                       ) ;	

create table ElectionResult(pCode varchar(5) NOT NULL,
                            cityCode varchar(30) NOT NULL,
							candidateName varchar(60) NOT NULL,
							cityCode varchar(5) NOT NULL,
							totalVotes int(10) NOT NULL,
							
                            );						   
				  
				  
create table CandidatePromises(cID int(15) ,
                               promises TEXT NOT NULL )		;

create table QuestionAnswer(cID int(15),
                            question TEXT NOT NULL,
							answer  TEXT NOT NULL,
							status varchar(15)) ;							   