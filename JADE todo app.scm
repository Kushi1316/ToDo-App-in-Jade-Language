/* JADE COMMAND FILE NAME C:\Users\Test\Dropbox\Uni\2015\INFO213-S2 Object-Oriented Systems Development\Project\Productivity.jcf */
jadeVersionNumber "7.1.05";
schemaDefinition
Productivity subschemaOf RootSchema completeDefinition, patchVersioningEnabled = false;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:01:16:45:02.187;
importedPackageDefinitions
constantDefinitions
localeDefinitions
	1033 "English (United States)" schemaDefaultLocale;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:01:16:45:01.993;
libraryDefinitions
typeHeaders
	Productivity subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2097;
	GProductivity subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2098;
	ModelLayer subclassOf Object number = 2100;
	Actor subclassOf ModelLayer highestOrdinal = 1, number = 2109;
	User subclassOf Actor highestSubId = 4, highestOrdinal = 6, number = 2110;
	Components subclassOf ModelLayer highestOrdinal = 2, number = 2112;
	Categories subclassOf Components highestSubId = 1, highestOrdinal = 2, number = 2114;
	Tags subclassOf Components highestSubId = 1, highestOrdinal = 2, number = 2151;
	Tasks subclassOf Components highestSubId = 1, highestOrdinal = 5, number = 2113;
	ProductivitySystem subclassOf ModelLayer highestSubId = 2, highestOrdinal = 7, number = 2101;
	SProductivity subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2099;
	MasterForm subclassOf Form transient, transientAllowed, subclassTransientAllowed, number = 2102;
	CreateMember subclassOf MasterForm transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 7, number = 2108;
	StartScreem subclassOf MasterForm transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 14, number = 2105;
	Modals subclassOf Form transient, transientAllowed, subclassTransientAllowed, number = 2125;
	AddCategory subclassOf Modals transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 6, number = 2116;
	Task subclassOf Modals transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 13, number = 2117;
	AddTask subclassOf Task transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 1, number = 2118;
	EditTask subclassOf Task transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 1, number = 2119;
	RealMasterForm subclassOf Form transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 10, number = 2103;
	MainScreen subclassOf RealMasterForm transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 38, number = 2104;
	MkdAllTags subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66, number = 2152;
	MkdAllTagsMembers_tags subclassOf MemberKeyDictionary loadFactor = 66, number = 2154;
	MkdAllUsers subclassOf MemberKeyDictionary loadFactor = 66, number = 2111;
	MkdCategories subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66, number = 2115;
	MkdTasks subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66, number = 2106;
	MkdTasksByID subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66, number = 2107;
	MkdTasksTags_tasks subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66, number = 2153;
 
interfaceDefs
membershipDefinitions
	MkdAllTags of Tags ;
	MkdAllTagsMembers_tags of Tags ;
	MkdAllUsers of User ;
	MkdCategories of Categories ;
	MkdTasks of Tasks ;
	MkdTasksByID of Tasks ;
	MkdTasksTags_tasks of Tasks ;
 
typeDefinitions
	Object completeDefinition
	(
	)
	Application completeDefinition
	(
	)
	RootSchemaApp completeDefinition
	(
	)
	Productivity completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:01:16:45:02.173;
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GProductivity completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:01:16:45:02.174;
	)
	ModelLayer completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:01:16:46:57.907;
	)
	Actor completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:17:46:00.181;
	attributeDefinitions
		actorName:                     String[31] number = 1, ordinal = 1;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:17:49:14.964;
	)
	User completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:20:55:40.075;
	attributeDefinitions
		userID:                        Integer number = 1, ordinal = 1;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:17:49:58.285;
	referenceDefinitions
		myCategories:                  MkdCategories   explicitInverse, subId = 1, number = 3, ordinal = 3;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:26:49.801;
		mySystem:                      ProductivitySystem   explicitEmbeddedInverse, number = 2, ordinal = 2;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:17:51:42.020;
		myTags:                        MkdAllTagsMembers_tags   explicitInverse, subId = 4, number = 6, ordinal = 6;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:15:28:05.720;
		myTasks:                       MkdTasks   explicitInverse, subId = 2, number = 4, ordinal = 4;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:21:25:42.956;
		myTasksByID:                   MkdTasksByID   explicitInverse, subId = 3, number = 5, ordinal = 5;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:20:55:40.076;
	)
	Components completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:18:22:23.832;
	attributeDefinitions
		cID:                           Integer number = 2, ordinal = 2;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:18:23:35.852;
		cTitle:                        String[31] number = 1, ordinal = 1;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:18:22:59.626;
	)
	Categories completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:18:23:46.974;
	referenceDefinitions
		myTasks:                       MkdTasksByID   explicitInverse, subId = 1, number = 2, ordinal = 2;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:21:27:39.572;
		myUser:                        User   explicitEmbeddedInverse, number = 1, ordinal = 1;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:26:49.794;
	)
	Tags completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:15:28:05.722;
	referenceDefinitions
		myTasks:                       MkdTasksTags_tasks   explicitInverse, subId = 1, number = 2, ordinal = 2;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:19:04:34.977;
		myUser:                        User   explicitEmbeddedInverse, number = 1, ordinal = 1;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:15:28:05.723;
	)
	Tasks completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:18:23:42.806;
	attributeDefinitions
		dueDate:                       Date number = 3, ordinal = 3;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:23:46:37.072;
		status:                        Integer number = 4, ordinal = 4;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:21:03:20.568;
	referenceDefinitions
		myCategory:                    Categories   explicitEmbeddedInverse, number = 2, ordinal = 2;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:21:27:39.570;
		myTags:                        MkdAllTags   explicitInverse, subId = 1, number = 5, ordinal = 5;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:19:04:36.211;
		myUser:                        User   explicitEmbeddedInverse, number = 1, ordinal = 1;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:20:55:40.106;
	)
	ProductivitySystem completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:23:52:07.755;
	attributeDefinitions
		activeView:                    String[31] number = 1, ordinal = 4;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:18:20:23.901;
	referenceDefinitions
		activeMember:                  User  number = 2, ordinal = 2;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:17:57:33.443;
		activeTask:                    Tasks  number = 4, ordinal = 6;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:21:51:04.291;
		allUsers:                      MkdAllUsers   explicitInverse, subId = 2, number = 3, ordinal = 3;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:17:51:42.067;
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
		setModifiedTimeStamp "<unknown>" "6.1.00" 20031119 2003:12:01:13:54:02.270;
	)
	SProductivity completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:01:16:45:02.187;
	)
	Window completeDefinition
	(
	)
	Form completeDefinition
	(
	)
	MasterForm completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:02:16:43:20.013;
 
	jadeMethodDefinitions
		load() updating, number = 1001;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:01:17:12:11.730;
 
	eventMethodMappings
		load = load of Form;
	)
	CreateMember completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:02:17:53:41.726;
	referenceDefinitions
		btnCreate:                     Button  number = 6, ordinal = 7;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:02:17:33:38.600;
		imgGrad:                       Picture  number = 3, ordinal = 4;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:02:17:19:24.095;
		imgLogo:                       Picture  number = 2, ordinal = 3;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:02:17:19:24.095;
		lblEnterUser:                  Label  number = 4, ordinal = 5;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:02:17:33:38.573;
		lblHeaderBackground:           Label  number = 1, ordinal = 2;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:02:17:19:24.094;
		txtUserName:                   TextBox  number = 5, ordinal = 6;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:02:17:33:38.599;
 
	jadeMethodDefinitions
		btnCreate_click(btn: Button input) updating, number = 1001;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:23:52:32.275;
 
	eventMethodMappings
		btnCreate_click = click of Button;
	)
	StartScreem completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:16:16:15:03.715;
	referenceDefinitions
		btnLoadData:                   Button  number = 11, ordinal = 14;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:22:42:34.508;
		btnLogin:                      Button  number = 4, ordinal = 4;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:01:17:19:57.685;
		btnPurgeData:                  Button  number = 1, ordinal = 13;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:02:17:47:46.943;
		btnRegister:                   Button  number = 6, ordinal = 6;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:01:17:19:57.686;
		imgGrad:                       Picture  number = 10, ordinal = 11;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:02:17:16:09.888;
		imgLogo:                       Picture  number = 9, ordinal = 10;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:02:17:16:09.887;
		lblErrorContainer:             Label  number = 7, ordinal = 7;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:01:17:31:43.905;
		lblHeaderBackground:           Label  number = 2, ordinal = 9;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:02:17:16:09.887;
		lblOr:                         Label  number = 5, ordinal = 5;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:01:17:19:57.685;
		txtLogin:                      TextBox  number = 3, ordinal = 3;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:01:17:19:57.669;
		usernamelblUsername:           Label  number = 8, ordinal = 8;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:01:17:40:02.662;
 
	jadeMethodDefinitions
		btnLoadData_click(btn: Button input) updating, number = 1007;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:20:02:18.622;
		btnLogin_click(btn: Button input) updating, number = 1002;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:17:57:04.739;
		btnPurgeData_click(btn: Button input) updating, number = 1005;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:22:44:22.493;
		btnRegister_click(btn: Button input) updating, number = 1004;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:03:07:02:56.033;
		displayErrorMessage(aMessage: String) updating, number = 1003;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:01:17:35:08.687;
		load() updating, number = 1001;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:18:21:28.686;
		purge() number = 1006;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:19:58:33.590;
 
	eventMethodMappings
		btnLoadData_click = click of Button;
		btnLogin_click = click of Button;
		btnPurgeData_click = click of Button;
		btnRegister_click = click of Button;
		load = load of Form;
	)
	Modals completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:03:06:58:45.386;
 
	jadeMethodDefinitions
		pUnloadForm() updating, clientExecution, number = 1001;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:37:53.304;
	)
	AddCategory completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:35:43.147;
	referenceDefinitions
		btnAdd:                        Button  number = 5, ordinal = 5;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:35:43.146;
		btnCancel:                     Button  number = 4, ordinal = 4;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:35:43.146;
		lblCatTitle:                   Label  number = 2, ordinal = 2;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:35:43.145;
		lblTitle:                      Label  number = 3, ordinal = 3;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:35:43.146;
		myParentForm:                  MainScreen   explicitEmbeddedInverse, number = 6, ordinal = 6;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:14:19:53:38.231;
		txtCatName:                    TextBox  number = 1, ordinal = 1;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:35:43.145;
 
	jadeMethodDefinitions
		btnAdd_click(btn: Button input) updating, number = 1002;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:19:07:48.523;
		btnCancel_click(btn: Button input) updating, number = 1001;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:38:25.283;
 
	eventMethodMappings
		btnAdd_click = click of Button;
		btnCancel_click = click of Button;
	)
	Task completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:18:29:58.336;
	referenceDefinitions
		btnAdd:                        Button  number = 3, ordinal = 3;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:22:27:23.155;
		btnCancel:                     Button  number = 2, ordinal = 2;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:22:27:23.155;
		lblCategory:                   Label  number = 7, ordinal = 7;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:22:36:03.532;
		lblDateFormat:                 Label  number = 11, ordinal = 11;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:23:46:41.504;
		lblTags:                       Label  number = 12, ordinal = 12;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:18:27:25.066;
		lblTaskTitle:                  Label  number = 5, ordinal = 5;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:22:33:52.441;
		lblTitle:                      Label  number = 1, ordinal = 1;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:22:27:23.154;
		lstCategories:                 ListBox  number = 6, ordinal = 6;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:22:36:03.531;
		lstTags:                       ListBox  number = 13, ordinal = 13;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:18:27:25.066;
		txtDD:                         TextBox  number = 8, ordinal = 8;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:23:44:36.963;
		txtMM:                         TextBox  number = 9, ordinal = 9;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:23:44:36.964;
		txtTaskTitle:                  TextBox  number = 4, ordinal = 4;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:22:33:52.441;
		txtYYYY:                       TextBox  number = 10, ordinal = 10;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:23:44:36.964;
 
	jadeMethodDefinitions
		btnCancel_click(btn: Button input) updating, number = 1001;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:14:00:31:44.381;
		lstCategories_displayEntry(
			listbox: ListBox input; 
			obj: Any; 
			lstIndex: Integer): String updating, number = 1002;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:23:38:22.112;
		lstTags_displayEntry(
			listbox: ListBox input; 
			obj: Any; 
			lstIndex: Integer): String updating, number = 1003;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:18:29:33.417;
 
	eventMethodMappings
		btnCancel_click = click of Button;
		lstCategories_displayEntry = displayEntry of ListBox;
		lstTags_displayEntry = displayEntry of ListBox;
	)
	AddTask completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:22:27:35.897;
	referenceDefinitions
		myParentForm:                  MainScreen   explicitEmbeddedInverse, number = 1, ordinal = 1;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:14:19:56:45.787;
 
	jadeMethodDefinitions
		btnAdd_click(btn: Button input) updating, number = 1003;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:19:28:25.160;
		btnCancel_click(btn: Button input) updating, number = 1002;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:22:40:51.918;
		load() updating, number = 1001;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:18:27:42.044;
 
	eventMethodMappings
		btnAdd_click = click of Button;
		btnCancel_click = click of Button;
		load = load of Form;
	)
	EditTask completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:22:24:58.461;
	referenceDefinitions
		myParentForm:                  MainScreen   explicitEmbeddedInverse, number = 1, ordinal = 1;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:14:19:57:16.122;
 
	jadeMethodDefinitions
		btnAdd_click(btn: Button input) updating, number = 1003;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:19:40:57.856;
		btnCancel_click(btn: Button input) updating, number = 1002;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:22:14:51.722;
		load() updating, number = 1001;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:16:16:13:55.323;
 
	eventMethodMappings
		btnAdd_click = click of Button;
		btnCancel_click = click of Button;
		load = load of Form;
	)
	RealMasterForm completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:18:09:57.713;
	referenceDefinitions
		imgAvatar:                     Picture  number = 6, ordinal = 8;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:02:18:16:00.828;
		imgBg:                         Picture  number = 1, ordinal = 7;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:02:18:16:00.827;
		imgGrad:                       Picture  number = 3, ordinal = 3;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:02:17:56:39.405;
		imgLogo:                       Picture  number = 2, ordinal = 2;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:02:17:56:39.405;
		lblUserNameHeader:             Label  number = 8, ordinal = 10;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:02:18:16:00.828;
		lblWelcomeBack:                Label  number = 7, ordinal = 9;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:02:18:16:00.828;
	)
	MainScreen completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:16:15:33:20.459;
	referenceDefinitions
		btn7Days:                      Button  number = 11, ordinal = 22;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:31:54.253;
		btnAddCategory:                Button  number = 7, ordinal = 18;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:31:54.251;
		btnAddTag:                     Button  number = 21, ordinal = 36;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:15:34:19.368;
		btnAddTask:                    Button  number = 8, ordinal = 19;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:31:54.252;
		btnAll:                        Button  number = 9, ordinal = 20;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:31:54.252;
		btnArchive:                    Button  number = 12, ordinal = 23;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:31:54.253;
		btnDeleteCategory:             Button  number = 15, ordinal = 26;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:31:54.256;
		btnEditTask:                   Button  number = 3, ordinal = 30;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:21:52:13.489;
		btnLogout:                     Button  number = 1, ordinal = 28;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:14:08:47.068;
		btnMarkComplete:               Button  number = 2, ordinal = 29;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:18:12:27.484;
		btnToday:                      Button  number = 10, ordinal = 21;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:31:54.253;
		grpCategories:                 GroupBox  number = 13, ordinal = 24;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:31:54.253;
		grpMenu:                       GroupBox  number = 6, ordinal = 17;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:18:12:05.961;
		grpTools:                      GroupBox  number = 5, ordinal = 16;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:18:09:09.350;
		lblTags:                       GroupBox  number = 19, ordinal = 34;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:15:34:19.354;
		lstCategories:                 ListBox  number = 14, ordinal = 25;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:31:54.256;
		lstTags:                       ListBox  number = 20, ordinal = 35;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:15:34:19.354;
		myAddTaskModal:                AddTask   explicitEmbeddedInverse, number = 17, ordinal = 32;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:14:19:56:45.786;
		myCategoryModel:               AddCategory   explicitEmbeddedInverse, number = 4, ordinal = 31;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:14:19:53:38.232;
		myEditTaskModal:               EditTask   explicitEmbeddedInverse, number = 18, ordinal = 33;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:14:19:57:16.121;
		tskTable:                      Table  number = 16, ordinal = 27;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:00:18:49.758;
		txtTag:                        TextBox  number = 22, ordinal = 37;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:15:34:19.380;
 
	jadeMethodDefinitions
		btn7Days_click(btn: Button input) updating, number = 1019;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:20:10:51.206;
		btnAddCategory_click(btn: Button input) updating, number = 1003;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:14:19:56:03.379;
		btnAddTag_click(btn: Button input) updating, number = 1023;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:18:25:17.031;
		btnAddTask_click(btn: Button input) updating, number = 1010;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:14:20:02:17.567;
		btnAll_click(btn: Button input) updating, number = 1016;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:20:10:56.254;
		btnArchive_click(btn: Button input) updating, number = 1020;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:20:11:11.001;
		btnDeleteCategory_click(btn: Button input) updating, number = 1006;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:14:00:28:22.135;
		btnEditTask_click(btn: Button input) updating, number = 1022;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:14:20:00:37.073;
		btnLogout_click(btn: Button input) updating, number = 1002;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:14:10:41.144;
		btnMarkComplete_click(btn: Button input) updating, number = 1021;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:23:56:41.452;
		btnToday_click(btn: Button input) updating, number = 1018;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:20:11:24.109;
		load() updating, number = 1001;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:16:15:52:48.299;
		loadCategories(pSystem: ProductivitySystem) number = 1004;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:18:16:47.054;
		loadTags(pSystem: ProductivitySystem) number = 1024;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:18:18:18.723;
		loadTasks(
			pSyst: ProductivitySystem; 
			taskView: String) number = 1011;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:19:56:47.066;
		lstCategories_click(listbox: ListBox input) updating, number = 1017;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:20:05:34.733;
		lstCategories_displayEntry(
			listbox: ListBox input; 
			obj: Any; 
			lstIndex: Integer): String updating, number = 1005;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:23:45:03.703;
		lstCategories_gotFocus(listbox: ListBox input) updating, number = 1009;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:18:43:16.924;
		lstCategories_lostFocus(listbox: ListBox input) updating, number = 1008;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:23:20:45.579;
		lstTags_click(listbox: ListBox input) updating, number = 1026;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:20:05:31.278;
		lstTags_displayEntry(
			listbox: ListBox input; 
			obj: Any; 
			lstIndex: Integer): String updating, number = 1025;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:18:24:02.706;
		taskLoop(
			currentTask: Tasks; 
			i: Integer) number = 1015;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:19:44:56.355;
		tskTable_click(table: Table input) updating, number = 1013;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:20:16:58.055;
		tskTable_queryRowColChg(
			table: Table input; 
			newSheet: Integer; 
			newRow: Integer; 
			newCol: Integer): Boolean updating, number = 1014;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:18:10:59.671;
 
	eventMethodMappings
		btn7Days_click = click of Button;
		btnAddCategory_click = click of Button;
		btnAddTag_click = click of Button;
		btnAddTask_click = click of Button;
		btnAll_click = click of Button;
		btnArchive_click = click of Button;
		btnDeleteCategory_click = click of Button;
		btnEditTask_click = click of Button;
		btnLogout_click = click of Button;
		btnMarkComplete_click = click of Button;
		btnToday_click = click of Button;
		load = load of Form;
		lstCategories_click = click of ListBox;
		lstCategories_displayEntry = displayEntry of ListBox;
		lstCategories_gotFocus = gotFocus of ListBox;
		lstCategories_lostFocus = lostFocus of ListBox;
		lstTags_click = click of ListBox;
		lstTags_displayEntry = displayEntry of ListBox;
		tskTable_click = click of Table;
		tskTable_queryRowColChg = queryRowColChg of Table;
	)
	Collection completeDefinition
	(
	)
	Btree completeDefinition
	(
	)
	Dictionary completeDefinition
	(
	)
	MemberKeyDictionary completeDefinition
	(
	)
	MkdAllTags completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:15:19:54.657;
	)
	MkdAllTagsMembers_tags completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:15:27:25.999;
	)
	MkdAllUsers completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:17:54:34.106;
	)
	MkdCategories completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:12:19:53:36.628;
	)
	MkdTasks completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:20:49:57.170;
	)
	MkdTasksByID completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:13:20:52:09.439;
	)
	MkdTasksTags_tasks completeDefinition
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:15:15:26:13.099;
	)
 
memberKeyDefinitions
	MkdAllTags completeDefinition
	(
		cTitle;
	)
	MkdAllTagsMembers_tags completeDefinition
	(
		cTitle descending;
	)
	MkdAllUsers completeDefinition
	(
		actorName;
	)
	MkdCategories completeDefinition
	(
		cID;
	)
	MkdTasks completeDefinition
	(
		dueDate;
		cID;
	)
	MkdTasksByID completeDefinition
	(
		cID;
	)
	MkdTasksTags_tasks completeDefinition
	(
		cID;
	)
 
inverseDefinitions
	myUser of Categories peerOf myCategories of User;
	mySystem of User peerOf allUsers of ProductivitySystem;
	myTags of User automatic peerOf myUser of Tags manual;
	myUser of Tasks peerOf myTasks of User;
	myTasksByID of User peerOf myUser of Tasks;
	myCategory of Tasks peerOf myTasks of Categories;
	myTasks of Tags automatic peerOf myTags of Tasks manual;
	myCategoryModel of MainScreen peerOf myParentForm of AddCategory;
	myAddTaskModal of MainScreen peerOf myParentForm of AddTask;
	myEditTaskModal of MainScreen peerOf myParentForm of EditTask;
databaseDefinitions
ProductivityDb
	(
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:01:16:45:02.188;
	databaseFileDefinitions
		"productivity" number=53;
		setModifiedTimeStamp "Mark" "7.1.05" 2015:10:01:16:45:02.188;
	defaultFileDefinition "productivity";
	classMapDefinitions
		SProductivity in "_environ";
		Productivity in "_usergui";
		GProductivity in "productivity";
		ModelLayer in "productivity";
		ProductivitySystem in "productivity";
		Actor in "productivity";
		User in "productivity";
		MkdAllUsers in "productivity";
		Components in "productivity";
		Tasks in "productivity";
		Categories in "productivity";
		MkdCategories in "productivity";
		MkdTasks in "productivity";
		MkdTasksByID in "productivity";
		Tags in "productivity";
		MkdAllTags in "productivity";
		MkdTasksTags_tasks in "productivity";
		MkdAllTagsMembers_tags in "productivity";
	)
schemaViewDefinitions
exportedPackageDefinitions
typeSources
	MasterForm (
	jadeMethodSources
load
{
load() updating;

vars

begin

end;

}

	)
	CreateMember (
	jadeMethodSources
btnCreate_click
{
btnCreate_click(btn: Button input) updating;

vars

	theUser : User;
	pSystem : ProductivitySystem;
	fm: StartScreem;
	lastMemberID : Integer;
	aCategory : Categories;

begin

	pSystem := ProductivitySystem.firstInstance;

	if txtUserName.text = null then
		app.msgBox("Enter something","Error",0);
	else

		theUser := pSystem.allUsers.getAtKey(txtUserName.text);
		
		if theUser = null then
			//no duplicate, carry on 
			//not going to bother with a set method since this code only runs here
			beginTransaction;
				create theUser;
				//Give our new member an incremental ID. 
				if User.lastInstance = null then
					//if this is the first member instance, give an ID of zero.
					theUser.userID := 0;
				else
					theUser.userID := User.lastInstance.userID+1;
				endif;
				theUser.actorName := txtUserName.text;
				theUser.mySystem := pSystem;
				
				
				
				
				
				
				
			commitTransaction;
			
			create fm;
			fm.show();
			fm.centreWindow;
			//We'll be nice and put their username in there for them.
			fm.txtLogin.text := txtUserName.text;
			unloadForm();
		else
			app.msgBox("Got duplicate","Error",0);
		endif;
		
	endif;

end;

}

	)
	StartScreem (
	jadeMethodSources
btnLoadData_click
{
btnLoadData_click(btn: Button input) updating;

vars

	aUser : User;
	aCategory : Categories;
	aTask : Tasks;
	pSys : ProductivitySystem;
	todayToday : Date;
	aTag1,aTag2,aTag3 : Tags;

begin

	purge;
	pSys := ProductivitySystem.firstInstance;
	
	beginTransaction;
	
		create aUser;
		aUser.userID := 1;
		aUser.actorName := "test";
		aUser.mySystem := pSys;
		
		create aTag1;
		aTag1.cTitle := "Tag 1";
		aTag1.myUser := aUser;
		
		create aTag2;
		aTag2.cTitle := "Tag 2";
		aTag2.myUser := aUser;
		
		create aTag3;
		aTag3.cTitle := "Tag 3";
		aTag3.myUser := aUser;
		
		
		

		
		create aCategory;
		aCategory.cTitle := "Category 1";
		aCategory.cID := 1;
		aCategory.myUser :=aUser;
		
		create aTask;
		aTask.cID := 1;
		aTask.cTitle := "Task 1";
		aTask.myUser := aUser;
		aTask.myCategory := aCategory;
		aTask.dueDate :=("12-09-2015").Date;
		aTask.status := 1;
		aTask.myTags.add(aTag1);
		aTask.myTags.add(aTag2);
		aTask.myTags.add(aTag3);
		
		create aTask;
		aTask.cID := 2;
		aTask.cTitle := "Present 213 Project";
		aTask.myUser := aUser;
		aTask.myCategory := aCategory;
		aTask.dueDate := todayToday;
		aTask.myTags.add(aTag1);
		aTask.myTags.add(aTag2);
		
		
		aTask.status := 1;
		create aTask;
		aTask.cID := 3;
		aTask.cTitle := "Go to INFO213 Classes";
		aTask.myUser := aUser;
		aTask.myCategory := aCategory;
		aTask.dueDate :=("12-09-2015").Date;
		aTask.status := 1;
		aTask.myTags.add(aTag1);

		
		
		
		
		create aCategory;
		aCategory.cTitle := "Category 2";
		aCategory.cID := 2;
		aCategory.myUser :=aUser;
		
		create aTask;
		aTask.cID := 5;
		aTask.cTitle := "Task 5";
		aTask.myUser := aUser;
		aTask.myCategory := aCategory;
		aTask.dueDate :=("12-09-2016").Date;
		aTask.status := 1;
		create aTask;
		aTask.cID := 6;
		aTask.cTitle := "Task 6";
		aTask.myUser := aUser;
		aTask.myCategory := aCategory;
		aTask.dueDate := todayToday;
		aTask.status := 1;
		create aTask;
		aTask.cID := 7;
		aTask.cTitle := "Task 7";
		aTask.myUser := aUser;
		aTask.myCategory := aCategory;
		aTask.dueDate :=("11-08-2016").Date;
		aTask.status := 1;
	
		
		create aCategory;
		aCategory.cTitle := "Category 3";
		aCategory.cID := 3;
		aCategory.myUser :=aUser;
		
		create aTask;
		aTask.cID := 9;
		aTask.cTitle := "Task 9";
		aTask.myUser := aUser;
		aTask.myCategory := aCategory;
		aTask.dueDate :=("10-07-2016").Date;
		aTask.status := 1;
		create aTask;
		aTask.cID := 10;
		aTask.cTitle := "Task 10";
		aTask.myUser := aUser;
		aTask.myCategory := aCategory;
		aTask.dueDate := todayToday;
		aTask.status := 1;
		create aTask;
		aTask.cID := 11;
		aTask.cTitle := "Task 11";
		aTask.myUser := aUser;
		aTask.myCategory := aCategory;
		aTask.dueDate :=("09-06-2016").Date;
		aTask.status := 1;
		
		create aCategory;
		aCategory.cTitle := "Exams";
		aCategory.cID := 4;
		aCategory.myUser :=aUser;
		
		create aTask;
		aTask.cID := 14;
		aTask.cTitle := "Study for 213 exam";
		aTask.myUser := aUser;
		aTask.myCategory := aCategory;
		aTask.dueDate :=("08-05-2016").Date;
		aTask.status := 1;
		create aTask;
		aTask.cID := 15;
		aTask.cTitle := "INFO213 Exam Today";
		aTask.myUser := aUser;
		aTask.myCategory := aCategory;
		aTask.dueDate := todayToday+3;
		aTask.status := 1;
		create aTask;
		aTask.cID := 16;
		aTask.cTitle := "Task 16";
		aTask.myUser := aUser;
		aTask.myCategory := aCategory;
		aTask.dueDate := todayToday+3;
		aTask.status := 1;
	
		
		
	
	
	
	
	commitTransaction;
	
	txtLogin.text := "test";

	

end;

}

btnLogin_click
{
btnLogin_click(btn: Button input) updating;

vars
	//we need to add some padding to the label because we've got a border on it 
	space : String;
	pSystem : ProductivitySystem;
	thisUser : User;
	fm : MainScreen;

begin

	pSystem := ProductivitySystem.firstInstance;

	//for asthetics 
	space := " ";
	
	
	//check if user has entered any text 
	if txtLogin.text = null then
		displayErrorMessage(space&space&"Please enter a Username");
	else
		thisUser := pSystem.allUsers.getAtKey(txtLogin.text);
		if thisUser = null then
			displayErrorMessage(space&space&"Member not found.");
		else
			beginTransaction;
				pSystem.activeMember := thisUser;
			commitTransaction;
			create fm;
			
			fm.show();
			fm.centreWindow;
			unloadForm();
		endif;
		
	endif;
	
	
	
	
	

end;

}

btnPurgeData_click
{
btnPurgeData_click(btn: Button input) updating;

vars

begin
	purge;
  
end;

}

btnRegister_click
{
btnRegister_click(btn: Button input) updating;

vars

	fm : CreateMember;

begin

	create fm;
	fm.show();
	fm.centreWindow;
	unloadForm();

end;

}

displayErrorMessage
{
displayErrorMessage(aMessage:String) updating;

vars

begin

	lblErrorContainer.visible := true;
	lblErrorContainer.caption := aMessage;

end;

}

load
{
load() updating;

vars
	pSystem : ProductivitySystem;

begin
	//In theory should only run once and be the first code to run. 
	
	beginTransaction;
		if ProductivitySystem.firstInstance = null then 
			create pSystem;
		else
			pSystem := ProductivitySystem.firstInstance;
			//Like starting a new member session.
			pSystem.activeMember := null;
			pSystem.activeView := "allTasks";
		endif;
	commitTransaction;
		
	

end;
}

purge
{
purge();

vars
	pSystem : ProductivitySystem;
begin

		beginTransaction;
			User.instances.purge;	
			Categories.instances.purge;	
			Tasks.instances.purge;	
			ProductivitySystem.instances.purge;
			Tags.instances.purge;
			//dont purge the system object... 	
		

			create pSystem;
	
		
			//Like starting a new member session.
			pSystem.activeMember := null;
			pSystem.activeView := "allTasks";
		
	
			
		commitTransaction;
		app.msgBox("Done","Success",0);

end;

}

	)
	Modals (
	jadeMethodSources
pUnloadForm
{
pUnloadForm() updating, clientExecution;

vars

begin
	unloadForm();
end;

}

	)
	AddCategory (
	jadeMethodSources
btnAdd_click
{
btnAdd_click(btn: Button input) updating;

vars

	pSystem : ProductivitySystem;
	myCat : Categories;
	mainScreen : MainScreen;
	
begin
	pSystem := ProductivitySystem.firstInstance;
	

	
	if txtCatName.text = null then 
		app.msgBox("Cannot be Empty","error",0);
	else 
		beginTransaction;
			create myCat;
			myCat.cTitle := txtCatName.text;
			myCat.myUser := pSystem.activeMember;
			
			//Give our new member an incremental ID. 
			if Categories.lastInstance = null then
				//if this is the first member instance, give an ID of zero.
				myCat.cID := 0;

			else
				myCat.cID := Categories.lastInstance.cID+1;
		
			endif;
			//pSystem.activeView := "allTasks";
			myParentForm.loadCategories(pSystem);
		commitTransaction;
		pUnloadForm;
	
		
		
	
		
		
	endif;
end;

}

btnCancel_click
{
btnCancel_click(btn: Button input) updating;

vars

begin
	pUnloadForm;
end;

}

	)
	Task (
	jadeMethodSources
btnCancel_click
{
btnCancel_click(btn: Button input) updating;

vars

begin
	pUnloadForm;
end;

}

lstCategories_displayEntry
{
lstCategories_displayEntry(listbox: ListBox input; obj: Any; lstIndex: Integer):String updating;

vars
	cats : Categories;

begin
	cats:=obj.Categories;
	return cats.cTitle.String;

end;
}

lstTags_displayEntry
{
lstTags_displayEntry(listbox: ListBox input; obj: Any; lstIndex: Integer):String updating;

vars
	tag : Tags;

begin
	tag:=obj.Tags;
	return tag.cTitle.String;

end;
}

	)
	AddTask (
	jadeMethodSources
btnAdd_click
{
btnAdd_click(btn: Button input) updating;

vars

	newTask : Tasks;
	selectedCategory: Categories;
	pSys : ProductivitySystem;
	activeUser : User;
	aTag,selectedTags : Tags;
	selectedList : Boolean;
	
	thisUser : User;
	count : Integer;


begin
	pSys := ProductivitySystem.firstInstance;
	thisUser := pSys.activeMember;

	selectedCategory := lstCategories.listObject.Categories;


	
	pSys := ProductivitySystem.firstInstance;
	
	activeUser := 	pSys.activeMember;
	

	if txtTaskTitle.text <> null then
	
		if txtDD.text <> null then
		
			if txtMM.text <> null then
			
				if txtYYYY.text <> null then
				
					if selectedCategory <> null then
					
						
					
						beginTransaction;
						
							create newTask;
							newTask.cTitle := txtTaskTitle.text;
							if Tasks.lastInstance = null then
								//if this is the first member instance, give an ID of zero.
								newTask.cID := 0;
				
							else
								newTask.cID := Tasks.lastInstance.cID+1;
						
							endif;
							newTask.myUser := activeUser;
							newTask.status :=1;
							newTask.myCategory := selectedCategory;
							newTask.dueDate := (txtDD.text&"-"&txtMM.text&"-"&txtYYYY.text).Date;
							
							myParentForm.loadTasks(pSys,pSys.activeView);
							
							
							
							
							
						commitTransaction;
						
							beginTransaction;
						if lstTags.itemSelected <> null then
								count := 1;
								foreach selectedList in lstTags.itemSelected do 
									if selectedList = true then 
										aTag := lstTags.itemObject[count].Tags;
										newTask.myTags.add(aTag);
									endif;
									count := count + 1;
								endforeach;
							endif;
							commitTransaction;
						pUnloadForm;
					
					else
						app.msgBox("Select a category","error",0);
					endif;
		
				else 
					app.msgBox("Enter a year","error",0);
				endif;
		
			else 
				app.msgBox("Enter a Month","error",0);
			endif;
		
		else 
			app.msgBox("Enter a day","error",0);
		endif;
	
	else 
		app.msgBox("Enter a title","error",0);
	endif;

end;

}

btnCancel_click
{
btnCancel_click(btn: Button input) updating;

vars

begin
	pUnloadForm;
end;

}

load
{
load() updating;

vars

	pSys : ProductivitySystem;
	thisUser : User;

begin

	
	pSys:= ProductivitySystem.firstInstance;
	thisUser := pSys.activeMember;
	
	lstCategories.listCollection(thisUser.myCategories,true,0);
	
	lstTags.listCollection(thisUser.myTags,true,0);
	
	
	
end;

}

	)
	EditTask (
	jadeMethodSources
btnAdd_click
{
btnAdd_click(btn: Button input) updating;

vars
	aTag,selectedTags :Tags;
	thisTask : Tasks;
	selectedCategory: Categories;
	pSys : ProductivitySystem;
	thisUser : User;
	count : Integer;
	selectedList: Boolean;
begin
	pSys := ProductivitySystem.firstInstance;
	thisUser := pSys.activeMember;
	thisTask := pSys.activeTask;
	
	selectedCategory := lstCategories.listObject.Categories;

	if txtTaskTitle.text <> null then
		if txtDD.text <> null then
			if txtMM.text <> null then
				if txtYYYY.text <> null then
					if selectedCategory <> null then
						beginTransaction;
							thisTask.cTitle := txtTaskTitle.text;
							thisTask.myCategory := selectedCategory;
							thisTask.dueDate := (txtDD.text&"-"&txtMM.text&"-"&txtYYYY.text).Date;
							
							
							if lstTags.itemSelected <> null then
								count := 1;
								
								if thisTask.myTags.size > 0 then 
								
									foreach aTag in thisTask.myTags do 
										thisTask.myTags.remove(aTag);
									endforeach;
								
								endif;
								
								foreach selectedList in lstTags.itemSelected do 
									if selectedList = true then 
										aTag := lstTags.itemObject[count].Tags;
										thisTask.myTags.add(aTag);
									endif;
									count := count + 1;
								endforeach;
							endif;

						commitTransaction;
						myParentForm.loadTasks(pSys,pSys.activeView);
						pUnloadForm;
					else
						app.msgBox("Select a category","error",0);
					endif;
				else 
					app.msgBox("Enter a year","error",0);
				endif;
			else 
				app.msgBox("Enter a Month","error",0);
			endif;
		else 
			app.msgBox("Enter a day","error",0);
		endif;
	else 
		app.msgBox("Enter a title","error",0);
	endif;

end;

}

btnCancel_click
{
btnCancel_click(btn: Button input) updating;

vars

begin
	pUnloadForm;
end;

}

load
{
load() updating;

vars
	pSys : ProductivitySystem;
	activeTask : Tasks;
	listBoxCount,count,catIndex: Integer;
	thisUser : User;
	myCat : Categories;
	aTag : Tags;
	loopSize : Integer;
	
begin

	pSys := ProductivitySystem.firstInstance;
	thisUser := pSys.activeMember;
	activeTask := pSys.activeTask;
	lblTitle.caption := "Edit: "&activeTask.cTitle;
	
	btnAdd.caption := "Update";
	
	txtTaskTitle.text := activeTask.cTitle;
	lstCategories.listCollection(thisUser.myCategories,true,0);
	lstTags.listCollection(thisUser.myTags,true,0);
	
	count := 1;
	loopSize:= lstTags.getCollection.size+1;
	while count < loopSize do 
		foreach aTag in activeTask.myTags do 
			if aTag.cTitle = lstTags.itemObject[count].Tags.cTitle then 
				//somehow make tags active 
			endif;
		endforeach;
		count := count+1;
	endwhile;
	
	

	
	 listBoxCount := lstCategories.listCount;
	 count := 1;
	 
	 foreach myCat in thisUser.myCategories do
	 
		if myCat = activeTask.myCategory then
			catIndex := count;
		endif;
		count := count + 1;
	 
	 endforeach;
	 

	 
		lstCategories.listIndex := catIndex;//this is killing me 
	
		txtDD.text := activeTask.dueDate.day.String;
		txtMM.text := activeTask.dueDate.month.String;
		txtYYYY.text := activeTask.dueDate.year.String;
	
	 
	
	
end;

}

	)
	MainScreen (
	jadeMethodSources
btn7Days_click
{
btn7Days_click(btn: Button input) updating;

vars
	pSys : ProductivitySystem;
begin

	pSys := ProductivitySystem.firstInstance;

	beginTransaction;
		pSys.activeView := "7Days";
	commitTransaction;
	loadTasks(pSys,pSys.activeView);
	
	lstCategories.listIndex  := -1;
	

end;

}

btnAddCategory_click
{
btnAddCategory_click(btn: Button input) updating;

vars

	fm : AddCategory;
	thisForm : MainScreen;

begin

	

	create fm;
	fm.myParentForm := btn.form.MainScreen;
	fm.show();
	fm.centreWindow;



end;
}

btnAddTag_click
{
btnAddTag_click(btn: Button input) updating;

vars

	pSys : ProductivitySystem;
	newTag,aTag : Tags;
	

begin

	pSys := ProductivitySystem.firstInstance;

 if txtTag.text <> null then
 
	aTag := pSys.activeMember.myTags.getAtKey(txtTag.text);
	
	if aTag = null then
		beginTransaction;
			create newTag;
			newTag.cTitle := txtTag.text;
			if Tags.lastInstance = null then
				newTag.cID := 0;
			else
				newTag.cID := Tags.lastInstance.cID+1;
			endif;
			newTag.myUser := pSys.activeMember;
		commitTransaction;

		loadTags(pSys);
		txtTag.text := "";
	else
		app.msgBox("Tag already exists","Error",0);
	endif;

 
 else
	app.msgBox("Enter a tag name","Error",0);
 endif;

end;

}

btnAddTask_click
{
btnAddTask_click(btn: Button input) updating;

vars

	fm : AddTask;
	pSys : ProductivitySystem;
	me : User;

begin
	pSys := ProductivitySystem.firstInstance;
	me := 	pSys.activeMember;
	
	//lstCategories.listIndex  := -1;
	
	
	if me.myCategories.size > 0 then
		create fm;
		fm.myParentForm := btn.form.MainScreen;
		fm.show();
		fm.centreWindow;
		
	else
		app.msgBox("You need at least 1 category","Error",0);
	
	endif;
	
	


	
end;

}

btnAll_click
{
btnAll_click(btn: Button input) updating;

vars
	pSys : ProductivitySystem;
begin

	pSys := ProductivitySystem.firstInstance;

	beginTransaction;
		pSys.activeView := "allTasks";
	commitTransaction;
	loadTasks(pSys,pSys.activeView);
	
	lstCategories.listIndex  := -1;

end;

}

btnArchive_click
{
btnArchive_click(btn: Button input) updating;

vars
	pSys : ProductivitySystem;
begin

	pSys := ProductivitySystem.firstInstance;

	beginTransaction;
		pSys.activeView := "Archived";
	commitTransaction;
	loadTasks(pSys,pSys.activeView);
	
	lstCategories.listIndex  := -1;

end;

}

btnDeleteCategory_click
{
btnDeleteCategory_click(btn: Button input) updating;

vars

	selectedCategory : Categories;
	pSys : ProductivitySystem;
	number,sumActiveTasks: Integer;
	aTask : Tasks;

begin



	pSys := ProductivitySystem.firstInstance;
	selectedCategory := lstCategories.listObject.Categories;
	


	
	

	
	if selectedCategory <> null then
	
	sumActiveTasks := 0;
		foreach aTask in selectedCategory.myTasks do
			sumActiveTasks := sumActiveTasks + aTask.status;
		endforeach;
	
		if sumActiveTasks = 0 then
	
			number := app.msgBox("Delete Category", "Are you sure?", MsgBox_OK_Cancel);
			beginTransaction;
				selectedCategory.myUser :=null;
				delete selectedCategory;
			commitTransaction;
			
			lstCategories.listIndex  := -1;
				
			loadCategories(pSys);
			btnDeleteCategory.enabled:=false;
		
			//if number = MsgBox_Return_Cancel then                 // canceled?
				
			//endif;
		else
			app.msgBox("Delete tasks from this category first.", "", 0);
		endif;
	else
		app.msgBox("No category selected", "Please select a category", 0);
	endif;
	

	
	

	
end;

}

btnEditTask_click
{
btnEditTask_click(btn: Button input) updating;

vars

	fm : EditTask;
	pSys : ProductivitySystem;
	activeTask : Tasks;

begin

	pSys := ProductivitySystem.firstInstance;
	activeTask := pSys.activeMember.myTasksByID.getAtKey(btn.tag.Integer);
	
	if activeTask <> null then 
		beginTransaction;
			pSys.activeTask := activeTask;
		commitTransaction;
	
		create fm;
		fm.myParentForm := btn.form.MainScreen;
		fm.show();
		fm.centreWindow;
	
	else
		app.msgBox("Something went wrong.","Error",0);
	endif;
	
	
	


end;
}

btnLogout_click
{
btnLogout_click(btn: Button input) updating;

vars

	pSys : ProductivitySystem;
	fm: StartScreem;

begin

	pSys := ProductivitySystem.firstInstance;
	beginTransaction;
		pSys.activeMember := null;
	commitTransaction;


	create fm;
	fm.show();
	fm.centreWindow;
	unloadForm();

end;

}

btnMarkComplete_click
{
btnMarkComplete_click(btn: Button input) updating;

vars

	thisTask : Tasks;
	pSys : ProductivitySystem;
	thisUser : User;
	number : Integer;

begin

	pSys := ProductivitySystem.firstInstance;
	thisUser := pSys.activeMember;

	thisTask := thisUser.myTasksByID.getAtKey(btn.tag.Integer);
	
	
	
	if thisTask <> null then

			number := app.msgBox("Are you sure?", "Are you sure?", MsgBox_OK_Cancel);
			beginTransaction;
		
				thisTask.status := 0;
				thisTask.myCategory := null;
				
			commitTransaction;
				
		loadTasks(pSys,pSys.activeView);

	else
		app.msgBox("Something has gone awry", "Error", 0);
	endif;
	

end;

}

btnToday_click
{
btnToday_click(btn: Button input) updating;

vars
	pSys : ProductivitySystem;
begin

	pSys := ProductivitySystem.firstInstance;

	beginTransaction;
		pSys.activeView := "Today";
	commitTransaction;
	loadTasks(pSys,pSys.activeView);
	
	lstCategories.listIndex  := -1;

end;

}

load
{
load() updating;

vars
	pSys : ProductivitySystem;
	crows : Integer;
	ccolumns : Integer;
	start : Integer;
	cntrl : Control;
	cntrl2 : Control;
	label : Label;

begin
	//Set the username in the top right to look like its personal 
	pSys := ProductivitySystem.firstInstance;
	lblUserNameHeader.caption := pSys.activeMember.actorName;
	
	
	loadCategories(pSys);
	loadTasks(pSys,pSys.activeView);
	loadTags(pSys);
	
	
end;

}

loadCategories
{
loadCategories(pSystem:ProductivitySystem);

vars

	pSys :  ProductivitySystem;
	thisUser :  User;
	numCategories : Integer;

begin

	pSys:= pSystem;
	thisUser := pSys.activeMember;
	
	numCategories := thisUser.myCategories.size;
	
	
	if numCategories = 0 then
		
	else
		lstCategories.listCollection(thisUser.myCategories,true,0);
	endif;
	
	
end;

}

loadTags
{
loadTags(pSystem:ProductivitySystem);

vars

	pSys :  ProductivitySystem;
	thisUser :  User;
	numTags : Integer;

begin

	pSys:= pSystem;
	thisUser := pSys.activeMember;
	
	numTags := thisUser.myTags.size;
	
	
	if numTags > 0 then
		lstTags.listCollection(thisUser.myTags,true,0);
	endif;
	
	
end;
}

loadTasks
{
loadTasks(pSyst:ProductivitySystem;taskView:String);

vars
	pSys : ProductivitySystem;
	thisUser :  User;
	aTask,currentTask : Tasks;
	numTasks : Integer;
	i : Integer;
	selectedCategory : Categories;
	cntrl,currentCntr : Control;
	taskArray : Array;
	todayDate,sevenDays : Date;
	selectedTag,thisTag : Tags;
begin
	//Set some vars.
	pSys:=pSyst;
	thisUser := pSys.activeMember;
	tskTable.rows := 1;
	tskTable.columns :=0;
	sevenDays:= sevenDays+7;
	numTasks := thisUser.myTasks.size;
	
	if numTasks <> 0 then
	
		tskTable.columns :=6;//reset this sucker in case we set it to 1 when there was no tasks.
	
		i := 2;//coz we want to start at row 2, ofc. 
	
		//just some stylin'
		tskTable.accessCell(1,1).text := " Task";
		tskTable.accessCell(1,2).text := " Tags";
		tskTable.accessCell(1,3).text := " Category";
		tskTable.accessCell(1,4).text := " Due Date";
		
		tskTable.accessCell(1,1).fontBold := true;
		tskTable.accessCell(1,2).fontBold := true;
		tskTable.accessCell(1,3).fontBold := true;
		
		tskTable.accessCell(1,1).fontSize := 12;
		tskTable.accessCell(1,2).fontSize := 12;
		tskTable.accessCell(1,3).fontSize := 12;
		
		tskTable.accessCell(1,1).backColor := 000;
		tskTable.accessCell(1,1).foreColor := White;
		tskTable.accessCell(1,2).backColor := 000;
		tskTable.accessCell(1,2).foreColor := White;
		tskTable.accessCell(1,3).backColor := 000;
		tskTable.accessCell(1,3).foreColor := White;
		tskTable.accessCell(1,4).backColor := 000;
		tskTable.accessCell(1,4).foreColor := White;
		tskTable.accessCell(1,5).backColor := 000;
		tskTable.accessCell(1,5).foreColor := White;
		tskTable.accessCell(1,6).backColor := 000;
		tskTable.accessCell(1,6).foreColor := White;
		
		tskTable.accessColumn(3).width := 110;
		tskTable.accessColumn(4).width := 110;
		tskTable.accessColumn(5).width := 50;
		tskTable.accessColumn(6).width := 100;
		
		/*  The following must have its OWN foreach because the main loop only
		 *  increments i when a task meets the conditions depending on the view. 
		 *  The generated buttons must be run for every single task, then we'll 
		 *  make visible the ones that are shown in the loop.
		 */ 
		i := 2;//coz we want to start at row 2.
		foreach currentTask in thisUser.myTasks do
		
			//Create the mark complete button 
			delete btnMarkComplete.getControl(9000+i);
			cntrl := btnMarkComplete.loadControl(9000+i);
			cntrl.top := 21+30*(i-2);
			cntrl.left := 654;
			cntrl.height:= 31;
			cntrl.width:= 100;
			cntrl.parent := tskTable;
			cntrl.visible := false;
			
			//create the edit task button 
			delete btnEditTask.getControl(18000+i);
			cntrl := btnEditTask.loadControl(18000+i);
			cntrl.top := 21+30*(i-2);
			cntrl.left := 604;
			cntrl.height:= 31;
			cntrl.width:= 51;
			cntrl.parent := tskTable;
			cntrl.visible := false;
		
			i:=i+1;
		endforeach;
		
		i := 2;
		sevenDays := sevenDays + 7;
		
		foreach currentTask in thisUser.myTasks do
		
			//Welcome to my network of if statements. Here we filter tasks according to time or category. 
			if pSys.activeView = "allTasks" and currentTask.status = 1 then
				taskLoop(currentTask,i);	
				i:=i+1;
			elseif pSys.activeView = "category" then 
				selectedCategory := lstCategories.listObject.Categories;
				if selectedCategory <> null then
				
					if currentTask.status = 1 then

						if currentTask.myCategory.cTitle = selectedCategory.cTitle then
							
							taskLoop(currentTask,i);
							i:=i+1;
							
						endif; 
						
					endif;			
				
				else
					taskLoop(currentTask,i);
					i:=i+1;
				endif;
			elseif pSys.activeView = "tag" then
				selectedTag := lstTags.listObject.Tags;
				if selectedTag <> null then
				
					if currentTask.status = 1 then
					
						thisTag := currentTask.myTags.getAtKey(selectedTag.cTitle);
						
						if thisTag <> null then
							if thisTag.cTitle = selectedTag.cTitle then
							
								taskLoop(currentTask,i);
								i:=i+1;
							
							endif; 
						endif;

					
						
					endif;			
				
				else
					taskLoop(currentTask,i);
					i:=i+1;
				endif;
			elseif pSys.activeView = "Today" and currentTask.status = 1 then 
			
				if todayDate = currentTask.dueDate then
						
					taskLoop(currentTask,i);
					i:=i+1;
						
				endif; 
			
			elseif pSys.activeView = "7Days" then 
	
				if currentTask.dueDate <= sevenDays and  currentTask.dueDate >= todayDate then
						if currentTask.status = 1 then
							taskLoop(currentTask,i);
							i:=i+1;
						endif;
						
				endif; 
			
			elseif pSys.activeView = "Archived" and currentTask.status = 0 then 
				taskLoop(currentTask,i);
				i:=i+1;
			else
				//WHY DOES CODE EXCECUTE HERE WHEN ELSEIF CONDITIONS ARE MET???????? 
			endif;
			
		endforeach;
		//if i is 2 at this point, there were no tasks found
		if i = 2 then 
			tskTable.rows :=1;
			tskTable.columns :=1;
			tskTable.accessCell(1,1).text :="No tasks";
		endif;
		
	else
		//No tasks
		tskTable.rows :=1;
		tskTable.columns :=1;
		tskTable.accessCell(1,1).text :="No tasks";
	endif;
	
end;

}

lstCategories_click
{
lstCategories_click(listbox: ListBox input) updating;


vars
	selectedCategory : Categories;
	pSys : ProductivitySystem;
begin

	pSys := ProductivitySystem.firstInstance;
	btnDeleteCategory.enabled := true;
	
	selectedCategory := lstCategories.listObject.Categories;
	beginTransaction;
		pSys.activeView := "category";
	commitTransaction;
	loadTasks(pSys,pSys.activeView);
	
	lstTags.listIndex :=-1;
	
end;

}

lstCategories_displayEntry
{
lstCategories_displayEntry(listbox: ListBox input; obj: Any; lstIndex: Integer):String updating;


vars
	cats : Categories;

begin
	cats:=obj.Categories;
	return cats.cTitle.String;

end;
}

lstCategories_gotFocus
{
lstCategories_gotFocus(listbox: ListBox input) updating;

vars
	/*selectedCategory : Categories;
	pSys : ProductivitySystem;*/
begin
/*
	pSys := ProductivitySystem.firstInstance;
	btnDeleteCategory.enabled := true;
	
	selectedCategory := lstCategories.listObject.Categories;
	beginTransaction;
		pSys.activeView := "category";
	commitTransaction;
	loadTasks(pSys,pSys.activeView);
	*/
end;

}

lstCategories_lostFocus
{
lstCategories_lostFocus(listbox: ListBox input) updating;

vars

begin
	//lstCategories.listIndex  := -1;
end;

}

lstTags_click
{
lstTags_click(listbox: ListBox input) updating;

vars
	//selectedCategory : Categories;
	pSys : ProductivitySystem;
begin

	pSys := ProductivitySystem.firstInstance;
	
	
	//selectedCategory := lstCategories.listObject.Categories;
	beginTransaction;
		pSys.activeView := "tag";
	commitTransaction;
	loadTasks(pSys,pSys.activeView);
	
	lstCategories.listIndex := -1;
	
	
end;

}

lstTags_displayEntry
{
lstTags_displayEntry(listbox: ListBox input; obj: Any; lstIndex: Integer):String updating;


vars
	tags : Tags;

begin
	tags:=obj.Tags;
	return tags.cTitle.String;

end;

}

taskLoop
{
taskLoop(currentTask:Tasks;i:Integer);

vars

	today : Date;
	cntrl : Control;
	tag : Tags;
	tagsSize,count : Integer;
	commaString,tagString : String;
begin
			tskTable.rows := i;

			tskTable.accessRow(i).height := 30;
			tskTable.accessCell(i,1).text := " "&currentTask.cTitle;
			if currentTask.myCategory = null then
				tskTable.accessCell(i,3).text := " Archived";
			else
				tskTable.accessCell(i,3).text := " "&currentTask.myCategory.cTitle;
			endif;
			
			tskTable.accessCell(i,4).text := " "&currentTask.dueDate.String;
			tskTable.accessCell(i,5).text := "";//put a button here
			tskTable.accessCell(i,6).text := "";//put a button here
			if today >= currentTask.dueDate then
					tskTable.accessCell(i,1).text := " "&currentTask.cTitle&" (Overdue)";
					tskTable.accessCell(i,1).foreColor := Red;
			endif;
			
			if currentTask.myTags.size > 0 then 
				count := 1;
				tagString := "";
				foreach tag in currentTask.myTags do
					if currentTask.myTags.size = count then
						commaString := "";
					else
						commaString := ", ";
					endif;
					tagString := tagString&tag.cTitle&commaString;
					count := count +1;
				endforeach;
				tskTable.accessCell(i,2).text :=tagString;
				
			
			endif;
			
			if currentTask.status = 1 then
			
			btnMarkComplete.getControl(9000+i).visible := true;
			btnMarkComplete.getControl(9000+i).tag :=  currentTask.cID.String;//The key to success 
			
				btnEditTask.getControl(18000+i).visible := true;
				btnEditTask.getControl(18000+i).tag :=  currentTask.cID.String;//The key to success 
				
			endif;
	
end;

}

tskTable_click
{
tskTable_click(table: Table input) updating;

vars

begin



end;

}

tskTable_queryRowColChg
{
tskTable_queryRowColChg(table: Table input; newSheet: Integer; newRow: Integer; newCol: Integer):Boolean updating;

vars



begin


return true;

end;

}

	)
