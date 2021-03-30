# .tfvars Sample File
# Region Credentials


access_key = ""																	# Access key from N'cloud
secret_key = ""																	# Secret key from N'cloud
ncloud_ip = "chprod001.netkom.ch"												# Https://
ami_image = "ami-5451a63b6fa9436dad9ce2019aeabeb9"								# Image
instance_type = "t2.micro"														# the type of instance
instance_number = 2																# quantity of instance
#Name = "????"																	# Name of Instance
#Size = 8																		# Size of volume




#Instance type
/*
Name			CPU		RAM
m1.tiny	 		1		512
t2.large		2		8192
t2.xlarge		4		16384
t2.2xlarge		8		32768
m4.large		2		8192
m4.xlarge		4		16384
m4.2xlarge		8		32768
m4.4xlarge		16		65536
m4.10xlarge		40		163840
m4.16xlarge		64		262144
m3.medium		1		3840
m1.small		1		2048
m3.large		2		7680
m3.xlarge		4		15360
m3.2xlarge		8		30720
c4.large		2		3840
c4.xlarge		4		7680
c4.2xlarge		8		15360
c4.4xlarge		16		30720
c4.8xlarge		36		61440
c3.large		2		3840
c3.xlarge		4		7680
m1.medium		2		4096
c3.2xlarge		8		15360
c3.4xlarge		16		30720
c3.8xlarge		32		61440
x1.16large		64		999424
x1.32xlarge		128		1998
m1.large		4		8192
r4.large		2		15616
r4.xlarge		4		31232
r4.2xlarge		8		62464
r4.4xlarge		16		124928
r4.8xlarge		32		249856
r4.16xlarge		64		499712
r3.large		2		15616
r3.xlarge		4		31232
r3.2xlarge		8		62464
r3.4xlarge		16		124928
m1.xlarge		8		16384
r3.8xlarge		32		249856
i2.xlarge		4		31232
i2.2xlarge		8		62464
i2.4xlarge		16		124928
i2.8xlarge		32		249856
d2.xlarge		4		31232
d2.2xlarge		8		62464
d2.4xlarge		16		124928
d2.8xlarge		36		249856
t2.nano			1		512
m5.large		2		8192
m5.xlarge		4		16384
m5.2xlarge		8		32768
m5.4xlarge		16		65536
m5.12xlarge		48		196608
m5.24xlarge		96		393216
c5.large		2		4096
c5.2xlarge		8		16384
t2.micro		1		1024
c5.4xlarge		16		32768
c5.9xlarge		36		73728
c5.18xlarge		72		147456
c5d.large		2		4096
c5d.xlarge		4		8192
c5d.2xlarge		8		16384
c5d.4xlarge		16		32768
c5d.9xlarge		32		73728
c5d.18xlarge	72		147456
x1e.xlarge		4		124928
t2.small		1		2048
x1e.2xlarge		8		249856
x1e.4xlarge		16		499712
x1e.8xlarge		32		999424
x1e.16xlarge	64		1998848
x1e.32xlarge	128		3997696
m1.lsmall		2		2048
h1.2xlarge		8		32768
h1.4xlarge		16		65536
h1.8xlarge		32		131072
h1.16xlarge		64		262144
i3.large		2		15616
t2.medium		2		4096
i3.xlarge		4		31232
i3.2xlarge		8		62464
i3.4xlarge		16		124928
i3.8xlarge		32		249856
i3.16xlarge		64		499712
c5.xlarge		4		16384

*/



/*

Marketplace

Accounting
Noalyss 6.9.0.0-5 (64-bit)
SimpleInvoices 2013.1.beta.8-6 (64-bit)

Analytics
ELK 4.6.1-0 (64-bit)
Piwik 2.16.5-0 (64-bit)
Re:dash 0.11.1.2095-1 (64-bit)
SEO Panel 3.9.0-3 (64-bit)

Application
Code Dx 2.2.4-2 (64-bit)
Railo 4.2.1.008-6 (64-bit)

Binary
Artifactory 4.9.0-2 (64-bit)

Blog
Chyrp 2.5.2-6 (64-bit)
Ghost 0.11.1-1 (64-bit)
Publify 8.2.0-4 (64-bit)
Roller 5.1.2-9 (64-bit)
WordPress 4.6.1-4 (64-bit)
WP Multisite 4.6.1-4 (64-bit)

BPM
ProcessMaker Enterprise Edition 3.1-0 (64-bit)
ProcessMaker Open Source Edition 3.1-0 (64-bit)

Bug
Mantis 1.3.2-0 (64-bit)
Phabricator 2016.30-1 (64-bit)
Redmine 3.3.0-2 (64-bit)
Redmine+Agile 3.3.0-3 (64-bit)
Trac 1.0.10-4 (64-bit)
YouTrack 7.0.27477-0 (64-bit)

Business
JasperReports 6.3.0-2 (64-bit)
ReportServer Community 3.0.2-3 (64-bit)
ReportServer Enterprise 3.0.2-3 (64-bit)

Chat
Let's chat 0.4.7-2 (64-bit)
Live Helper Chat 2.50v-0 (64-bit)
Openfire 4.0.3-1 (64-bit)

CMS
Alfresco Community 201605-2 (64-bit)
Ametys 3.7.3-3 (64-bit)
CMS Made Simple 2.1.5-1 (64-bit)
concrete5 5.7.5.9-1 (64-bit)
Drupal 8.1.10-0 (64-bit)
EnanoCMS 1.1.8-10 (64-bit)
eZ Publish 2014.11-5 (64-bit)
Joomla! 3.6.2-1 (64-bit)
MODX 2.5.1pl-1 (64-bit)
Neos 2.1.6-4 (64-bit)
ocPortal 9.0.30-1 (64-bit)
Pimcore 4.3.1-1 (64-bit)
Plone 5.0.2-2 (64-bit)
ProcessWire 2.7.2-4 (64-bit)
Refinery CMS 2.1.5-10 (64-bit)
SilverStripe 3.4.1-1 (64-bit)
Sitecake 2.2.9-5 (64-bit)
Tiki 15.2-2 (64-bit)
TYPO3 8.3.1-1 (64-bit)
XOOPS 2.5.8-1 (64-bit)

Code
Review Board 2.5.6.1-3 (64-bit)
Review Board + Power Pack 2.5.6.1-6 (64-bit)
Squash 20151209-5 (64-bit)

Collaboration
eXo Platform Enterprise 4.3.1-2 (64-bit)
Mahara 16.04.3-1 (64-bit)

Continuous
Jenkins 1.658-4 (64-bit)

CRM
CiviCRM 4.7.12-0 (64-bit)
Dolibarr 4.0.1-0 (64-bit)
EspoCRM 4.2.6-0 (64-bit)
Fat Free CRM 0.13.6-10 (64-bit)
OroCRM 1.10.2-1 (64-bit)
SugarCRM 6.5.24-1 (64-bit)
SuiteCRM 7.7.5-0 (64-bit)
X2Engine Sales CRM 6.0.4-1 (64-bit)
Zurmo 3.1.5-3 (64-bit)

Database
Cassandra 3.9-0 (64-bit)
CouchDB 1.6.1-6 (64-bit)
MongoDB 3.2.10-0 (64-bit)
MySQL 5.6.33-3 (64-bit)
PostgreSQL 9.6.0-1 (64-bit)
Redis 3.2.4-0 (64-bit)

Developer
ActiveMQ
ActiveMQ 5.14.1-1 (64-bit)
Backendless Pro 3.5.0-5 (64-bit)
Codiad 2.7.5-1 (64-bit)
DreamFactory 2.3.0-5 (64-bit)
Eclipse Che 4.7.2-1 (64-bit)
Hadoop 2.7.3-2 (64-bit)
Kafka 0.10.0.1-1 (64-bit)
Parse Server 2.2.22-0 (64-bit)
RabbitMQ 3.6.5-1 (64-bit)

e-Commerce
AbanteCart 1.2.8-1 (64-bit)
Magento 2.1.1-2 (64-bit)
OpenCart 2.3.0.2-1 (64-bit)
OXID eShop 4.9.8-2 (64-bit)
PrestaShop 1.6.1.7-1 (64-bit)
Shopware 5.2.8-0 (64-bit)
Spree 3.0.7-2 (64-bit)
X-Cart 5.3.1.3-1 (64-bit)

eLearning
Canvas LMS 2016.04.23.03-2 (64-bit)
Moodle 3.1.2-2 (64-bit)
Open edX 20160414-5 (64-bit)

Email
Horde Groupware Webmail 5.2.14-3 (64-bit)
Roundcube 1.1.4-5 (64-bit)
WebMail Pro PHP 7.6.9-1 (64-bit)

ERP
ERPNext 6.27.9-4 (64-bit)
Odoo 9.0.20160620-3 (64-bit)
OpenERP 7.0-25 (64-bit)

Forum
Discourse 1.5.3-1 (64-bit)
MyBB 1.8.7-3 (64-bit)
OSQA 1.0rc-15 (64-bit)
phpBB 3.1.9-3 (64-bit)
Simple Machines Forum 2.0.12-2 (64-bit)

Games
Multicraft 2.0.1b-2 (64-bit)

Human
OrangeHRM 3.3.2-3 (64-bit)

Infrastructure
Apache Solr 6.2.1-2 (64-bit)
Django 1.10.2-0 (64-bit)
HHVM 3.9.9-1 (64-bit)
JBoss AS 7.2.0-5 (64-bit)
JRuby 9.1.5.0-1 (64-bit)
LAMP 5.6.26-2 (64-bit)
LAPP 5.6.26-1 (64-bit)
MEAN 3.2.10-1 (64-bit)
Memcached 1.4.31-1 (64-bit)
Nginx 1.10.1-4 (64-bit)
Node.js 6.7.0-1 (64-bit)
Ruby 2.3.1-5 (64-bit)
Tomcat 8.0.37-2 (64-bit)
WildFly 10.1.0-1 (64-bit)

Marketing
Mautic 2.2.0-0 (64-bit)

Media
ownCloud 9.1.1-1 (64-bit)

News
Tiny Tiny RSS 20160426-3 (64-bit)

Newsletter
phpList 3.2.5-2 (64-bit)

Online
Osclass 3.6.1-4 (64-bit)

Password
Sharelock 0.1.0pre-6 (64-bit)

Photo
Coppermine 1.5.44-0 (64-bit)
ResourceSpace 7.9-1 (64-bit)

Planning
Tracks 2.3.0-10 (64-bit)

Poll
LimeSurvey 20160817-1 (64-bit)

Portal
Liferay 7.0.2-1 (64-bit)

Product
Akeneo 1.6.3-0 (64-bit)

Project
Open Atrium 2.68-1 (64-bit)
OpenProject 6.0.4-0 (64-bit)

Search
Elasticsearch 2.4.1-1 (64-bit)

Social
Diaspora 0.5.10.2-1 (64-bit)
eXo Platform 4.3.0-9 (64-bit)
ThinkUp 2.0.beta.10-8 (64-bit)

Testing
TestLink 1.9.15-1 (64-bit)

Translation
Pootle 2.7.3-2 (64-bit)
Weblate 2.5-2 (64-bit)

Version
GitLab 8.9.6-2 (64-bit)
Subversion 1.9.4-1 (64-bit)

Wiki
DokuWiki 20160626a-2 (64-bit)
MediaWiki 1.27.1-1 (64
*/