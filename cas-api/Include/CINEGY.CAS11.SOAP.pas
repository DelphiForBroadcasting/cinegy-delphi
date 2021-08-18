// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:8082/ICinegyDataAccessService?wsdl
//  >Import : http://localhost:8082/ICinegyDataAccessService?wsdl>0
//  >Import : http://freehand:8082/ICinegyDataAccessService?xsd=xsd0
//  >Import : http://freehand:8082/ICinegyDataAccessService?xsd=xsd2
//  >Import : http://freehand:8082/ICinegyDataAccessService?xsd=xsd1
//  >Import : http://freehand:8082/ICinegyDataAccessService?xsd=xsd3
//  >Import : http://freehand:8082/ICinegyDataAccessService?xsd=xsd5
//  >Import : http://freehand:8082/ICinegyDataAccessService?xsd=xsd6
//  >Import : http://freehand:8082/ICinegyDataAccessService?xsd=xsd7
//  >Import : http://freehand:8082/ICinegyDataAccessService?xsd=xsd4
// Encoding : utf-8
// Version  : 1.0
// (31.03.2018 17:10:58 - - $Rev: 90173 $)
// ************************************************************************ //

unit CINEGY.CAS11.SOAP;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:unsignedInt     - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:anyType         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  GetRecentNodesMessageRequest = class;         { "http://tempuri.org/"[Lit][GblElm] }
  SearchMessageRequest = class;                 { "http://tempuri.org/"[Lit][GblElm] }
  SearchListMessageRequest = class;             { "http://tempuri.org/"[Lit][GblElm] }
  SearchPagerListMessageRequest = class;        { "http://tempuri.org/"[Lit][GblElm] }
  Search2MessageRequest = class;                { "http://tempuri.org/"[Lit][GblElm] }
  DisconnectMessageRequest = class;             { "http://tempuri.org/"[Lit][GblElm] }
  BaseMessageRequest   = class;                 { "http://tempuri.org/"[Lit][GblElm] }
  UpdateUnsubscribeRequest = class;             { "http://tempuri.org/"[Lit][GblElm] }
  GetSessionsCountRequest = class;              { "http://tempuri.org/"[Lit][GblElm] }
  UpdateSubscribeRequest = class;               { "http://tempuri.org/"[Lit][GblElm] }
  TVFormatInfoMessageRequest = class;           { "http://tempuri.org/"[Lit][GblElm] }
  GetMetadataMessageRequest = class;            { "http://tempuri.org/"[Lit][GblElm] }
  GetAsyncCommandResultRequest = class;         { "http://tempuri.org/"[Lit][GblElm] }
  GetAsyncCommandsResultRequest = class;        { "http://tempuri.org/"[Lit][GblElm] }
  ExecuteCommandsMessageRequest = class;        { "http://tempuri.org/"[Lit][GblElm] }
  WriteLogMessageRequest = class;               { "http://tempuri.org/"[Lit][GblElm] }
  JobCreationInfoMessageRequest = class;        { "http://tempuri.org/"[Lit][GblElm] }
  GetWorkflowStepsMessageRequest = class;       { "http://tempuri.org/"[Lit][GblElm] }
  GetEditorsMessageRequest = class;             { "http://tempuri.org/"[Lit][GblElm] }
  SlaveDatabasesMessageRequest = class;         { "http://tempuri.org/"[Lit][GblElm] }
  GetStoryTypesMessageRequest = class;          { "http://tempuri.org/"[Lit][GblElm] }
  EnumExportPluginsMessageRequest = class;      { "http://tempuri.org/"[Lit][GblElm] }
  GetMediaGroupMessageRequest = class;          { "http://tempuri.org/"[Lit][GblElm] }
  GetJobProcessorGroupsMessageRequest = class;   { "http://tempuri.org/"[Lit][GblElm] }
  GetFileSetMessageRequest = class;             { "http://tempuri.org/"[Lit][GblElm] }
  SetMetadataMessageRequest = class;            { "http://tempuri.org/"[Lit][GblElm] }
  GetExtraDataMessageRequest = class;           { "http://tempuri.org/"[Lit][GblElm] }
  GetPathForNodeRequest = class;                { "http://tempuri.org/"[Lit][GblElm] }
  DeleteNodeMessageRequest = class;             { "http://tempuri.org/"[Lit][GblElm] }
  RestoreNodeMessageRequest = class;            { "http://tempuri.org/"[Lit][GblElm] }
  SetPropertyMessageRequest = class;            { "http://tempuri.org/"[Lit][GblElm] }
  SetPropertiesMessageRequest = class;          { "http://tempuri.org/"[Lit][GblElm] }
  MpegProfilesMessageRequest = class;           { "http://tempuri.org/"[Lit][GblElm] }
  GetMetadataTemplatesMessageRequest = class;   { "http://tempuri.org/"[Lit][GblElm] }
  GetPresentersMessageRequest = class;          { "http://tempuri.org/"[Lit][GblElm] }
  MosObjectsMessageRequest = class;             { "http://tempuri.org/"[Lit][GblElm] }
  ConnectionInfoMessageRequest = class;         { "http://tempuri.org/"[Lit][GblElm] }
  GetMappingTypesMessageRequest = class;        { "http://tempuri.org/"[Lit][GblElm] }
  SearchResult2        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ReorderNodesMessageRequest = class;           { "http://tempuri.org/"[Lit][GblElm] }
  PropertyObjectBase2  = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  PropertyObjectBase   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  GlobalParameterObjects2 = class;              { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  GlobalParameterObjects = class;               { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  SearchNodesListResult2 = class;               { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  Search2Result2       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  SubTypeObjects2      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  TVFormatObjects2     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  SubTypeInfoMessageRequest = class;            { "http://tempuri.org/"[Lit][GblElm] }
  NodeUnlockMessageRequest = class;             { "http://tempuri.org/"[Lit][GblElm] }
  NodeLockMessageRequest = class;               { "http://tempuri.org/"[Lit][GblElm] }
  GetNodesCountMessageRequest = class;          { "http://tempuri.org/"[Lit][GblElm] }
  GetClipsByRollMessageRequest = class;         { "http://tempuri.org/"[Lit][GblElm] }
  GetClipsByMogMessageRequest = class;          { "http://tempuri.org/"[Lit][GblElm] }
  NodeIDMessageRequest = class;                 { "http://tempuri.org/"[Lit][GblElm] }
  GetChildrenMessageRequest = class;            { "http://tempuri.org/"[Lit][GblElm] }
  GetNodeMessageRequest = class;                { "http://tempuri.org/"[Lit][GblElm] }
  GetChildrenMessageRequestEx = class;          { "http://tempuri.org/"[Lit][GblElm] }
  GetNodeMessageRequestEx = class;              { "http://tempuri.org/"[Lit][GblElm] }
  BaseUpdate2          = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MetadataUpdate2      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MetadataUpdate       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  OrderUpdate2         = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  OrderUpdate          = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  ChildrenDeletedUpdate2 = class;               { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  FieldUpdate2         = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ThumbnailUpdate2     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ThumbnailUpdate      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  GlobalParametrUpdate2 = class;                { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  GlobalParametrUpdate = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  RollUnlockUpdate2    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  RollUnlockUpdate     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  UnlockUpdate2        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  UnlockUpdate         = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  NewsAddedUpdate2     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  NewsAddedUpdate      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  ChildrenInsertedUpdate2 = class;              { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  JoinMogsMessageRequest = class;               { "http://tempuri.org/"[Lit][GblElm] }
  CopyNodeMessageRequest = class;               { "http://tempuri.org/"[Lit][GblElm] }
  MoveNodeMessageRequest = class;               { "http://tempuri.org/"[Lit][GblElm] }
  CreateJobMessageRequest = class;              { "http://tempuri.org/"[Lit][GblElm] }
  CreateSubClipMessageRequest = class;          { "http://tempuri.org/"[Lit][GblElm] }
  AsyncCopyNodeMessageRequest = class;          { "http://tempuri.org/"[Lit][GblElm] }
  SplitMogMessageRequest = class;               { "http://tempuri.org/"[Lit][GblElm] }
  Keyframe2            = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  SearchListResult2    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ChangeDeleteUpdate2  = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ChangeDeleteUpdate   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  GetChildrenPageMessageRequest = class;        { "http://tempuri.org/"[Lit][GblElm] }
  HeartBeatMessageRequest = class;              { "http://tempuri.org/"[Lit][GblElm] }
  TagsCloudMessageRequest = class;              { "http://tempuri.org/"[Lit][GblElm] }
  GetAllNewsMessageRequest = class;             { "http://tempuri.org/"[Lit][GblElm] }
  GetBreakingNewsRequest = class;               { "http://tempuri.org/"[Lit][GblElm] }
  GetRollsByStatusMessageRequest = class;       { "http://tempuri.org/"[Lit][GblElm] }
  GetJobProcessorGroupMessageRequest = class;   { "http://tempuri.org/"[Lit][GblElm] }
  SubTypeRelationsMessageRequest = class;       { "http://tempuri.org/"[Lit][GblElm] }
  SubTypeRelationsParentsMessageRequest = class;   { "http://tempuri.org/"[Lit][GblElm] }
  ColorMessageRequest  = class;                 { "http://tempuri.org/"[Lit][GblElm] }
  GetUpdatesRequest    = class;                 { "http://tempuri.org/"[Lit][GblElm] }
  PredefinedPropertyObject2 = class;            { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  PropertyObject2      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  PropertyObject       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  GetSpecialNodeMessageRequest = class;         { "http://tempuri.org/"[Lit][GblElm] }
  CreateNodeMessageRequest = class;             { "http://tempuri.org/"[Lit][GblElm] }
  SubTypeObject2       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  TVFormatObject2      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  Search2Parameters2   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  GetRecentNodesParameters2 = class;            { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  SearchPagerParameters2 = class;               { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  GlobalParameter2     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  GlobalParameter      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  LockUpdate2          = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  LockUpdate           = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  RenameUpdate2        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MetadataObject2      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  SearchParameters2    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  GetMappingTypeMessageRequest = class;         { "http://tempuri.org/"[Lit][GblElm] }
  GetMappingTypeMessageResponse = class;        { "http://tempuri.org/"[Lit][GblElm] }
  DeleteMappingMessageResponse = class;         { "http://tempuri.org/"[Lit][GblElm] }
  SetMappingMessageResponse = class;            { "http://tempuri.org/"[Lit][GblElm] }
  DeleteMappingMessageRequest = class;          { "http://tempuri.org/"[Lit][GblElm] }
  DeleteMappingTypeMessageResponse = class;     { "http://tempuri.org/"[Lit][GblElm] }
  DeleteMappingTypeMessageRequest = class;      { "http://tempuri.org/"[Lit][GblElm] }
  SetMappingTypeMessageRequest = class;         { "http://tempuri.org/"[Lit][GblElm] }
  SetMappingTypeMessageResponse = class;        { "http://tempuri.org/"[Lit][GblElm] }
  PluginDescriptorMessageRequest = class;       { "http://tempuri.org/"[Lit][GblElm] }
  PluginDescriptorMessageResponse = class;      { "http://tempuri.org/"[Lit][GblElm] }
  ConnectionInfoMessageResponse = class;        { "http://tempuri.org/"[Lit][GblElm] }
  GetProfileMessageResponse = class;            { "http://tempuri.org/"[Lit][GblElm] }
  GetMappingMessageResponse = class;            { "http://tempuri.org/"[Lit][GblElm] }
  SetMappingMessageRequest = class;             { "http://tempuri.org/"[Lit][GblElm] }
  GetMappingMessageRequest = class;             { "http://tempuri.org/"[Lit][GblElm] }
  MosObjectsMessageResponse = class;            { "http://tempuri.org/"[Lit][GblElm] }
  GetMappingTypesMessageResponse = class;       { "http://tempuri.org/"[Lit][GblElm] }
  SplitMogMessageResponse = class;              { "http://tempuri.org/"[Lit][GblElm] }
  ReorderNodesMessageResponse = class;          { "http://tempuri.org/"[Lit][GblElm] }
  GetPresentersMessageResponse = class;         { "http://tempuri.org/"[Lit][GblElm] }
  GetPresenterMessageResponse = class;          { "http://tempuri.org/"[Lit][GblElm] }
  JoinMogsMessageResponse = class;              { "http://tempuri.org/"[Lit][GblElm] }
  GetPresenterMessageRequest = class;           { "http://tempuri.org/"[Lit][GblElm] }
  GetParentByTypeMessageResponse = class;       { "http://tempuri.org/"[Lit][GblElm] }
  GetSpecialNodeMessageResponse = class;        { "http://tempuri.org/"[Lit][GblElm] }
  MpegProfilesMessageResponse = class;          { "http://tempuri.org/"[Lit][GblElm] }
  SetUserProfileMessageResponse = class;        { "http://tempuri.org/"[Lit][GblElm] }
  GetMetadataTemplatesMessageResponse = class;   { "http://tempuri.org/"[Lit][GblElm] }
  SetUserProfileMessageRequest = class;         { "http://tempuri.org/"[Lit][GblElm] }
  GetProfileMessageRequest = class;             { "http://tempuri.org/"[Lit][GblElm] }
  SetPropertiesMessageResponse = class;         { "http://tempuri.org/"[Lit][GblElm] }
  SetPropertyMessageResponse = class;           { "http://tempuri.org/"[Lit][GblElm] }
  CreateNodeByNodeMessageResponse = class;      { "http://tempuri.org/"[Lit][GblElm] }
  MoveNodeMessageResponse = class;              { "http://tempuri.org/"[Lit][GblElm] }
  CopyNodeMessageResponse = class;              { "http://tempuri.org/"[Lit][GblElm] }
  DeleteNodeMessageResponse = class;            { "http://tempuri.org/"[Lit][GblElm] }
  CreateNodeMessageResponse = class;            { "http://tempuri.org/"[Lit][GblElm] }
  GetPathForNodeResponse = class;               { "http://tempuri.org/"[Lit][GblElm] }
  RenameNodeMessageResponse = class;            { "http://tempuri.org/"[Lit][GblElm] }
  RestoreNodeMessageResponse = class;           { "http://tempuri.org/"[Lit][GblElm] }
  RenameNodeMessageRequest = class;             { "http://tempuri.org/"[Lit][GblElm] }
  GetHubUrlMessageResponse = class;             { "http://tempuri.org/"[Lit][GblElm] }
  NodeUnlockMessageResponse = class;            { "http://tempuri.org/"[Lit][GblElm] }
  NodeLockMessageResponse = class;              { "http://tempuri.org/"[Lit][GblElm] }
  IsHasChildrenMessageResponse = class;         { "http://tempuri.org/"[Lit][GblElm] }
  GetChildrenPageMessageResponse = class;       { "http://tempuri.org/"[Lit][GblElm] }
  GetNodesCountMessageResponse = class;         { "http://tempuri.org/"[Lit][GblElm] }
  CreateJobMessageResponse = class;             { "http://tempuri.org/"[Lit][GblElm] }
  AddNodeTagMessageRequest = class;             { "http://tempuri.org/"[Lit][GblElm] }
  HeartBeatMessageResponse = class;             { "http://tempuri.org/"[Lit][GblElm] }
  TagsCloudMessageResponse = class;             { "http://tempuri.org/"[Lit][GblElm] }
  RemoveNodeTagMessageResponse = class;         { "http://tempuri.org/"[Lit][GblElm] }
  AddNodeTagMessageResponse = class;            { "http://tempuri.org/"[Lit][GblElm] }
  RemoveNodeTagMessageRequest = class;          { "http://tempuri.org/"[Lit][GblElm] }
  CreateSubClipMessageResponse = class;         { "http://tempuri.org/"[Lit][GblElm] }
  GetNodeIDsByTypeMessageResponse = class;      { "http://tempuri.org/"[Lit][GblElm] }
  GetAllNewsMessageResponse = class;            { "http://tempuri.org/"[Lit][GblElm] }
  GetExtraDataMessageResponse = class;          { "http://tempuri.org/"[Lit][GblElm] }
  GetBreakingNewsResponse = class;              { "http://tempuri.org/"[Lit][GblElm] }
  GetNodesCountMessageResponseEx = class;       { "http://tempuri.org/"[Lit][GblElm] }
  GetMediaGroupMessageResponse = class;         { "http://tempuri.org/"[Lit][GblElm] }
  SetMetadataMessageResponse = class;           { "http://tempuri.org/"[Lit][GblElm] }
  GetNextJobMessageRequest = class;             { "http://tempuri.org/"[Lit][GblElm] }
  GetNextJobMessageResponse = class;            { "http://tempuri.org/"[Lit][GblElm] }
  GetParentByTypesMessageResponse = class;      { "http://tempuri.org/"[Lit][GblElm] }
  GetClipsByRollMessageResponse = class;        { "http://tempuri.org/"[Lit][GblElm] }
  WCFServiceFault2     = class;                 { "http://schemas.datacontract.org/2004/07/CinegyServer"[GblCplx] }
  WCFServiceFault      = class;                 { "http://schemas.datacontract.org/2004/07/CinegyServer"[Flt][GblElm] }
  GetFileSetMessageResponse = class;            { "http://tempuri.org/"[Lit][GblElm] }
  GetRollsByStatusMessageResponse = class;      { "http://tempuri.org/"[Lit][GblElm] }
  GetJobProcessorGroupMessageResponse = class;   { "http://tempuri.org/"[Lit][GblElm] }
  GetJobProcessorGroupsMessageResponse = class;   { "http://tempuri.org/"[Lit][GblElm] }
  GetClipsByMogMessageResponse = class;         { "http://tempuri.org/"[Lit][GblElm] }
  SetPropertiesByNameMessageResponse = class;   { "http://tempuri.org/"[Lit][GblElm] }
  ExportMessageRequest = class;                 { "http://tempuri.org/"[Lit][GblElm] }
  GetStoryTypesMessageResponse = class;         { "http://tempuri.org/"[Lit][GblElm] }
  SlaveDatabasesMessageResponse = class;        { "http://tempuri.org/"[Lit][GblElm] }
  GetNodesByTypeMessageResponse = class;        { "http://tempuri.org/"[Lit][GblElm] }
  ExportMessageResponse = class;                { "http://tempuri.org/"[Lit][GblElm] }
  GetEditorsMessageResponse = class;            { "http://tempuri.org/"[Lit][GblElm] }
  GetWorkflowStepMessageRequest = class;        { "http://tempuri.org/"[Lit][GblElm] }
  GetEditorMessageRequest = class;              { "http://tempuri.org/"[Lit][GblElm] }
  GetEditorMessageResponse = class;             { "http://tempuri.org/"[Lit][GblElm] }
  GetStoryTypeMessageRequest = class;           { "http://tempuri.org/"[Lit][GblElm] }
  GetStoryTypeMessageResponse = class;          { "http://tempuri.org/"[Lit][GblElm] }
  GetWorkflowStepsMessageResponse = class;      { "http://tempuri.org/"[Lit][GblElm] }
  GetWorkflowStepMessageResponse = class;       { "http://tempuri.org/"[Lit][GblElm] }
  WriteLogMessageResponse = class;              { "http://tempuri.org/"[Lit][GblElm] }
  AsyncCopyNodeMessageResponse = class;         { "http://tempuri.org/"[Lit][GblElm] }
  GetFilesPathMessageResponseEx = class;        { "http://tempuri.org/"[Lit][GblElm] }
  JobCreationInfoMessageResponse = class;       { "http://tempuri.org/"[Lit][GblElm] }
  NodesByFieldMessageResponse = class;          { "http://tempuri.org/"[Lit][GblElm] }
  NodesByFieldsMessageResponse = class;         { "http://tempuri.org/"[Lit][GblElm] }
  GetAsyncCommandResultResponse = class;        { "http://tempuri.org/"[Lit][GblElm] }
  ExecuteCommandsMessageResponse = class;       { "http://tempuri.org/"[Lit][GblElm] }
  GetFilesPathMessageResponse = class;          { "http://tempuri.org/"[Lit][GblElm] }
  TVFormatInfoMessageResponse = class;          { "http://tempuri.org/"[Lit][GblElm] }
  GetMetadataMessageResponse = class;           { "http://tempuri.org/"[Lit][GblElm] }
  GetJobsMessageResponse = class;               { "http://tempuri.org/"[Lit][GblElm] }
  SubTypeInfoMessageResponse = class;           { "http://tempuri.org/"[Lit][GblElm] }
  ColorMessageResponse = class;                 { "http://tempuri.org/"[Lit][GblElm] }
  GetSessionsCountResponse = class;             { "http://tempuri.org/"[Lit][GblElm] }
  LogTemplateMessageRequest = class;            { "http://tempuri.org/"[Lit][GblElm] }
  UserActionsMessageResponse = class;           { "http://tempuri.org/"[Lit][GblElm] }
  UserActionsMessageRequest = class;            { "http://tempuri.org/"[Lit][GblElm] }
  LogTemplateMessageResponse = class;           { "http://tempuri.org/"[Lit][GblElm] }
  UpdateUnsubscribeResponse = class;            { "http://tempuri.org/"[Lit][GblElm] }
  UpdateSubscribeResponse = class;              { "http://tempuri.org/"[Lit][GblElm] }
  GPMessageResponse    = class;                 { "http://tempuri.org/"[Lit][GblElm] }
  GPMessageRequest     = class;                 { "http://tempuri.org/"[Lit][GblElm] }
  GetUpdatesResponse   = class;                 { "http://tempuri.org/"[Lit][GblElm] }
  NodeChildrenIDsMessageResponse = class;       { "http://tempuri.org/"[Lit][GblElm] }
  NodeMessageResponse  = class;                 { "http://tempuri.org/"[Lit][GblElm] }
  NodeChildrenMessageResponse = class;          { "http://tempuri.org/"[Lit][GblElm] }
  DisconnectMessageResponse = class;            { "http://tempuri.org/"[Lit][GblElm] }
  ConnectMessageResponse = class;               { "http://tempuri.org/"[Lit][GblElm] }
  SearchNewsMessageRequest = class;             { "http://tempuri.org/"[Lit][GblElm] }
  SearchNewsListMessageResponse = class;        { "http://tempuri.org/"[Lit][GblElm] }
  Search2MessageResponse = class;               { "http://tempuri.org/"[Lit][GblElm] }
  SearchListMessageResponse = class;            { "http://tempuri.org/"[Lit][GblElm] }
  SearchMessageResponse = class;                { "http://tempuri.org/"[Lit][GblElm] }
  GetNodeMessageResponse = class;               { "http://tempuri.org/"[Lit][GblElm] }
  ConnectContext2      = class;                 { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblCplx] }
  ConnectContext       = class;                 { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblElm] }
  GetFilesPathMessageRequestEx = class;         { "http://tempuri.org/"[Lit][GblElm] }
  GetFilesPathMessageRequest = class;           { "http://tempuri.org/"[Lit][GblElm] }
  ConnectMessageRequest = class;                { "http://tempuri.org/"[Lit][GblElm] }
  GetParentByTypeMessageRequest = class;        { "http://tempuri.org/"[Lit][GblElm] }
  CreateNodeByNodeMessageRequest = class;       { "http://tempuri.org/"[Lit][GblElm] }
  IsHasChildrenMessageRequest = class;          { "http://tempuri.org/"[Lit][GblElm] }
  GetNodeIDsByTypeMessageRequest = class;       { "http://tempuri.org/"[Lit][GblElm] }
  GetNodesCountMessageRequestEx = class;        { "http://tempuri.org/"[Lit][GblElm] }
  GetNodesByTypeMessageRequest = class;         { "http://tempuri.org/"[Lit][GblElm] }
  NodesByFieldsMessageRequest = class;          { "http://tempuri.org/"[Lit][GblElm] }
  DescriptorsMessageRequestEx = class;          { "http://tempuri.org/"[Lit][GblElm] }
  NodesByFieldMessageRequest = class;           { "http://tempuri.org/"[Lit][GblElm] }
  DescriptorsMessageRequest = class;            { "http://tempuri.org/"[Lit][GblElm] }
  NODEID2              = class;                 { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblCplx] }
  NODEID               = class;                 { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblElm] }
  GetParentByTypesMessageRequest = class;       { "http://tempuri.org/"[Lit][GblElm] }
  GetJobsMessageRequest = class;                { "http://tempuri.org/"[Lit][GblElm] }
  DescriptorsMessageResponse = class;           { "http://tempuri.org/"[Lit][GblElm] }
  DescriptorBase2      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  Presets2             = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  Descriptor2          = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  DescriptorGroup2     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  NodeBase2            = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  Node2                = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  GraphicNode2         = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  TitlerNode2          = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  EmptyClipNode2       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  LabelNode2           = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  DocumentNode2        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  TrackNode2           = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ScriptTrackNode2     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  AudioTrackNode2      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  VideoTrackNode2      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  LayerNode2           = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  EffectNode2          = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  SearchQueryNode2     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MosNode2             = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  StoryRundownNode2    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  TextFeedNode2        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  RundownNode2         = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  DayTemplateNode2     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  OradCommonNode2      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  OradDdrItemNode2     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  OradAudioItemNode2   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  OradRundownNode2     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  OradExternalItemNode2 = class;                { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  OradTickerItemNode2  = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  OradTickerNode2      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  OradPageNode2        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  OradGraphicItemNode2 = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  OradDatasetNode2     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  OradSceneNode2       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  Orad3DPlayNode2      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  OradTransitionNode2  = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  OradDatalinkNode2    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  OradDataqueryNode2   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ExtEventNode2        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  EffectExNode2        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  JobDropFolderNode2   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  JobNode2             = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  LiveClipNode2        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ScriptClipNode2      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  JobSubjectNode2      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  RefNode2             = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ClipBinNode2         = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MetadataSetObject2   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  JobCreationInfoObject2 = class;               { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  JobCreationInfoObject = class;                { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  EnumExportPluginsMessageResponse = class;     { "http://tempuri.org/"[Lit][GblElm] }
  SubTypeRelationsParentsMessageResponse = class;   { "http://tempuri.org/"[Lit][GblElm] }
  SubTypeRelationsMessageResponse = class;      { "http://tempuri.org/"[Lit][GblElm] }
  KeyValueOfJOB_FOLDER_TYPEJobCreationInfoObject_SRNRwcyb = class;   { "http://schemas.microsoft.com/2003/10/Serialization/Arrays"[Cplx] }
  BinNode2             = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MogClipFields2       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MixObjext2           = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  SequenceNode2        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MultiClipNode2       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ClipNode2            = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MogNode2             = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  FileDescObject2      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  FileSetObject2       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  EffectNode           = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  TitlerNode           = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  EffectExNode         = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  Keyframe             = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  GraphicNode          = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  ScriptTrackNode      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  AudioTrackNode       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  LabelNode            = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  EmptyClipNode        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  JobDropFolderNode    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  StoryRundownNode     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  ExtEventNode         = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  SearchQueryNode      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  TextFeedNode         = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  ScriptClipNode       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  JobSubjectNode       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  JobNode              = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  LiveClipNode         = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  RefNode              = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  ClipNode             = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  FileDescObject       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MogClipFields        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MixObjext            = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  FileSetObject        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  ClipBinNode          = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  NodeBase             = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MogNode              = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  BinNode              = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MultiClipNode        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  LayerNode            = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  DescriptorGroup      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  VideoTrackNode       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  TrackNode            = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  Descriptor           = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  DocumentNode         = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  SequenceNode         = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  DescriptorBase       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  Presets              = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  SearchNodesListResult = class;                { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  Search2Parameters    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  SearchPagerParameters = class;                { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  SearchListResult     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  Search2Result        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  SearchParameters     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MetadataObject       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  GetRecentNodesParameters = class;             { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  SearchResult         = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  SubTypeObjects       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  RenameUpdate         = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  ChildrenDeletedUpdate = class;                { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  PredefinedPropertyObject = class;             { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  FieldUpdate          = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  ChildrenInsertedUpdate = class;               { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  TVFormatObjects      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  SubTypeObject        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  BaseUpdate           = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  TVFormatObject       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  OradPageNode         = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  OradDataqueryNode    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  OradDatasetNode      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  OradTickerNode       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  OradDatalinkNode     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  RundownNode          = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MosNode              = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  OradCommonNode       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  DayTemplateNode      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  OradGraphicItemNode  = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  OradTransitionNode   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  OradSceneNode        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MetadataSetObject    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  Orad3DPlayNode       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  OradRundownNode      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  OradAudioItemNode    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  OradTickerItemNode   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  OradExternalItemNode = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  OradDdrItemNode      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  Node                 = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MpegProfileObject2   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MpegProfileObject    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MpegProfile_TVFormatObjects2 = class;         { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MpegProfile_TVFormatObjects = class;          { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MpegProfileSetObject2 = class;                { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MpegProfileSetObject = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MetadataTemplate2    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MetadataTemplate     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MetadataTemplateSetObject2 = class;           { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MetadataTemplateSetObject = class;            { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MpegProfile_TVFormatObject2 = class;          { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MpegProfile_TVFormatObject = class;           { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  WorkflowStepObject2  = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  WorkflowStepObject   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  WorkflowStepObjects2 = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  WorkflowStepObjects  = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  EditorObjects2       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  EditorObjects        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  PresenterObject2     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  PresenterObject      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  EditorObject2        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  EditorObject         = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  PresenterObjects2    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  PresenterObjects     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  UserActionObjects2   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  UserActionObjects    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  UserAction2          = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  UserAction           = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  LogTemplate2         = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  LogTemplate          = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  ColorParameter2      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ColorParameter       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  ColorParameterObjects2 = class;               { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ColorParameterObjects = class;                { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  LogTemplateObjects2  = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  LogTemplateObjects   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  PropertySetObject2   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  PropertySetObject    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MappingObject2       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MappingObject        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MosObject2           = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MosObject            = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MappingTypeObjects2  = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MappingTypeObjects   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MappingTypeObject2   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MappingTypeObject    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  TagsCloudObject2     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  TagsCloudObject      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MosObjects2          = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MosObjects           = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  Tag2                 = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  Tag                  = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  AsyncCommandContext2 = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  AsyncCommandContext  = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  GetAsyncCommandsResultResponse = class;       { "http://tempuri.org/"[Lit][GblElm] }
  AsyncCommandResult2  = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  AsyncCommandResult   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  LogData2             = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  LogData              = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  JobProcessorGroupObject2 = class;             { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  JobProcessorGroupObject = class;              { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  PropertyObjectByName2 = class;                { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  PropertyObjectByName = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  SetPropertiesByNameMessageRequest = class;    { "http://tempuri.org/"[Lit][GblElm] }
  JobProcessorGroupObjects2 = class;            { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  JobProcessorGroupObjects = class;             { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  JobCreationInfoObjects2 = class;              { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  JobCreationInfoObjects = class;               { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MediaGroupObject2    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MediaGroupObject     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MediaGroupObjects2   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MediaGroupObjects    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  SlaveDatabaseObject2 = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  SlaveDatabaseObject  = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  CommandsChain2       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  CommandsChain        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  StoryTypeObject2     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  StoryTypeObject      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  SlaveDatabaseObjects2 = class;                { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  SlaveDatabaseObjects = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  StoryTypeObjects2    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  StoryTypeObjects     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  BaseCommand2         = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  BaseCommand          = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  RemoveTagCommand2    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  RemoveTagCommand     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  LockNodeCommand2     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  LockNodeCommand      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  CreateJobCommand2    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  CreateJobCommand     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  AddTagCommand2       = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  AddTagCommand        = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  UnlockNodeCommand2   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  UnlockNodeCommand    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  CopyNodeCommand2     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  CopyNodeCommand      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  SetPropertiesCommand2 = class;                { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  SetPropertiesCommand = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  CreateNodeByNodeCommand2 = class;             { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  CreateNodeByNodeCommand = class;              { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  MoveNodeCommand2     = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  MoveNodeCommand      = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  SetPropertyCommand2  = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  SetPropertyCommand   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  DeleteNodeCommand2   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  DeleteNodeCommand    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  CreateNodeCommand2   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  CreateNodeCommand    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  RenameNodeCommand2   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  RenameNodeCommand    = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }
  RestoreNodeCommand2  = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  RestoreNodeCommand   = class;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblElm] }

  {$SCOPEDENUMS ON}
  { "http://schemas.datacontract.org/2004/07/CinegyCommon"[GblSmpl] }
  LAYERTYPE = (None, Video, Audio, Super, Still, Script, ExtEvent, AudioOutput);

  { "http://schemas.datacontract.org/2004/07/CinegyCommon"[GblSmpl] }
  SEQUENCE_TYPE = (ST_NORMAL, ST_STORY);

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  DESCRIPTOR_EXTRA_TYPE = (NONE, EXIF, IPTC);

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  DESCRIPTOR_TYPE = (NONE, PREDEFINED, System_, METADATA);

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  PROPERTY_NUM = (
      NONE, 
      NAME_, 
      START, 
      DURATION, 
      IN_, 
      OUT_, 
      TAPE_IN, 
      TAPE_OUT, 
      ASPECT_RATIO, 
      LETTER_BOX, 
      TVFORMAT, 
      ISARCHIVE, 
      FLAGS, 
      VIDEO, 
      AUDIO1, 
      AUDIO_FIRST, 
      AUDIO2, 
      AUDIO3, 
      AUDIO4, 
      COLOR, 
      COMMENT, 
      TARGET_ASPECT_RATIO, 
      FLIP_EFFECT, 
      LINKED_GROUP, 
      SPEED, 
      SPEED_DURATION, 
      AUDIO_CHANNELS, 
      ORIGINAL_TAPE_IN, 
      OFFSET, 
      ENTIRE, 
      A1_ALLOC, 
      A2_ALLOC, 
      A3_ALLOC, 
      A4_ALLOC, 
      RIGHTS, 
      DEFAULT_THUMBNAIL, 
      USER_THUMBNAIL, 
      DATA_TEXT, 
      DOCUMENT_URL, 
      DOCUMENT_SHARE, 
      DESCRIPTION, 
      SYNC_POINT, 
      V_MASTER_ID, 
      A_MASTER_ID, 
      GRID_H, 
      GRID_V, 
      SYNC_TYPE, 
      SCRIPT, 
      SOURCE_ID, 
      PRESENTER_ID, 
      COMMAND, 
      TEXT_FEED_HASH, 
      RUNDOWN_ID, 
      JOB_STATUS, 
      JOB_DISABLED, 
      JOB_TYPE, 
      JOB_DATA, 
      JOB_SUBJECT_REFNODE, 
      JOB_FOLDER_JPGROUP, 
      JOB_FOLDER_SETTINGS, 
      JOB_FOLDER_SCRIPT, 
      EFFECTEX_PARAMS, 
      SEARCH_QUERY, 
      MOS_OBJ, 
      MOS_TYPE, 
      MOS_ID, 
      VERSION, 
      DEFAULT_TRACK, 
      PRIORITY, 
      SEQUENCE_TYPE, 
      FILESET, 
      MIX, 
      CREATION_DATE, 
      MODIFICATION_DATE, 
      OWNER, 
      LOCKER, 
      A5_ALLOC, 
      A6_ALLOC, 
      A7_ALLOC, 
      A8_ALLOC, 
      A9_ALLOC, 
      A10_ALLOC, 
      A11_ALLOC, 
      A12_ALLOC, 
      A13_ALLOC, 
      A14_ALLOC, 
      A15_ALLOC, 
      A16_ALLOC, 
      AUDIO5, 
      AUDIO6, 
      AUDIO7, 
      AUDIO8, 
      AUDIO9, 
      AUDIO10, 
      AUDIO11, 
      AUDIO12, 
      AUDIO13, 
      AUDIO14, 
      AUDIO15, 
      AUDIO16, 
      AUDIO_LAST, 
      AUDIO_TYPE, 
      AUDIO_EXTRA_DATA, 
      DAY_DATE, 
      DAY_START, 
      DAY_DURATION, 
      DAY_FLAGS, 
      EFFECT_KEYFRAMES, 
      AUDIO_TRACK_TYPE, 
      AUDIO_OUTPUT_TRACK_TYPE, 
      AUDIO_OUTPUT_TRACK_ID, 
      EDITOR_ID, 
      WORKFLOW_STEP_ID, 
      REAL_START_TIME, 
      PLAYBACK_STATUS, 
      STORY_TYPE, 
      ONAIR, 
      REAL_DURATION, 
      LINKED_NODE, 
      EXTRA_NODE_DATA, 
      CLIP_MASTER_ID, 
      FIRST_METADATA, 
      INGEST_CLIP_NO, 
      INGEST_DATE, 
      INGEST_OPERATOR, 
      RUSHES_ROLL_NUMBER, 
      NEWS_DESCRIPTION, 
      NEWS_TEXTBODY, 
      NEWS_TIME, 
      NEWS_AGENCY, 
      NEWS_COPYRIGHT, 
      NEWS_CATEGORY, 
      NEWS_LANGUAGE, 
      NEWS_AUTHOR, 
      NEWS_SOURCE, 
      NEWS_LINKS, 
      SCHEDULED_DURATION, 
      WORKFLOW_STATUS, 
      VIDEO_EDITOR_APPROVED, 
      TEXT_EDITOR_APPROVED, 
      CHIEF_EDITOR_APPROVED, 
      FOLDER_DATE, 
      SUBTITLE_ID
  );

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  DESCRIPTOR_VALUE_TYPE = (NONE, STRING_, TEXT, PRESET, DATE, NUMERIC, BOOL, REAL, UNITS, TIMECODE);

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  UpdateActions = (
      Unknown, 
      ChildrenInserted, 
      ChildrenDeleted, 
      FieldUpdate, 
      Deleted, 
      OrderUpdate, 
      Lock, 
      ClipFieldUpdate, 
      AccessUpdate, 
      MetadatenUpdate, 
      RenameUpdate, 
      ThumbnailUpdate, 
      MogFieldUpdate, 
      Unlock, 
      MogClipFieldUpdate, 
      MogMetadatenUpdate, 
      ModificationDateUpdate, 
      ChangeDeleteUpdate, 
      GlobalParamsUpdate, 
      MogFilesUpdate, 
      RollUnlock, 
      NewsAdded, 
      BreakingNewsAdded
  );

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  TVFORMAT = (
      UNKNOWN, 
      NONE, 
      SDTV_4x3_25, 
      SDTV_16x9_25, 
      SDTV_16x9_2997, 
      SDTV_4x3_2997, 
      SDTV_16x9_30, 
      SDTV_4x3_30, 
      HDTV_16x9_25, 
      HDTV_16x9_2997, 
      HD720p_16x9_60, 
      HD720p_16x9_5994, 
      HDTV_16x9_23976p, 
      HDTV_16x9_24p, 
      HDTV_16x9_30, 
      HD720_16x9_50, 
      HDTV_1920x1080_25p, 
      HDTV_1920x1080_2997p, 
      HDTV_1920x1080_2997, 
      HDTV_720p_16x9_25, 
      HDTV_720p_16x9_30, 
      HDTV_720p_16x9_2997, 
      HD1080p_16x9_50, 
      HD1080p_16x9_5994, 
      HD1080p_16x9_60, 
      UHD2160p_16x9_25, 
      UHD2160p_16x9_30, 
      UHD2160p_16x9_2997, 
      UHD2160p_16x9_2397, 
      UHD2160p_16x9_24, 
      F2K1080p_17x9_2397, 
      F2K1080p_17x9_24, 
      F2K1080p_17x9_25, 
      F2K1080p_17x9_30, 
      F2K1080p_17x9_2997, 
      F2K1080p_17x9_50, 
      F2K1080p_17x9_60, 
      F2K1080p_17x9_5994, 
      F4K2160p_17x9_2397, 
      F4K2160p_17x9_24, 
      F4K2160p_17x9_25, 
      F4K2160p_17x9_30, 
      F4K2160p_17x9_2997, 
      F4K2160p_17x9_50, 
      F4K2160p_17x9_60, 
      F4K2160p_17x9_5994, 
      UHD2160p_16x9_50, 
      UHD2160p_16x9_60, 
      UHD2160p_16x9_5994
  );

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  OrderField = (ORDER, NAME_, DATE_CREATION, DATE_MODIFICATION);

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  GP_TYPE = (
      GP_BIGINT, 
      GP_BINARY, 
      GP_BIT, 
      GP_DATETIME, 
      GP_DECIMAL, 
      GP_FLOAT, 
      GP_INT, 
      GP_MONEY, 
      GP_NCHAR, 
      GP_NUMERIC, 
      GP_NVARCHAR, 
      GP_REAL, 
      GP_SMALLDATETIME, 
      GP_SMALLINT, 
      GP_SMALLMONEY, 
      GP_UNIQUEIDENTIFIER, 
      GP_VARBINARY, 
      GP_UNKNOWN
  );

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  BildType = (DEFAULT_, GIF, JPEG, PNG, BMP, TIFF, WMP);

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  LockType = (NONE, DATA, INGEST, EXCLUSIVE, FULL);

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  NodeFillingType = (MAIN, EXTENDED, WITH_METADATA, FULL);

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  GET_NODE_REQUEST_TYPE = (All, Deleted, NotDeleted);

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  ProfileType = (User, Global);

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  CreationStatus = (All, Days, Month, Years);

  { "http://schemas.datacontract.org/2004/07/CASInternalObjects"[GblSmpl] }
  WrapperType = (
      None, 
      MTSWrapper, 
      MTSWrapper2, 
      Reserved3, 
      Reserved4, 
      Reserved5, 
      Reserved6, 
      Reserved7, 
      Reserved8, 
      Reserved9, 
      Unknown
  );

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  ExperationStatus = (All, Expired, NotExpired);

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  SpecialNodes = (VoiceOver, PlayOutServer, PlayOutSourceBin, Collection, NewsFolder, NewswiresContainer);

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  MappingType = (Export_, Import);

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  MpegProfileType = (
      None, 
      Ingest, 
      Export_, 
      Seachange, 
      WMVIngest, 
      WMVExport, 
      DVBIngest, 
      NewsTicker, 
      H264Ingest, 
      H264Export, 
      MP4Ingest
  );

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  MetadataTemplateType = (None, Subtype, Ingest);

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  MAM_FILE_TYPES = (FT_VIDEO, FT_AUDIO, FT_AUX);

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  ConnectionType = (SQL, Trusted, Role, RemoteTrusted);

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  JOB_FOLDER_TYPE = (
      UNKNOWN, 
      AVID, 
      FCP, 
      WM9, 
      FILEIMPORT, 
      DOC_IMPORT, 
      QUALITY_BUILDER, 
      DMI_TRANSFER_TO_CRAFT, 
      DMI_IMPORT_FROM_CRAFT, 
      DMI_TRANSFER_TO_ARCHIVE, 
      FILEEXPORT, 
      DMI_TRANSFER_FROM_ARCHIVE, 
      DMI_DICOM_IMPORT, 
      MEDIA_CLEANING, 
      MULTIDATABASE_COPYING, 
      DOCUMENTS_EXPORT, 
      DOCUMENTS_IMPORT
  );

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  FileSetType = (PRIMARY, SECONDARY, ALL);

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  NODE_TYPE = (
      UNDEFINED, 
      ROOT, 
      FOLDER, 
      SEQUENCE, 
      BIN, 
      CLIPBIN, 
      DOCUMENTBIN, 
      CLIP, 
      MASTERCLIP, 
      DOCUMENT, 
      LAYER, 
      TRACK, 
      EMPTY_CLIP, 
      LABEL_, 
      GRAPHIC, 
      TITLER, 
      EFFECT, 
      EFFECT_EX, 
      JOB_DROP_FOLDER, 
      JOB, 
      JOB_SUBJECT, 
      MULTICLIP, 
      REF_NODE, 
      LIVE_CLIP, 
      SCRIPT_CLIP, 
      EXT_EVENT, 
      STORY_RUNDOWN, 
      TEXT_FEED, 
      SEARCH_QUERY, 
      MOS, 
      PLAYOUT_SERVER, 
      DAY_TEMPLATE, 
      RUNDOWN, 
      PLAYOUT_SOURCE_BIN, 
      ORAD_DATALINK, 
      ORAD_DATAQUERY, 
      ORAD_PAGE, 
      ORAD_TICKER, 
      ORAD_DATASET, 
      ORAD_GRAPHICITEM, 
      ORAD_TICKERITEM, 
      ORAD_AUDIOITEM, 
      ORAD_DDRITEM, 
      ORAD_EXTERNALITEM, 
      ORAD_RUNDOWN, 
      ORAD_SCENE, 
      ORAD_TRANSITION, 
      ORAD_3DPLAY
  );

  { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }
  JobStatus = (PENDING_FOR_APPROVAL, QUEUED, PROCESSING, WAIT_CONFIRMATION, COMPLETED, FAILED, CANCELLED, REJECTED);

  { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblSmpl] }
  VIDEO_TRACK = (Normal, Still, CG);

  { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblSmpl] }
  SCRIPT_TRACK = (Script, Cc1, Vo, Sot, Cg);

  { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblSmpl] }
  AudioTrackType = (None, Mono, Stereo, A5_1);

  { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblSmpl] }
  AUDIO_TRACK = (Normal, Nat, Sot, Vo);

  { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblSmpl] }
  ASYNC_COMMAND_STATUS = (Unknown, Wait, InProgress, Ready);

  { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblSmpl] }
  CommandType = (
      NONE, 
      CREATE_NODE, 
      DELETE_NODE, 
      RESTORE_NODE, 
      RENAME_NODE, 
      SET_PROPERTY, 
      SET_PROPERTIES, 
      COPY_NODE, 
      MOVE_NODE, 
      CREATE_NODE_BY_NODE, 
      CREATE_JOB, 
      LOCK_NODE, 
      UNLOCK_NODE, 
      ADD_TAG, 
      REMOVE_TAG
  );

  {$SCOPEDENUMS OFF}



  // ************************************************************************ //
  // XML       : GetRecentNodesMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetRecentNodesMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fsp: GetRecentNodesParameters2;
    Fsp_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setsp(Index: Integer; const AGetRecentNodesParameters2: GetRecentNodesParameters2);
    function  sp_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2            Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property sp:      GetRecentNodesParameters2  Index (IS_OPTN or IS_NLBL) read Fsp write Setsp stored sp_Specified;
  end;



  // ************************************************************************ //
  // XML       : SearchMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SearchMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fsp: SearchParameters2;
    Fsp_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setsp(Index: Integer; const ASearchParameters2: SearchParameters2);
    function  sp_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2    Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property sp:      SearchParameters2  Index (IS_OPTN or IS_NLBL) read Fsp write Setsp stored sp_Specified;
  end;



  // ************************************************************************ //
  // XML       : SearchListMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SearchListMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fsp: SearchParameters2;
    Fsp_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setsp(Index: Integer; const ASearchParameters2: SearchParameters2);
    function  sp_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2    Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property sp:      SearchParameters2  Index (IS_OPTN or IS_NLBL) read Fsp write Setsp stored sp_Specified;
  end;



  // ************************************************************************ //
  // XML       : SearchPagerListMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SearchPagerListMessageRequest = class(TRemotable)
  private
    FSp: SearchPagerParameters2;
    FSp_Specified: boolean;
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure SetSp(Index: Integer; const ASearchPagerParameters2: SearchPagerParameters2);
    function  Sp_Specified(Index: Integer): boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Sp:      SearchPagerParameters2  Index (IS_OPTN or IS_NLBL) read FSp write SetSp stored Sp_Specified;
    property context: ConnectContext2         Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : Search2MessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  Search2MessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fsp: Search2Parameters2;
    Fsp_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setsp(Index: Integer; const ASearch2Parameters2: Search2Parameters2);
    function  sp_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2     Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property sp:      Search2Parameters2  Index (IS_OPTN or IS_NLBL) read Fsp write Setsp stored sp_Specified;
  end;



  // ************************************************************************ //
  // XML       : DisconnectMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DisconnectMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : BaseMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  BaseMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : UpdateUnsubscribeRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateUnsubscribeRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetSessionsCountRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSessionsCountRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : UpdateSubscribeRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateSubscribeRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : TVFormatInfoMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TVFormatInfoMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetMetadataMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetMetadataMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:    NodeBase2        Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetAsyncCommandResultRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetAsyncCommandResultRequest = class(TRemotable)
  private
    FcommandContext: AsyncCommandContext2;
    FcommandContext_Specified: boolean;
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure SetcommandContext(Index: Integer; const AAsyncCommandContext2: AsyncCommandContext2);
    function  commandContext_Specified(Index: Integer): boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property commandContext: AsyncCommandContext2  Index (IS_OPTN or IS_NLBL) read FcommandContext write SetcommandContext stored commandContext_Specified;
    property context:        ConnectContext2       Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetAsyncCommandsResultRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetAsyncCommandsResultRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : ExecuteCommandsMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ExecuteCommandsMessageRequest = class(TRemotable)
  private
    Fcommands: CommandsChain2;
    Fcommands_Specified: boolean;
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcommands(Index: Integer; const ACommandsChain2: CommandsChain2);
    function  commands_Specified(Index: Integer): boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property commands: CommandsChain2   Index (IS_OPTN or IS_NLBL) read Fcommands write Setcommands stored commands_Specified;
    property context:  ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : WriteLogMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  WriteLogMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    FlogData: LogData2;
    FlogData_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure SetlogData(Index: Integer; const ALogData2: LogData2);
    function  logData_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property logData: LogData2         Index (IS_OPTN or IS_NLBL) read FlogData write SetlogData stored logData_Specified;
  end;



  // ************************************************************************ //
  // XML       : JobCreationInfoMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  JobCreationInfoMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetWorkflowStepsMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetWorkflowStepsMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetEditorsMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetEditorsMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : SlaveDatabasesMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SlaveDatabasesMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetStoryTypesMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetStoryTypesMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : EnumExportPluginsMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  EnumExportPluginsMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetMediaGroupMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetMediaGroupMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;

  ArrayOfNODEID = array of NODEID2;             { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblCplx] }


  // ************************************************************************ //
  // XML       : GetJobProcessorGroupsMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetJobProcessorGroupsMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetFileSetMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetFileSetMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:    NodeBase2        Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
  end;



  // ************************************************************************ //
  // XML       : SetMetadataMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetMetadataMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    Fmetadata: MetadataSetObject2;
    Fmetadata_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure Setmetadata(Index: Integer; const AMetadataSetObject2: MetadataSetObject2);
    function  metadata_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:  ConnectContext2     Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:     NodeBase2           Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property metadata: MetadataSetObject2  Index (IS_OPTN or IS_NLBL) read Fmetadata write Setmetadata stored metadata_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetExtraDataMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetExtraDataMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:    NodeBase2        Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetPathForNodeRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetPathForNodeRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fm_NodeID: NODEID2;
    Fm_NodeID_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setm_NodeID(Index: Integer; const ANODEID2: NODEID2);
    function  m_NodeID_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:  ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property m_NodeID: NODEID2          Index (IS_OPTN) read Fm_NodeID write Setm_NodeID stored m_NodeID_Specified;
  end;



  // ************************************************************************ //
  // XML       : DeleteNodeMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteNodeMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:    NodeBase2        Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
  end;



  // ************************************************************************ //
  // XML       : RestoreNodeMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  RestoreNodeMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:    NodeBase2        Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
  end;



  // ************************************************************************ //
  // XML       : SetPropertyMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetPropertyMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    Fproperty_: PropertyObjectBase2;
    Fproperty__Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure Setproperty_(Index: Integer; const APropertyObjectBase2: PropertyObjectBase2);
    function  property__Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:   ConnectContext2      Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:      NodeBase2            Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property property_: PropertyObjectBase2  Index (IS_OPTN or IS_NLBL) read Fproperty_ write Setproperty_ stored property__Specified;
  end;



  // ************************************************************************ //
  // XML       : SetPropertiesMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetPropertiesMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    Fproperties: PropertySetObject2;
    Fproperties_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure Setproperties(Index: Integer; const APropertySetObject2: PropertySetObject2);
    function  properties_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:    ConnectContext2     Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:       NodeBase2           Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property properties: PropertySetObject2  Index (IS_OPTN or IS_NLBL) read Fproperties write Setproperties stored properties_Specified;
  end;



  // ************************************************************************ //
  // XML       : MpegProfilesMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  MpegProfilesMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetMetadataTemplatesMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetMetadataTemplatesMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetPresentersMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetPresentersMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : MosObjectsMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  MosObjectsMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : ConnectionInfoMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ConnectionInfoMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetMappingTypesMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetMappingTypesMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;

  ArrayOfNode = array of Node2;                 { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : SearchResult, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SearchResult2 = class(TRemotable)
  private
    F_node: Node2;
  public
    destructor Destroy; override;
  published
    property _node: Node2  Index (IS_NLBL) read F_node write F_node;
  end;

  ArrayOfSearchResult = array of SearchResult2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ArrayOfNodeBase = array of NodeBase2;         { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : ReorderNodesMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ReorderNodesMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnodes: ArrayOfNodeBase;
    Fnodes_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnodes(Index: Integer; const AArrayOfNodeBase: ArrayOfNodeBase);
    function  nodes_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property nodes:   ArrayOfNodeBase  Index (IS_OPTN or IS_NLBL) read Fnodes write Setnodes stored nodes_Specified;
  end;

  ArrayOfMetadataObject = array of MetadataObject2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ArrayOfKeyframe = array of Keyframe2;         { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : PropertyObjectBase, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  PropertyObjectBase2 = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : PropertyObjectBase, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  PropertyObjectBase = class(PropertyObjectBase2)
  private
  published
  end;

  ArrayOfGlobalParameter = array of GlobalParameter2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : GlobalParameterObjects, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  GlobalParameterObjects2 = class(TRemotable)
  private
    Fparameters: ArrayOfGlobalParameter;
  public
    destructor Destroy; override;
  published
    property parameters: ArrayOfGlobalParameter  Index (IS_NLBL) read Fparameters write Fparameters;
  end;



  // ************************************************************************ //
  // XML       : GlobalParameterObjects, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  GlobalParameterObjects = class(GlobalParameterObjects2)
  private
  published
  end;

  ArrayOfSearchListResult = array of SearchListResult2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : SearchNodesListResult, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SearchNodesListResult2 = class(TRemotable)
  private
    F_node_id: NODEID2;
  public
    destructor Destroy; override;
  published
    property _node_id: NODEID2  read F_node_id write F_node_id;
  end;

  ArrayOfSearchNodesListResult = array of SearchNodesListResult2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ArrayOfSearch2Result = array of Search2Result2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : Search2Result, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  Search2Result2 = class(TRemotable)
  private
    F_node: Node2;
  public
    destructor Destroy; override;
  published
    property _node: Node2  Index (IS_NLBL) read F_node write F_node;
  end;

  ArrayOfBaseUpdate = array of BaseUpdate2;     { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ArrayOfJobNode = array of JobNode2;           { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ArrayOfSubTypeObject = array of SubTypeObject2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : SubTypeObjects, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SubTypeObjects2 = class(TRemotable)
  private
    FSubTypes: ArrayOfSubTypeObject;
  public
    destructor Destroy; override;
  published
    property SubTypes: ArrayOfSubTypeObject  Index (IS_NLBL) read FSubTypes write FSubTypes;
  end;

  ArrayOfTVFormatObject = array of TVFormatObject2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : TVFormatObjects, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  TVFormatObjects2 = class(TRemotable)
  private
    FTVFormats: ArrayOfTVFormatObject;
  public
    destructor Destroy; override;
  published
    property TVFormats: ArrayOfTVFormatObject  Index (IS_NLBL) read FTVFormats write FTVFormats;
  end;



  // ************************************************************************ //
  // XML       : SubTypeInfoMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SubTypeInfoMessageRequest = class(TRemotable)
  private
    FbildType: BildType;
    FbildType_Specified: boolean;
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure SetbildType(Index: Integer; const ABildType: BildType);
    function  bildType_Specified(Index: Integer): boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property bildType: BildType         Index (IS_OPTN) read FbildType write SetbildType stored bildType_Specified;
    property context:  ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : NodeUnlockMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  NodeUnlockMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    FlockType: LockType;
    FlockType_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetlockType(Index: Integer; const ALockType: LockType);
    function  lockType_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:  ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:     NodeBase2        Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property lockType: LockType         Index (IS_OPTN) read FlockType write SetlockType stored lockType_Specified;
  end;



  // ************************************************************************ //
  // XML       : NodeLockMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  NodeLockMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    FlockType: LockType;
    FlockType_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetlockType(Index: Integer; const ALockType: LockType);
    function  lockType_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:  ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:     NodeBase2        Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property lockType: LockType         Index (IS_OPTN) read FlockType write SetlockType stored lockType_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetNodesCountMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNodesCountMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    FrequestType: GET_NODE_REQUEST_TYPE;
    FrequestType_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
    function  requestType_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:     ConnectContext2        Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:        NodeBase2              Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property requestType: GET_NODE_REQUEST_TYPE  Index (IS_OPTN) read FrequestType write SetrequestType stored requestType_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetClipsByRollMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetClipsByRollMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    FrequestType: GET_NODE_REQUEST_TYPE;
    FrequestType_Specified: boolean;
    FnodeFillingType: NodeFillingType;
    FnodeFillingType_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
    function  requestType_Specified(Index: Integer): boolean;
    procedure SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
    function  nodeFillingType_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:         ConnectContext2        Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:            NodeBase2              Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property requestType:     GET_NODE_REQUEST_TYPE  Index (IS_OPTN) read FrequestType write SetrequestType stored requestType_Specified;
    property nodeFillingType: NodeFillingType        Index (IS_OPTN) read FnodeFillingType write SetnodeFillingType stored nodeFillingType_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetClipsByMogMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetClipsByMogMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    FrequestType: GET_NODE_REQUEST_TYPE;
    FrequestType_Specified: boolean;
    FnodeFillingType: NodeFillingType;
    FnodeFillingType_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
    function  requestType_Specified(Index: Integer): boolean;
    procedure SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
    function  nodeFillingType_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:         ConnectContext2        Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:            NodeBase2              Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property requestType:     GET_NODE_REQUEST_TYPE  Index (IS_OPTN) read FrequestType write SetrequestType stored requestType_Specified;
    property nodeFillingType: NodeFillingType        Index (IS_OPTN) read FnodeFillingType write SetnodeFillingType stored nodeFillingType_Specified;
  end;



  // ************************************************************************ //
  // XML       : NodeIDMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  NodeIDMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    FrequestType: GET_NODE_REQUEST_TYPE;
    FrequestType_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
    function  requestType_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:     ConnectContext2        Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:        NodeBase2              Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property requestType: GET_NODE_REQUEST_TYPE  Index (IS_OPTN) read FrequestType write SetrequestType stored requestType_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetChildrenMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetChildrenMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    FrequestType: GET_NODE_REQUEST_TYPE;
    FrequestType_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
    function  requestType_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:     ConnectContext2        Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:        NodeBase2              Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property requestType: GET_NODE_REQUEST_TYPE  Index (IS_OPTN) read FrequestType write SetrequestType stored requestType_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetNodeMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNodeMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    FrequestType: GET_NODE_REQUEST_TYPE;
    FrequestType_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
    function  requestType_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:     ConnectContext2        Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:        NodeBase2              Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property requestType: GET_NODE_REQUEST_TYPE  Index (IS_OPTN) read FrequestType write SetrequestType stored requestType_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetChildrenMessageRequestEx, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetChildrenMessageRequestEx = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    FrequestType: GET_NODE_REQUEST_TYPE;
    FrequestType_Specified: boolean;
    FnodeFillingType: NodeFillingType;
    FnodeFillingType_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
    function  requestType_Specified(Index: Integer): boolean;
    procedure SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
    function  nodeFillingType_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:         ConnectContext2        Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:            NodeBase2              Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property requestType:     GET_NODE_REQUEST_TYPE  Index (IS_OPTN) read FrequestType write SetrequestType stored requestType_Specified;
    property nodeFillingType: NodeFillingType        Index (IS_OPTN) read FnodeFillingType write SetnodeFillingType stored nodeFillingType_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetNodeMessageRequestEx, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNodeMessageRequestEx = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    FrequestType: GET_NODE_REQUEST_TYPE;
    FrequestType_Specified: boolean;
    FnodeFillingType: NodeFillingType;
    FnodeFillingType_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
    function  requestType_Specified(Index: Integer): boolean;
    procedure SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
    function  nodeFillingType_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:         ConnectContext2        Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:            NodeBase2              Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property requestType:     GET_NODE_REQUEST_TYPE  Index (IS_OPTN) read FrequestType write SetrequestType stored requestType_Specified;
    property nodeFillingType: NodeFillingType        Index (IS_OPTN) read FnodeFillingType write SetnodeFillingType stored nodeFillingType_Specified;
  end;



  // ************************************************************************ //
  // XML       : BaseUpdate, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  BaseUpdate2 = class(TRemotable)
  private
    FIsSelfUpdate: Boolean;
    Faction: UpdateActions;
  published
    property IsSelfUpdate: Boolean        read FIsSelfUpdate write FIsSelfUpdate;
    property action:       UpdateActions  read Faction write Faction;
  end;



  // ************************************************************************ //
  // XML       : MetadataUpdate, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MetadataUpdate2 = class(BaseUpdate2)
  private
    Fnode: NODEID2;
    Fprop: PropertyObject2;
  public
    destructor Destroy; override;
  published
    property node: NODEID2          read Fnode write Fnode;
    property prop: PropertyObject2  Index (IS_NLBL) read Fprop write Fprop;
  end;



  // ************************************************************************ //
  // XML       : MetadataUpdate, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MetadataUpdate = class(MetadataUpdate2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OrderUpdate, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OrderUpdate2 = class(BaseUpdate2)
  private
    Fnode: NODEID2;
  public
    destructor Destroy; override;
  published
    property node: NODEID2  read Fnode write Fnode;
  end;



  // ************************************************************************ //
  // XML       : OrderUpdate, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OrderUpdate = class(OrderUpdate2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ChildrenDeletedUpdate, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ChildrenDeletedUpdate2 = class(BaseUpdate2)
  private
    Fchildren: ArrayOfNODEID;
    Fparent: NODEID2;
  public
    destructor Destroy; override;
  published
    property children: ArrayOfNODEID  Index (IS_NLBL) read Fchildren write Fchildren;
    property parent:   NODEID2        read Fparent write Fparent;
  end;



  // ************************************************************************ //
  // XML       : FieldUpdate, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  FieldUpdate2 = class(BaseUpdate2)
  private
    Fnode: NODEID2;
    Fprop: PredefinedPropertyObject2;
  public
    destructor Destroy; override;
  published
    property node: NODEID2                    read Fnode write Fnode;
    property prop: PredefinedPropertyObject2  Index (IS_NLBL) read Fprop write Fprop;
  end;



  // ************************************************************************ //
  // XML       : ThumbnailUpdate, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ThumbnailUpdate2 = class(FieldUpdate2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ThumbnailUpdate, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ThumbnailUpdate = class(ThumbnailUpdate2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : GlobalParametrUpdate, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  GlobalParametrUpdate2 = class(BaseUpdate2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : GlobalParametrUpdate, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  GlobalParametrUpdate = class(GlobalParametrUpdate2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : RollUnlockUpdate, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  RollUnlockUpdate2 = class(BaseUpdate2)
  private
    Fnode: NODEID2;
  public
    destructor Destroy; override;
  published
    property node: NODEID2  read Fnode write Fnode;
  end;



  // ************************************************************************ //
  // XML       : RollUnlockUpdate, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  RollUnlockUpdate = class(RollUnlockUpdate2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : UnlockUpdate, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  UnlockUpdate2 = class(BaseUpdate2)
  private
    Fnode: NODEID2;
  public
    destructor Destroy; override;
  published
    property node: NODEID2  read Fnode write Fnode;
  end;



  // ************************************************************************ //
  // XML       : UnlockUpdate, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  UnlockUpdate = class(UnlockUpdate2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : NewsAddedUpdate, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  NewsAddedUpdate2 = class(BaseUpdate2)
  private
    FnewsId: NODEID2;
    Fparent: NODEID2;
  public
    destructor Destroy; override;
  published
    property newsId: NODEID2  read FnewsId write FnewsId;
    property parent: NODEID2  read Fparent write Fparent;
  end;



  // ************************************************************************ //
  // XML       : NewsAddedUpdate, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  NewsAddedUpdate = class(NewsAddedUpdate2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ChildrenInsertedUpdate, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ChildrenInsertedUpdate2 = class(BaseUpdate2)
  private
    Fchildren: ArrayOfNODEID;
    Fparent: NODEID2;
  public
    destructor Destroy; override;
  published
    property children: ArrayOfNODEID  Index (IS_NLBL) read Fchildren write Fchildren;
    property parent:   NODEID2        read Fparent write Fparent;
  end;



  // ************************************************************************ //
  // XML       : JoinMogsMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  JoinMogsMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode1: NodeBase2;
    Fnode1_Specified: boolean;
    Fnode2: NodeBase2;
    Fnode2_Specified: boolean;
    Fproperties: PropertySetObject2;
    Fproperties_Specified: boolean;
    FisJoinProps: Boolean;
    FisJoinProps_Specified: boolean;
    FisUseFirstProps: Boolean;
    FisUseFirstProps_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode1(Index: Integer; const ANodeBase2: NodeBase2);
    function  node1_Specified(Index: Integer): boolean;
    procedure Setnode2(Index: Integer; const ANodeBase2: NodeBase2);
    function  node2_Specified(Index: Integer): boolean;
    procedure Setproperties(Index: Integer; const APropertySetObject2: PropertySetObject2);
    function  properties_Specified(Index: Integer): boolean;
    procedure SetisJoinProps(Index: Integer; const ABoolean: Boolean);
    function  isJoinProps_Specified(Index: Integer): boolean;
    procedure SetisUseFirstProps(Index: Integer; const ABoolean: Boolean);
    function  isUseFirstProps_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:         ConnectContext2     Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node1:           NodeBase2           Index (IS_OPTN or IS_NLBL) read Fnode1 write Setnode1 stored node1_Specified;
    property node2:           NodeBase2           Index (IS_OPTN or IS_NLBL) read Fnode2 write Setnode2 stored node2_Specified;
    property properties:      PropertySetObject2  Index (IS_OPTN or IS_NLBL) read Fproperties write Setproperties stored properties_Specified;
    property isJoinProps:     Boolean             Index (IS_OPTN) read FisJoinProps write SetisJoinProps stored isJoinProps_Specified;
    property isUseFirstProps: Boolean             Index (IS_OPTN) read FisUseFirstProps write SetisUseFirstProps stored isUseFirstProps_Specified;
  end;



  // ************************************************************************ //
  // XML       : CopyNodeMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CopyNodeMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    FdstParent: NodeBase2;
    FdstParent_Specified: boolean;
    FinsertPosition: NodeBase2;
    FinsertPosition_Specified: boolean;
    FinsertBefore: Boolean;
    FinsertBefore_Specified: boolean;
    FnewNodeID: NODEID2;
    FnewNodeID_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetdstParent(Index: Integer; const ANodeBase2: NodeBase2);
    function  dstParent_Specified(Index: Integer): boolean;
    procedure SetinsertPosition(Index: Integer; const ANodeBase2: NodeBase2);
    function  insertPosition_Specified(Index: Integer): boolean;
    procedure SetinsertBefore(Index: Integer; const ABoolean: Boolean);
    function  insertBefore_Specified(Index: Integer): boolean;
    procedure SetnewNodeID(Index: Integer; const ANODEID2: NODEID2);
    function  newNodeID_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:        ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:           NodeBase2        Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property dstParent:      NodeBase2        Index (IS_OPTN or IS_NLBL) read FdstParent write SetdstParent stored dstParent_Specified;
    property insertPosition: NodeBase2        Index (IS_OPTN or IS_NLBL) read FinsertPosition write SetinsertPosition stored insertPosition_Specified;
    property insertBefore:   Boolean          Index (IS_OPTN) read FinsertBefore write SetinsertBefore stored insertBefore_Specified;
    property newNodeID:      NODEID2          Index (IS_OPTN or IS_NLBL) read FnewNodeID write SetnewNodeID stored newNodeID_Specified;
  end;



  // ************************************************************************ //
  // XML       : MoveNodeMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  MoveNodeMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: Node2;
    Fnode_Specified: boolean;
    FdstParent: NodeBase2;
    FdstParent_Specified: boolean;
    FinsertPosition: NodeBase2;
    FinsertPosition_Specified: boolean;
    FinsertBefore: Boolean;
    FinsertBefore_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANode2: Node2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetdstParent(Index: Integer; const ANodeBase2: NodeBase2);
    function  dstParent_Specified(Index: Integer): boolean;
    procedure SetinsertPosition(Index: Integer; const ANodeBase2: NodeBase2);
    function  insertPosition_Specified(Index: Integer): boolean;
    procedure SetinsertBefore(Index: Integer; const ABoolean: Boolean);
    function  insertBefore_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:        ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:           Node2            Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property dstParent:      NodeBase2        Index (IS_OPTN or IS_NLBL) read FdstParent write SetdstParent stored dstParent_Specified;
    property insertPosition: NodeBase2        Index (IS_OPTN or IS_NLBL) read FinsertPosition write SetinsertPosition stored insertPosition_Specified;
    property insertBefore:   Boolean          Index (IS_OPTN) read FinsertBefore write SetinsertBefore stored insertBefore_Specified;
  end;



  // ************************************************************************ //
  // XML       : CreateJobMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateJobMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: JobNode2;
    Fnode_Specified: boolean;
    FsubjectNodes: ArrayOfNode;
    FsubjectNodes_Specified: boolean;
    FisCopy: Boolean;
    FisCopy_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const AJobNode2: JobNode2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetsubjectNodes(Index: Integer; const AArrayOfNode: ArrayOfNode);
    function  subjectNodes_Specified(Index: Integer): boolean;
    procedure SetisCopy(Index: Integer; const ABoolean: Boolean);
    function  isCopy_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:      ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:         JobNode2         Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property subjectNodes: ArrayOfNode      Index (IS_OPTN or IS_NLBL) read FsubjectNodes write SetsubjectNodes stored subjectNodes_Specified;
    property isCopy:       Boolean          Index (IS_OPTN) read FisCopy write SetisCopy stored isCopy_Specified;
  end;



  // ************************************************************************ //
  // XML       : CreateSubClipMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateSubClipMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    FdstParent: NodeBase2;
    FdstParent_Specified: boolean;
    FinsertPosition: NodeBase2;
    FinsertPosition_Specified: boolean;
    FinsertBefore: Boolean;
    FinsertBefore_Specified: boolean;
    FnewNodeID: NODEID2;
    FnewNodeID_Specified: boolean;
    Fproperties: PropertySetObject2;
    Fproperties_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetdstParent(Index: Integer; const ANodeBase2: NodeBase2);
    function  dstParent_Specified(Index: Integer): boolean;
    procedure SetinsertPosition(Index: Integer; const ANodeBase2: NodeBase2);
    function  insertPosition_Specified(Index: Integer): boolean;
    procedure SetinsertBefore(Index: Integer; const ABoolean: Boolean);
    function  insertBefore_Specified(Index: Integer): boolean;
    procedure SetnewNodeID(Index: Integer; const ANODEID2: NODEID2);
    function  newNodeID_Specified(Index: Integer): boolean;
    procedure Setproperties(Index: Integer; const APropertySetObject2: PropertySetObject2);
    function  properties_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:        ConnectContext2     Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:           NodeBase2           Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property dstParent:      NodeBase2           Index (IS_OPTN or IS_NLBL) read FdstParent write SetdstParent stored dstParent_Specified;
    property insertPosition: NodeBase2           Index (IS_OPTN or IS_NLBL) read FinsertPosition write SetinsertPosition stored insertPosition_Specified;
    property insertBefore:   Boolean             Index (IS_OPTN) read FinsertBefore write SetinsertBefore stored insertBefore_Specified;
    property newNodeID:      NODEID2             Index (IS_OPTN or IS_NLBL) read FnewNodeID write SetnewNodeID stored newNodeID_Specified;
    property properties:     PropertySetObject2  Index (IS_OPTN or IS_NLBL) read Fproperties write Setproperties stored properties_Specified;
  end;



  // ************************************************************************ //
  // XML       : AsyncCopyNodeMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  AsyncCopyNodeMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    FdstParent: NodeBase2;
    FdstParent_Specified: boolean;
    FinsertPosition: NodeBase2;
    FinsertPosition_Specified: boolean;
    FinsertBefore: Boolean;
    FinsertBefore_Specified: boolean;
    FnewNodeID: NODEID2;
    FnewNodeID_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetdstParent(Index: Integer; const ANodeBase2: NodeBase2);
    function  dstParent_Specified(Index: Integer): boolean;
    procedure SetinsertPosition(Index: Integer; const ANodeBase2: NodeBase2);
    function  insertPosition_Specified(Index: Integer): boolean;
    procedure SetinsertBefore(Index: Integer; const ABoolean: Boolean);
    function  insertBefore_Specified(Index: Integer): boolean;
    procedure SetnewNodeID(Index: Integer; const ANODEID2: NODEID2);
    function  newNodeID_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:        ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:           NodeBase2        Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property dstParent:      NodeBase2        Index (IS_OPTN or IS_NLBL) read FdstParent write SetdstParent stored dstParent_Specified;
    property insertPosition: NodeBase2        Index (IS_OPTN or IS_NLBL) read FinsertPosition write SetinsertPosition stored insertPosition_Specified;
    property insertBefore:   Boolean          Index (IS_OPTN) read FinsertBefore write SetinsertBefore stored insertBefore_Specified;
    property newNodeID:      NODEID2          Index (IS_OPTN or IS_NLBL) read FnewNodeID write SetnewNodeID stored newNodeID_Specified;
  end;



  // ************************************************************************ //
  // XML       : SplitMogMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SplitMogMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    FsplitTime: Int64;
    FsplitTime_Specified: boolean;
    Fproperties1: PropertySetObject2;
    Fproperties1_Specified: boolean;
    Fproperties2: PropertySetObject2;
    Fproperties2_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetsplitTime(Index: Integer; const AInt64: Int64);
    function  splitTime_Specified(Index: Integer): boolean;
    procedure Setproperties1(Index: Integer; const APropertySetObject2: PropertySetObject2);
    function  properties1_Specified(Index: Integer): boolean;
    procedure Setproperties2(Index: Integer; const APropertySetObject2: PropertySetObject2);
    function  properties2_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:     ConnectContext2     Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:        NodeBase2           Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property splitTime:   Int64               Index (IS_OPTN) read FsplitTime write SetsplitTime stored splitTime_Specified;
    property properties1: PropertySetObject2  Index (IS_OPTN or IS_NLBL) read Fproperties1 write Setproperties1 stored properties1_Specified;
    property properties2: PropertySetObject2  Index (IS_OPTN or IS_NLBL) read Fproperties2 write Setproperties2 stored properties2_Specified;
  end;



  // ************************************************************************ //
  // XML       : Keyframe, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  Keyframe2 = class(TRemotable)
  private
    FkfData: TByteDynArray;
    FkfTime: Int64;
  published
    property kfData: TByteDynArray  Index (IS_NLBL) read FkfData write FkfData;
    property kfTime: Int64          read FkfTime write FkfTime;
  end;



  // ************************************************************************ //
  // XML       : SearchListResult, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SearchListResult2 = class(TRemotable)
  private
    F_node_id: NODEID2;
    F_node_sub_type: Integer;
    F_node_type: Integer;
    F_parent_id: NODEID2;
  public
    destructor Destroy; override;
  published
    property _node_id:       NODEID2  read F_node_id write F_node_id;
    property _node_sub_type: Integer  read F_node_sub_type write F_node_sub_type;
    property _node_type:     Integer  read F_node_type write F_node_type;
    property _parent_id:     NODEID2  read F_parent_id write F_parent_id;
  end;



  // ************************************************************************ //
  // XML       : ChangeDeleteUpdate, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ChangeDeleteUpdate2 = class(BaseUpdate2)
  private
    Fdeleted: Integer;
    Fnode: NODEID2;
  public
    destructor Destroy; override;
  published
    property deleted: Integer  read Fdeleted write Fdeleted;
    property node:    NODEID2  read Fnode write Fnode;
  end;



  // ************************************************************************ //
  // XML       : ChangeDeleteUpdate, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ChangeDeleteUpdate = class(ChangeDeleteUpdate2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : GetChildrenPageMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetChildrenPageMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    FrequestType: GET_NODE_REQUEST_TYPE;
    FrequestType_Specified: boolean;
    FnodeFillingType: NodeFillingType;
    FnodeFillingType_Specified: boolean;
    FpageSize: Integer;
    FpageSize_Specified: boolean;
    FpageNum: Integer;
    FpageNum_Specified: boolean;
    ForderField: OrderField;
    ForderField_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
    function  requestType_Specified(Index: Integer): boolean;
    procedure SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
    function  nodeFillingType_Specified(Index: Integer): boolean;
    procedure SetpageSize(Index: Integer; const AInteger: Integer);
    function  pageSize_Specified(Index: Integer): boolean;
    procedure SetpageNum(Index: Integer; const AInteger: Integer);
    function  pageNum_Specified(Index: Integer): boolean;
    procedure SetorderField(Index: Integer; const AOrderField: OrderField);
    function  orderField_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:         ConnectContext2        Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:            NodeBase2              Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property requestType:     GET_NODE_REQUEST_TYPE  Index (IS_OPTN) read FrequestType write SetrequestType stored requestType_Specified;
    property nodeFillingType: NodeFillingType        Index (IS_OPTN) read FnodeFillingType write SetnodeFillingType stored nodeFillingType_Specified;
    property pageSize:        Integer                Index (IS_OPTN) read FpageSize write SetpageSize stored pageSize_Specified;
    property pageNum:         Integer                Index (IS_OPTN) read FpageNum write SetpageNum stored pageNum_Specified;
    property orderField:      OrderField             Index (IS_OPTN) read ForderField write SetorderField stored orderField_Specified;
  end;



  // ************************************************************************ //
  // XML       : HeartBeatMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  HeartBeatMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fm_bTouch: Integer;
    Fm_bTouch_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setm_bTouch(Index: Integer; const AInteger: Integer);
    function  m_bTouch_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:  ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property m_bTouch: Integer          Index (IS_OPTN) read Fm_bTouch write Setm_bTouch stored m_bTouch_Specified;
  end;



  // ************************************************************************ //
  // XML       : TagsCloudMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TagsCloudMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fm_NodeID: NODEID2;
    Fm_NodeID_Specified: boolean;
    Flimit: Integer;
    Flimit_Specified: boolean;
    FisIncludeEmpty: Boolean;
    FisIncludeEmpty_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setm_NodeID(Index: Integer; const ANODEID2: NODEID2);
    function  m_NodeID_Specified(Index: Integer): boolean;
    procedure Setlimit(Index: Integer; const AInteger: Integer);
    function  limit_Specified(Index: Integer): boolean;
    procedure SetisIncludeEmpty(Index: Integer; const ABoolean: Boolean);
    function  isIncludeEmpty_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:        ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property m_NodeID:       NODEID2          Index (IS_OPTN) read Fm_NodeID write Setm_NodeID stored m_NodeID_Specified;
    property limit:          Integer          Index (IS_OPTN) read Flimit write Setlimit stored limit_Specified;
    property isIncludeEmpty: Boolean          Index (IS_OPTN) read FisIncludeEmpty write SetisIncludeEmpty stored isIncludeEmpty_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetAllNewsMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetAllNewsMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnodes: ArrayOfNodeBase;
    Fnodes_Specified: boolean;
    FisBreakingOnly: Boolean;
    FisBreakingOnly_Specified: boolean;
    Ftop: Integer;
    Ftop_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnodes(Index: Integer; const AArrayOfNodeBase: ArrayOfNodeBase);
    function  nodes_Specified(Index: Integer): boolean;
    procedure SetisBreakingOnly(Index: Integer; const ABoolean: Boolean);
    function  isBreakingOnly_Specified(Index: Integer): boolean;
    procedure Settop(Index: Integer; const AInteger: Integer);
    function  top_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:        ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property nodes:          ArrayOfNodeBase  Index (IS_OPTN or IS_NLBL) read Fnodes write Setnodes stored nodes_Specified;
    property isBreakingOnly: Boolean          Index (IS_OPTN) read FisBreakingOnly write SetisBreakingOnly stored isBreakingOnly_Specified;
    property top:            Integer          Index (IS_OPTN) read Ftop write Settop stored top_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetBreakingNewsRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetBreakingNewsRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    Ftop: Integer;
    Ftop_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure Settop(Index: Integer; const AInteger: Integer);
    function  top_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:    NodeBase2        Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property top:     Integer          Index (IS_OPTN) read Ftop write Settop stored top_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetRollsByStatusMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetRollsByStatusMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    FrequestType: GET_NODE_REQUEST_TYPE;
    FrequestType_Specified: boolean;
    FExpired: ExperationStatus;
    FExpired_Specified: boolean;
    FCreated: CreationStatus;
    FCreated_Specified: boolean;
    FDaysAgo: Integer;
    FDaysAgo_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
    function  requestType_Specified(Index: Integer): boolean;
    procedure SetExpired(Index: Integer; const AExperationStatus: ExperationStatus);
    function  Expired_Specified(Index: Integer): boolean;
    procedure SetCreated(Index: Integer; const ACreationStatus: CreationStatus);
    function  Created_Specified(Index: Integer): boolean;
    procedure SetDaysAgo(Index: Integer; const AInteger: Integer);
    function  DaysAgo_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:     ConnectContext2        Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:        NodeBase2              Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property requestType: GET_NODE_REQUEST_TYPE  Index (IS_OPTN) read FrequestType write SetrequestType stored requestType_Specified;
    property Expired:     ExperationStatus       Index (IS_OPTN) read FExpired write SetExpired stored Expired_Specified;
    property Created:     CreationStatus         Index (IS_OPTN) read FCreated write SetCreated stored Created_Specified;
    property DaysAgo:     Integer                Index (IS_OPTN) read FDaysAgo write SetDaysAgo stored DaysAgo_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetJobProcessorGroupMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetJobProcessorGroupMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    FjobProcessorGroupId: Integer;
    FjobProcessorGroupId_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure SetjobProcessorGroupId(Index: Integer; const AInteger: Integer);
    function  jobProcessorGroupId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:             ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property jobProcessorGroupId: Integer          Index (IS_OPTN) read FjobProcessorGroupId write SetjobProcessorGroupId stored jobProcessorGroupId_Specified;
  end;



  // ************************************************************************ //
  // XML       : SubTypeRelationsMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SubTypeRelationsMessageRequest = class(TRemotable)
  private
    FSubType: Integer;
    FSubType_Specified: boolean;
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure SetSubType(Index: Integer; const AInteger: Integer);
    function  SubType_Specified(Index: Integer): boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property SubType: Integer          Index (IS_OPTN) read FSubType write SetSubType stored SubType_Specified;
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : SubTypeRelationsParentsMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SubTypeRelationsParentsMessageRequest = class(TRemotable)
  private
    FSubType: Integer;
    FSubType_Specified: boolean;
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure SetSubType(Index: Integer; const AInteger: Integer);
    function  SubType_Specified(Index: Integer): boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property SubType: Integer          Index (IS_OPTN) read FSubType write SetSubType stored SubType_Specified;
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : ColorMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ColorMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fm_intIndex: Integer;
    Fm_intIndex_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setm_intIndex(Index: Integer; const AInteger: Integer);
    function  m_intIndex_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:    ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property m_intIndex: Integer          Index (IS_OPTN) read Fm_intIndex write Setm_intIndex stored m_intIndex_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetUpdatesRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetUpdatesRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fcount: Integer;
    Fcount_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setcount(Index: Integer; const AInteger: Integer);
    function  count_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property count:   Integer          Index (IS_OPTN) read Fcount write Setcount stored count_Specified;
  end;



  // ************************************************************************ //
  // XML       : PredefinedPropertyObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  PredefinedPropertyObject2 = class(PropertyObjectBase2)
  private
    FfieldNum: PROPERTY_NUM;
    Fvalue: Variant;
  published
    property fieldNum: PROPERTY_NUM  read FfieldNum write FfieldNum;
    property value:    Variant       Index (IS_NLBL) read Fvalue write Fvalue;
  end;



  // ************************************************************************ //
  // XML       : PropertyObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  PropertyObject2 = class(PropertyObjectBase2)
  private
    FfieldNum: Integer;
    Fvalue: Variant;
  published
    property fieldNum: Integer  read FfieldNum write FfieldNum;
    property value:    Variant  Index (IS_NLBL) read Fvalue write Fvalue;
  end;



  // ************************************************************************ //
  // XML       : PropertyObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  PropertyObject = class(PropertyObject2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : GetSpecialNodeMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSpecialNodeMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Ftype_: SpecialNodes;
    Ftype__Specified: boolean;
    FextraData: Variant;
    FextraData_Specified: boolean;
    FnodeFillingType: NodeFillingType;
    FnodeFillingType_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Settype_(Index: Integer; const ASpecialNodes: SpecialNodes);
    function  type__Specified(Index: Integer): boolean;
    procedure SetextraData(Index: Integer; const AVariant: Variant);
    function  extraData_Specified(Index: Integer): boolean;
    procedure SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
    function  nodeFillingType_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:         ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property type_:           SpecialNodes     Index (IS_OPTN) read Ftype_ write Settype_ stored type__Specified;
    property extraData:       Variant          Index (IS_OPTN or IS_NLBL) read FextraData write SetextraData stored extraData_Specified;
    property nodeFillingType: NodeFillingType  Index (IS_OPTN) read FnodeFillingType write SetnodeFillingType stored nodeFillingType_Specified;
  end;



  // ************************************************************************ //
  // XML       : CreateNodeMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateNodeMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: Node2;
    Fnode_Specified: boolean;
    FinsertPosition: NodeBase2;
    FinsertPosition_Specified: boolean;
    FinsertBefore: Boolean;
    FinsertBefore_Specified: boolean;
    FextraData: Variant;
    FextraData_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANode2: Node2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetinsertPosition(Index: Integer; const ANodeBase2: NodeBase2);
    function  insertPosition_Specified(Index: Integer): boolean;
    procedure SetinsertBefore(Index: Integer; const ABoolean: Boolean);
    function  insertBefore_Specified(Index: Integer): boolean;
    procedure SetextraData(Index: Integer; const AVariant: Variant);
    function  extraData_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:        ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:           Node2            Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property insertPosition: NodeBase2        Index (IS_OPTN or IS_NLBL) read FinsertPosition write SetinsertPosition stored insertPosition_Specified;
    property insertBefore:   Boolean          Index (IS_OPTN) read FinsertBefore write SetinsertBefore stored insertBefore_Specified;
    property extraData:      Variant          Index (IS_OPTN or IS_NLBL) read FextraData write SetextraData stored extraData_Specified;
  end;

  guid            =  type string;      { "http://schemas.microsoft.com/2003/10/Serialization/"[GblSmpl] }
  UserAccess      =  type string;      { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }


  // ************************************************************************ //
  // XML       : SubTypeObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SubTypeObject2 = class(TRemotable)
  private
    FCanCreatedByUser: Boolean;
    FCanDeletedByUser: Boolean;
    FComment: string;
    FExtension: string;
    FFlags: Integer;
    FIconLarge: TByteDynArray;
    FIconLargeName: string;
    FIconSmall: TByteDynArray;
    FIconSmallName: string;
    FId: guid;
    FName_: string;
    FSubType: Integer;
    FType_: Integer;
  published
    property CanCreatedByUser: Boolean        read FCanCreatedByUser write FCanCreatedByUser;
    property CanDeletedByUser: Boolean        read FCanDeletedByUser write FCanDeletedByUser;
    property Comment:          string         Index (IS_NLBL) read FComment write FComment;
    property Extension:        string         Index (IS_NLBL) read FExtension write FExtension;
    property Flags:            Integer        read FFlags write FFlags;
    property IconLarge:        TByteDynArray  Index (IS_NLBL) read FIconLarge write FIconLarge;
    property IconLargeName:    string         Index (IS_NLBL) read FIconLargeName write FIconLargeName;
    property IconSmall:        TByteDynArray  Index (IS_NLBL) read FIconSmall write FIconSmall;
    property IconSmallName:    string         Index (IS_NLBL) read FIconSmallName write FIconSmallName;
    property Id:               guid           read FId write FId;
    property Name_:            string         Index (IS_NLBL) read FName_ write FName_;
    property SubType:          Integer        read FSubType write FSubType;
    property Type_:            Integer        read FType_ write FType_;
  end;



  // ************************************************************************ //
  // XML       : TVFormatObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  TVFormatObject2 = class(TRemotable)
  private
    FAspect: Presets2;
    FDescription: string;
    FFrameStruct: Presets2;
    FFrequency: Presets2;
    FHeight: Integer;
    FName_: string;
    FType_: TVFORMAT;
    FWidth: Integer;
  public
    destructor Destroy; override;
  published
    property Aspect:      Presets2  Index (IS_NLBL) read FAspect write FAspect;
    property Description: string    Index (IS_NLBL) read FDescription write FDescription;
    property FrameStruct: Presets2  Index (IS_NLBL) read FFrameStruct write FFrameStruct;
    property Frequency:   Presets2  Index (IS_NLBL) read FFrequency write FFrequency;
    property Height:      Integer   read FHeight write FHeight;
    property Name_:       string    Index (IS_NLBL) read FName_ write FName_;
    property Type_:       TVFORMAT  read FType_ write FType_;
    property Width:       Integer   read FWidth write FWidth;
  end;



  // ************************************************************************ //
  // XML       : Search2Parameters, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  Search2Parameters2 = class(TRemotable)
  private
    F_cd_from: string;
    F_cd_to: string;
    F_guidSession: guid;
    F_guid_from_here: guid;
    F_md_from: string;
    F_md_to: string;
    F_nNarrowDateType: Integer;
    F_nNarrowPeriod: Integer;
    F_nPageNum: Integer;
    F_nPageSize: Integer;
    F_nTotal: Integer;
    F_n_exclude_cd: Integer;
    F_n_exclude_md: Integer;
    F_str_order: string;
    F_str_search: string;
    F_str_types: string;
  published
    property _cd_from:         string   Index (IS_NLBL) read F_cd_from write F_cd_from;
    property _cd_to:           string   Index (IS_NLBL) read F_cd_to write F_cd_to;
    property _guidSession:     guid     read F_guidSession write F_guidSession;
    property _guid_from_here:  guid     read F_guid_from_here write F_guid_from_here;
    property _md_from:         string   Index (IS_NLBL) read F_md_from write F_md_from;
    property _md_to:           string   Index (IS_NLBL) read F_md_to write F_md_to;
    property _nNarrowDateType: Integer  read F_nNarrowDateType write F_nNarrowDateType;
    property _nNarrowPeriod:   Integer  read F_nNarrowPeriod write F_nNarrowPeriod;
    property _nPageNum:        Integer  read F_nPageNum write F_nPageNum;
    property _nPageSize:       Integer  read F_nPageSize write F_nPageSize;
    property _nTotal:          Integer  read F_nTotal write F_nTotal;
    property _n_exclude_cd:    Integer  read F_n_exclude_cd write F_n_exclude_cd;
    property _n_exclude_md:    Integer  read F_n_exclude_md write F_n_exclude_md;
    property _str_order:       string   Index (IS_NLBL) read F_str_order write F_str_order;
    property _str_search:      string   Index (IS_NLBL) read F_str_search write F_str_search;
    property _str_types:       string   Index (IS_NLBL) read F_str_types write F_str_types;
  end;



  // ************************************************************************ //
  // XML       : GetRecentNodesParameters, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  GetRecentNodesParameters2 = class(TRemotable)
  private
    F_fromDate: TXSDateTime;
    F_nodeTypes: string;
    F_pageSize: Integer;
    F_parentNodeId: guid;
    F_sortOrderAsc: Boolean;
    F_startRecordIndex: Integer;
    F_toDate: TXSDateTime;
    F_useCreationDate: Boolean;
  public
    destructor Destroy; override;
  published
    property _fromDate:         TXSDateTime  read F_fromDate write F_fromDate;
    property _nodeTypes:        string       Index (IS_NLBL) read F_nodeTypes write F_nodeTypes;
    property _pageSize:         Integer      read F_pageSize write F_pageSize;
    property _parentNodeId:     guid         read F_parentNodeId write F_parentNodeId;
    property _sortOrderAsc:     Boolean      read F_sortOrderAsc write F_sortOrderAsc;
    property _startRecordIndex: Integer      read F_startRecordIndex write F_startRecordIndex;
    property _toDate:           TXSDateTime  read F_toDate write F_toDate;
    property _useCreationDate:  Boolean      read F_useCreationDate write F_useCreationDate;
  end;



  // ************************************************************************ //
  // XML       : SearchPagerParameters, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SearchPagerParameters2 = class(TRemotable)
  private
    F_guidFromHere: guid;
    F_guidSession: guid;
    F_nIsSync: Integer;
    F_nPageNum: Integer;
    F_nPageSize: Integer;
    F_orderBy: string;
    F_strSearch: string;
  published
    property _guidFromHere: guid     read F_guidFromHere write F_guidFromHere;
    property _guidSession:  guid     read F_guidSession write F_guidSession;
    property _nIsSync:      Integer  read F_nIsSync write F_nIsSync;
    property _nPageNum:     Integer  read F_nPageNum write F_nPageNum;
    property _nPageSize:    Integer  read F_nPageSize write F_nPageSize;
    property _orderBy:      string   Index (IS_NLBL) read F_orderBy write F_orderBy;
    property _strSearch:    string   Index (IS_NLBL) read F_strSearch write F_strSearch;
  end;



  // ************************************************************************ //
  // XML       : GlobalParameter, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  GlobalParameter2 = class(TRemotable)
  private
    F_param_basetype: string;
    F_param_collation: string;
    F_param_maxlength: Integer;
    F_param_name: string;
    F_param_precision: Integer;
    F_param_scale: Integer;
    F_param_totalbytes: Integer;
    F_param_type: GP_TYPE;
    F_param_value: Variant;
  published
    property _param_basetype:   string   Index (IS_NLBL) read F_param_basetype write F_param_basetype;
    property _param_collation:  string   Index (IS_NLBL) read F_param_collation write F_param_collation;
    property _param_maxlength:  Integer  read F_param_maxlength write F_param_maxlength;
    property _param_name:       string   Index (IS_NLBL) read F_param_name write F_param_name;
    property _param_precision:  Integer  read F_param_precision write F_param_precision;
    property _param_scale:      Integer  read F_param_scale write F_param_scale;
    property _param_totalbytes: Integer  read F_param_totalbytes write F_param_totalbytes;
    property _param_type:       GP_TYPE  read F_param_type write F_param_type;
    property _param_value:      Variant  Index (IS_NLBL) read F_param_value write F_param_value;
  end;



  // ************************************************************************ //
  // XML       : GlobalParameter, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  GlobalParameter = class(GlobalParameter2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : LockUpdate, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  LockUpdate2 = class(BaseUpdate2)
  private
    Flocktype: LockType;
    Fnode: NODEID2;
    Fusername: string;
  public
    destructor Destroy; override;
  published
    property locktype: LockType  read Flocktype write Flocktype;
    property node:     NODEID2   read Fnode write Fnode;
    property username: string    Index (IS_NLBL) read Fusername write Fusername;
  end;



  // ************************************************************************ //
  // XML       : LockUpdate, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  LockUpdate = class(LockUpdate2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : RenameUpdate, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  RenameUpdate2 = class(BaseUpdate2)
  private
    Fname_: string;
    Fnode: NODEID2;
  public
    destructor Destroy; override;
  published
    property name_: string   Index (IS_NLBL) read Fname_ write Fname_;
    property node:  NODEID2  read Fnode write Fnode;
  end;



  // ************************************************************************ //
  // XML       : MetadataObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MetadataObject2 = class(TRemotable)
  private
    FdescriptorID: NODEID2;
    FfieldNum: Integer;
    FinternalName: string;
    Ftype_: string;
    Fvalue: Variant;
  public
    destructor Destroy; override;
  published
    property descriptorID: NODEID2  read FdescriptorID write FdescriptorID;
    property fieldNum:     Integer  read FfieldNum write FfieldNum;
    property internalName: string   Index (IS_NLBL) read FinternalName write FinternalName;
    property type_:        string   Index (IS_NLBL) read Ftype_ write Ftype_;
    property value:        Variant  Index (IS_NLBL) read Fvalue write Fvalue;
  end;



  // ************************************************************************ //
  // XML       : SearchParameters, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SearchParameters2 = class(TRemotable)
  private
    F_guidSession: guid;
    F_guid_from_here: guid;
    F_guid_start_id: guid;
    F_nIsSync: Integer;
    F_nNarrowDateType: Integer;
    F_nNarrowPeriod: Integer;
    F_nPageSize: Integer;
    F_nReserved: Integer;
    F_nTotal: Integer;
    F_nUseTotal: Integer;
    F_str_search: string;
    F_str_types: string;
  published
    property _guidSession:     guid     read F_guidSession write F_guidSession;
    property _guid_from_here:  guid     read F_guid_from_here write F_guid_from_here;
    property _guid_start_id:   guid     read F_guid_start_id write F_guid_start_id;
    property _nIsSync:         Integer  read F_nIsSync write F_nIsSync;
    property _nNarrowDateType: Integer  read F_nNarrowDateType write F_nNarrowDateType;
    property _nNarrowPeriod:   Integer  read F_nNarrowPeriod write F_nNarrowPeriod;
    property _nPageSize:       Integer  read F_nPageSize write F_nPageSize;
    property _nReserved:       Integer  read F_nReserved write F_nReserved;
    property _nTotal:          Integer  read F_nTotal write F_nTotal;
    property _nUseTotal:       Integer  read F_nUseTotal write F_nUseTotal;
    property _str_search:      string   Index (IS_NLBL) read F_str_search write F_str_search;
    property _str_types:       string   Index (IS_NLBL) read F_str_types write F_str_types;
  end;



  // ************************************************************************ //
  // XML       : GetMappingTypeMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetMappingTypeMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fid: guid;
    Fid_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const Aguid: guid);
    function  id_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property id:      guid             Index (IS_OPTN) read Fid write Setid stored id_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetMappingTypeMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetMappingTypeMessageResponse = class(TRemotable)
  private
    Fmapping: MappingTypeObject2;
    Fmapping_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setmapping(Index: Integer; const AMappingTypeObject2: MappingTypeObject2);
    function  mapping_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property mapping: MappingTypeObject2  Index (IS_OPTN or IS_NLBL) read Fmapping write Setmapping stored mapping_Specified;
    property retCode: Integer             Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string              Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : DeleteMappingMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteMappingMessageResponse = class(TRemotable)
  private
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : SetMappingMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetMappingMessageResponse = class(TRemotable)
  private
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : DeleteMappingMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteMappingMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Ftype_: MappingType;
    Ftype__Specified: boolean;
    FschemaID: guid;
    FschemaID_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Settype_(Index: Integer; const AMappingType: MappingType);
    function  type__Specified(Index: Integer): boolean;
    procedure SetschemaID(Index: Integer; const Aguid: guid);
    function  schemaID_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:  ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property type_:    MappingType      Index (IS_OPTN) read Ftype_ write Settype_ stored type__Specified;
    property schemaID: guid             Index (IS_OPTN) read FschemaID write SetschemaID stored schemaID_Specified;
  end;



  // ************************************************************************ //
  // XML       : DeleteMappingTypeMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteMappingTypeMessageResponse = class(TRemotable)
  private
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : DeleteMappingTypeMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteMappingTypeMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fid: guid;
    Fid_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const Aguid: guid);
    function  id_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property id:      guid             Index (IS_OPTN) read Fid write Setid stored id_Specified;
  end;



  // ************************************************************************ //
  // XML       : SetMappingTypeMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetMappingTypeMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fid: guid;
    Fid_Specified: boolean;
    Fname_: string;
    Fname__Specified: boolean;
    Fxml: string;
    Fxml_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const Aguid: guid);
    function  id_Specified(Index: Integer): boolean;
    procedure Setname_(Index: Integer; const Astring: string);
    function  name__Specified(Index: Integer): boolean;
    procedure Setxml(Index: Integer; const Astring: string);
    function  xml_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property id:      guid             Index (IS_OPTN) read Fid write Setid stored id_Specified;
    property name_:   string           Index (IS_OPTN or IS_NLBL) read Fname_ write Setname_ stored name__Specified;
    property xml:     string           Index (IS_OPTN or IS_NLBL) read Fxml write Setxml stored xml_Specified;
  end;



  // ************************************************************************ //
  // XML       : SetMappingTypeMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetMappingTypeMessageResponse = class(TRemotable)
  private
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : PluginDescriptorMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  PluginDescriptorMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Frecordid: string;
    Frecordid_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setrecordid(Index: Integer; const Astring: string);
    function  recordid_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:  ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property recordid: string           Index (IS_OPTN or IS_NLBL) read Frecordid write Setrecordid stored recordid_Specified;
  end;



  // ************************************************************************ //
  // XML       : PluginDescriptorMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  PluginDescriptorMessageResponse = class(TRemotable)
  private
    Fname_: string;
    Fname__Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setname_(Index: Integer; const Astring: string);
    function  name__Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property name_:   string   Index (IS_OPTN or IS_NLBL) read Fname_ write Setname_ stored name__Specified;
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : ConnectionInfoMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ConnectionInfoMessageResponse = class(TRemotable)
  private
    Fserver: string;
    Fserver_Specified: boolean;
    Fdatabase: string;
    Fdatabase_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    Fuser: string;
    Fuser_Specified: boolean;
    procedure Setserver(Index: Integer; const Astring: string);
    function  server_Specified(Index: Integer): boolean;
    procedure Setdatabase(Index: Integer; const Astring: string);
    function  database_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
    procedure Setuser(Index: Integer; const Astring: string);
    function  user_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property server:   string   Index (IS_OPTN or IS_NLBL) read Fserver write Setserver stored server_Specified;
    property database: string   Index (IS_OPTN or IS_NLBL) read Fdatabase write Setdatabase stored database_Specified;
    property retCode:  Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:    string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
    property user:     string   Index (IS_OPTN or IS_NLBL) read Fuser write Setuser stored user_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetProfileMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetProfileMessageResponse = class(TRemotable)
  private
    Fprofile: TByteDynArray;
    Fprofile_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setprofile(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  profile_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property profile: TByteDynArray  Index (IS_OPTN or IS_NLBL) read Fprofile write Setprofile stored profile_Specified;
    property retCode: Integer        Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string         Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetMappingMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetMappingMessageResponse = class(TRemotable)
  private
    Fmapping: MappingObject2;
    Fmapping_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setmapping(Index: Integer; const AMappingObject2: MappingObject2);
    function  mapping_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property mapping: MappingObject2  Index (IS_OPTN or IS_NLBL) read Fmapping write Setmapping stored mapping_Specified;
    property retCode: Integer         Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string          Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : SetMappingMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetMappingMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Ftype_: MappingType;
    Ftype__Specified: boolean;
    FschemaID: guid;
    FschemaID_Specified: boolean;
    Fxml: string;
    Fxml_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Settype_(Index: Integer; const AMappingType: MappingType);
    function  type__Specified(Index: Integer): boolean;
    procedure SetschemaID(Index: Integer; const Aguid: guid);
    function  schemaID_Specified(Index: Integer): boolean;
    procedure Setxml(Index: Integer; const Astring: string);
    function  xml_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:  ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property type_:    MappingType      Index (IS_OPTN) read Ftype_ write Settype_ stored type__Specified;
    property schemaID: guid             Index (IS_OPTN) read FschemaID write SetschemaID stored schemaID_Specified;
    property xml:      string           Index (IS_OPTN or IS_NLBL) read Fxml write Setxml stored xml_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetMappingMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetMappingMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Ftype_: MappingType;
    Ftype__Specified: boolean;
    FschemaID: guid;
    FschemaID_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Settype_(Index: Integer; const AMappingType: MappingType);
    function  type__Specified(Index: Integer): boolean;
    procedure SetschemaID(Index: Integer; const Aguid: guid);
    function  schemaID_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:  ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property type_:    MappingType      Index (IS_OPTN) read Ftype_ write Settype_ stored type__Specified;
    property schemaID: guid             Index (IS_OPTN) read FschemaID write SetschemaID stored schemaID_Specified;
  end;



  // ************************************************************************ //
  // XML       : MosObjectsMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  MosObjectsMessageResponse = class(TRemotable)
  private
    Fobjects: MosObjects2;
    Fobjects_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setobjects(Index: Integer; const AMosObjects2: MosObjects2);
    function  objects_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property objects: MosObjects2  Index (IS_OPTN or IS_NLBL) read Fobjects write Setobjects stored objects_Specified;
    property retCode: Integer      Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string       Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetMappingTypesMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetMappingTypesMessageResponse = class(TRemotable)
  private
    Fmappings: MappingTypeObjects2;
    Fmappings_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setmappings(Index: Integer; const AMappingTypeObjects2: MappingTypeObjects2);
    function  mappings_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property mappings: MappingTypeObjects2  Index (IS_OPTN or IS_NLBL) read Fmappings write Setmappings stored mappings_Specified;
    property retCode:  Integer              Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:    string               Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : SplitMogMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SplitMogMessageResponse = class(TRemotable)
  private
    Fmog1: MogNode2;
    Fmog1_Specified: boolean;
    Fmog2: MogNode2;
    Fmog2_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setmog1(Index: Integer; const AMogNode2: MogNode2);
    function  mog1_Specified(Index: Integer): boolean;
    procedure Setmog2(Index: Integer; const AMogNode2: MogNode2);
    function  mog2_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property mog1:    MogNode2  Index (IS_OPTN or IS_NLBL) read Fmog1 write Setmog1 stored mog1_Specified;
    property mog2:    MogNode2  Index (IS_OPTN or IS_NLBL) read Fmog2 write Setmog2 stored mog2_Specified;
    property retCode: Integer   Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string    Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : ReorderNodesMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ReorderNodesMessageResponse = class(TRemotable)
  private
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetPresentersMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetPresentersMessageResponse = class(TRemotable)
  private
    Fpresenters: PresenterObjects2;
    Fpresenters_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setpresenters(Index: Integer; const APresenterObjects2: PresenterObjects2);
    function  presenters_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property presenters: PresenterObjects2  Index (IS_OPTN or IS_NLBL) read Fpresenters write Setpresenters stored presenters_Specified;
    property retCode:    Integer            Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:      string             Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetPresenterMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetPresenterMessageResponse = class(TRemotable)
  private
    Fpresenter: PresenterObject2;
    Fpresenter_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setpresenter(Index: Integer; const APresenterObject2: PresenterObject2);
    function  presenter_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property presenter: PresenterObject2  Index (IS_OPTN or IS_NLBL) read Fpresenter write Setpresenter stored presenter_Specified;
    property retCode:   Integer           Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:     string            Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : JoinMogsMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  JoinMogsMessageResponse = class(TRemotable)
  private
    Fmog: MogNode2;
    Fmog_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setmog(Index: Integer; const AMogNode2: MogNode2);
    function  mog_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property mog:     MogNode2  Index (IS_OPTN or IS_NLBL) read Fmog write Setmog stored mog_Specified;
    property retCode: Integer   Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string    Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetPresenterMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetPresenterMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fid: guid;
    Fid_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const Aguid: guid);
    function  id_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property id:      guid             Index (IS_OPTN) read Fid write Setid stored id_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetParentByTypeMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetParentByTypeMessageResponse = class(TRemotable)
  private
    Fnode: Node2;
    Fnode_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnode(Index: Integer; const ANode2: Node2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property node:    Node2    Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetSpecialNodeMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSpecialNodeMessageResponse = class(TRemotable)
  private
    Fnode: Node2;
    Fnode_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnode(Index: Integer; const ANode2: Node2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property node:    Node2    Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : MpegProfilesMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  MpegProfilesMessageResponse = class(TRemotable)
  private
    FProfiles: MpegProfileSetObject2;
    FProfiles_Specified: boolean;
    FProfiles2TVFormats: MpegProfile_TVFormatObjects2;
    FProfiles2TVFormats_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetProfiles(Index: Integer; const AMpegProfileSetObject2: MpegProfileSetObject2);
    function  Profiles_Specified(Index: Integer): boolean;
    procedure SetProfiles2TVFormats(Index: Integer; const AMpegProfile_TVFormatObjects2: MpegProfile_TVFormatObjects2);
    function  Profiles2TVFormats_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Profiles:           MpegProfileSetObject2         Index (IS_OPTN or IS_NLBL) read FProfiles write SetProfiles stored Profiles_Specified;
    property Profiles2TVFormats: MpegProfile_TVFormatObjects2  Index (IS_OPTN or IS_NLBL) read FProfiles2TVFormats write SetProfiles2TVFormats stored Profiles2TVFormats_Specified;
    property retCode:            Integer                       Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:              string                        Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : SetUserProfileMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetUserProfileMessageResponse = class(TRemotable)
  private
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetMetadataTemplatesMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetMetadataTemplatesMessageResponse = class(TRemotable)
  private
    Ftemplates: MetadataTemplateSetObject2;
    Ftemplates_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Settemplates(Index: Integer; const AMetadataTemplateSetObject2: MetadataTemplateSetObject2);
    function  templates_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property templates: MetadataTemplateSetObject2  Index (IS_OPTN or IS_NLBL) read Ftemplates write Settemplates stored templates_Specified;
    property retCode:   Integer                     Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:     string                      Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : SetUserProfileMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetUserProfileMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fusername: string;
    Fusername_Specified: boolean;
    Fprofile: TByteDynArray;
    Fprofile_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setusername(Index: Integer; const Astring: string);
    function  username_Specified(Index: Integer): boolean;
    procedure Setprofile(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  profile_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:  ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property username: string           Index (IS_OPTN or IS_NLBL) read Fusername write Setusername stored username_Specified;
    property profile:  TByteDynArray    Index (IS_OPTN or IS_NLBL) read Fprofile write Setprofile stored profile_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetProfileMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetProfileMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Ftype_: ProfileType;
    Ftype__Specified: boolean;
    Fuser: string;
    Fuser_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Settype_(Index: Integer; const AProfileType: ProfileType);
    function  type__Specified(Index: Integer): boolean;
    procedure Setuser(Index: Integer; const Astring: string);
    function  user_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property type_:   ProfileType      Index (IS_OPTN) read Ftype_ write Settype_ stored type__Specified;
    property user:    string           Index (IS_OPTN or IS_NLBL) read Fuser write Setuser stored user_Specified;
  end;



  // ************************************************************************ //
  // XML       : SetPropertiesMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetPropertiesMessageResponse = class(TRemotable)
  private
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : SetPropertyMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetPropertyMessageResponse = class(TRemotable)
  private
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : CreateNodeByNodeMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateNodeByNodeMessageResponse = class(TRemotable)
  private
    Fnode: Node2;
    Fnode_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnode(Index: Integer; const ANode2: Node2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property node:    Node2    Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : MoveNodeMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  MoveNodeMessageResponse = class(TRemotable)
  private
    Fnode: Node2;
    Fnode_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnode(Index: Integer; const ANode2: Node2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property node:    Node2    Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : CopyNodeMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CopyNodeMessageResponse = class(TRemotable)
  private
    Fnode: Node2;
    Fnode_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnode(Index: Integer; const ANode2: Node2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property node:    Node2    Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : DeleteNodeMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteNodeMessageResponse = class(TRemotable)
  private
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : CreateNodeMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateNodeMessageResponse = class(TRemotable)
  private
    Fnode: Node2;
    Fnode_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnode(Index: Integer; const ANode2: Node2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property node:    Node2    Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetPathForNodeResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetPathForNodeResponse = class(TRemotable)
  private
    FPath: string;
    FPath_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetPath(Index: Integer; const Astring: string);
    function  Path_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property Path:    string   Index (IS_OPTN or IS_NLBL) read FPath write SetPath stored Path_Specified;
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : RenameNodeMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  RenameNodeMessageResponse = class(TRemotable)
  private
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : RestoreNodeMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  RestoreNodeMessageResponse = class(TRemotable)
  private
    Fnode: Node2;
    Fnode_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnode(Index: Integer; const ANode2: Node2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property node:    Node2    Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : RenameNodeMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  RenameNodeMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    Fname_: string;
    Fname__Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure Setname_(Index: Integer; const Astring: string);
    function  name__Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:    NodeBase2        Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property name_:   string           Index (IS_OPTN or IS_NLBL) read Fname_ write Setname_ stored name__Specified;
  end;



  // ************************************************************************ //
  // XML       : GetHubUrlMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetHubUrlMessageResponse = class(TRemotable)
  private
    FMStrHubUrl: string;
    FMStrHubUrl_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetMStrHubUrl(Index: Integer; const Astring: string);
    function  MStrHubUrl_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property MStrHubUrl: string   Index (IS_OPTN or IS_NLBL) read FMStrHubUrl write SetMStrHubUrl stored MStrHubUrl_Specified;
    property retCode:    Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:      string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : NodeUnlockMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  NodeUnlockMessageResponse = class(TRemotable)
  private
    Fnode: Node2;
    Fnode_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnode(Index: Integer; const ANode2: Node2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property node:    Node2    Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : NodeLockMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  NodeLockMessageResponse = class(TRemotable)
  private
    Fnode: Node2;
    Fnode_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnode(Index: Integer; const ANode2: Node2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property node:    Node2    Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : IsHasChildrenMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  IsHasChildrenMessageResponse = class(TRemotable)
  private
    FisHasChildren: Boolean;
    FisHasChildren_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetisHasChildren(Index: Integer; const ABoolean: Boolean);
    function  isHasChildren_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property isHasChildren: Boolean  Index (IS_OPTN) read FisHasChildren write SetisHasChildren stored isHasChildren_Specified;
    property retCode:       Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:         string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetChildrenPageMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetChildrenPageMessageResponse = class(TRemotable)
  private
    Fnodes: ArrayOfNode;
    Fnodes_Specified: boolean;
    Fcount: Integer;
    Fcount_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    FtotalCount: Integer;
    FtotalCount_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnodes(Index: Integer; const AArrayOfNode: ArrayOfNode);
    function  nodes_Specified(Index: Integer): boolean;
    procedure Setcount(Index: Integer; const AInteger: Integer);
    function  count_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure SettotalCount(Index: Integer; const AInteger: Integer);
    function  totalCount_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property nodes:      ArrayOfNode  Index (IS_OPTN or IS_NLBL) read Fnodes write Setnodes stored nodes_Specified;
    property count:      Integer      Index (IS_OPTN) read Fcount write Setcount stored count_Specified;
    property retCode:    Integer      Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property totalCount: Integer      Index (IS_OPTN) read FtotalCount write SettotalCount stored totalCount_Specified;
    property error:      string       Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetNodesCountMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNodesCountMessageResponse = class(TRemotable)
  private
    Fcount: Integer;
    Fcount_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setcount(Index: Integer; const AInteger: Integer);
    function  count_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property count:   Integer  Index (IS_OPTN) read Fcount write Setcount stored count_Specified;
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : CreateJobMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateJobMessageResponse = class(TRemotable)
  private
    Fnode: Node2;
    Fnode_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnode(Index: Integer; const ANode2: Node2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property node:    Node2    Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : AddNodeTagMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  AddNodeTagMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fm_NodeID: NODEID2;
    Fm_NodeID_Specified: boolean;
    Ftag: string;
    Ftag_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setm_NodeID(Index: Integer; const ANODEID2: NODEID2);
    function  m_NodeID_Specified(Index: Integer): boolean;
    procedure Settag(Index: Integer; const Astring: string);
    function  tag_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:  ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property m_NodeID: NODEID2          Index (IS_OPTN) read Fm_NodeID write Setm_NodeID stored m_NodeID_Specified;
    property tag:      string           Index (IS_OPTN or IS_NLBL) read Ftag write Settag stored tag_Specified;
  end;



  // ************************************************************************ //
  // XML       : HeartBeatMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  HeartBeatMessageResponse = class(TRemotable)
  private
    FnVersion: Integer;
    FnVersion_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetnVersion(Index: Integer; const AInteger: Integer);
    function  nVersion_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property nVersion: Integer  Index (IS_OPTN) read FnVersion write SetnVersion stored nVersion_Specified;
    property retCode:  Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:    string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : TagsCloudMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TagsCloudMessageResponse = class(TRemotable)
  private
    Ftags: TagsCloudObject2;
    Ftags_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Settags(Index: Integer; const ATagsCloudObject2: TagsCloudObject2);
    function  tags_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property tags:    TagsCloudObject2  Index (IS_OPTN or IS_NLBL) read Ftags write Settags stored tags_Specified;
    property retCode: Integer           Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string            Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : RemoveNodeTagMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  RemoveNodeTagMessageResponse = class(TRemotable)
  private
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : AddNodeTagMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  AddNodeTagMessageResponse = class(TRemotable)
  private
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : RemoveNodeTagMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  RemoveNodeTagMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fm_NodeID: NODEID2;
    Fm_NodeID_Specified: boolean;
    Ftag: string;
    Ftag_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setm_NodeID(Index: Integer; const ANODEID2: NODEID2);
    function  m_NodeID_Specified(Index: Integer): boolean;
    procedure Settag(Index: Integer; const Astring: string);
    function  tag_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:  ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property m_NodeID: NODEID2          Index (IS_OPTN) read Fm_NodeID write Setm_NodeID stored m_NodeID_Specified;
    property tag:      string           Index (IS_OPTN or IS_NLBL) read Ftag write Settag stored tag_Specified;
  end;



  // ************************************************************************ //
  // XML       : CreateSubClipMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateSubClipMessageResponse = class(TRemotable)
  private
    Fnode: ClipNode2;
    Fnode_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnode(Index: Integer; const AClipNode2: ClipNode2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property node:    ClipNode2  Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property retCode: Integer    Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string     Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetNodeIDsByTypeMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNodeIDsByTypeMessageResponse = class(TRemotable)
  private
    FnodeIDs: ArrayOfNodeBase;
    FnodeIDs_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetnodeIDs(Index: Integer; const AArrayOfNodeBase: ArrayOfNodeBase);
    function  nodeIDs_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property nodeIDs: ArrayOfNodeBase  Index (IS_OPTN or IS_NLBL) read FnodeIDs write SetnodeIDs stored nodeIDs_Specified;
    property retCode: Integer          Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string           Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetAllNewsMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetAllNewsMessageResponse = class(TRemotable)
  private
    FnodeIDs: ArrayOfNodeBase;
    FnodeIDs_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetnodeIDs(Index: Integer; const AArrayOfNodeBase: ArrayOfNodeBase);
    function  nodeIDs_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property nodeIDs: ArrayOfNodeBase  Index (IS_OPTN or IS_NLBL) read FnodeIDs write SetnodeIDs stored nodeIDs_Specified;
    property retCode: Integer          Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string           Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;

  NewsFlags       =  type string;      { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblSmpl] }


  // ************************************************************************ //
  // XML       : GetExtraDataMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetExtraDataMessageResponse = class(TRemotable)
  private
    FextraData: string;
    FextraData_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetextraData(Index: Integer; const Astring: string);
    function  extraData_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property extraData: string   Index (IS_OPTN or IS_NLBL) read FextraData write SetextraData stored extraData_Specified;
    property retCode:   Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:     string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetBreakingNewsResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetBreakingNewsResponse = class(TRemotable)
  private
    FnodeIDs: ArrayOfNodeBase;
    FnodeIDs_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetnodeIDs(Index: Integer; const AArrayOfNodeBase: ArrayOfNodeBase);
    function  nodeIDs_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property nodeIDs: ArrayOfNodeBase  Index (IS_OPTN or IS_NLBL) read FnodeIDs write SetnodeIDs stored nodeIDs_Specified;
    property retCode: Integer          Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string           Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetNodesCountMessageResponseEx, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNodesCountMessageResponseEx = class(TRemotable)
  private
    Fcount: Integer;
    Fcount_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setcount(Index: Integer; const AInteger: Integer);
    function  count_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property count:   Integer  Index (IS_OPTN) read Fcount write Setcount stored count_Specified;
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetMediaGroupMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetMediaGroupMessageResponse = class(TRemotable)
  private
    FmediaGroups: MediaGroupObjects2;
    FmediaGroups_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetmediaGroups(Index: Integer; const AMediaGroupObjects2: MediaGroupObjects2);
    function  mediaGroups_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property mediaGroups: MediaGroupObjects2  Index (IS_OPTN or IS_NLBL) read FmediaGroups write SetmediaGroups stored mediaGroups_Specified;
    property retCode:     Integer             Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:       string              Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : SetMetadataMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetMetadataMessageResponse = class(TRemotable)
  private
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetNextJobMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNextJobMessageRequest = class(TRemotable)
  private
    FProcessorList: string;
    FProcessorList_Specified: boolean;
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    FJobStatus: Integer;
    FJobStatus_Specified: boolean;
    FJobStatusNew: Integer;
    FJobStatusNew_Specified: boolean;
    FnodeFillingType: NodeFillingType;
    FnodeFillingType_Specified: boolean;
    procedure SetProcessorList(Index: Integer; const Astring: string);
    function  ProcessorList_Specified(Index: Integer): boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure SetJobStatus(Index: Integer; const AInteger: Integer);
    function  JobStatus_Specified(Index: Integer): boolean;
    procedure SetJobStatusNew(Index: Integer; const AInteger: Integer);
    function  JobStatusNew_Specified(Index: Integer): boolean;
    procedure SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
    function  nodeFillingType_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property ProcessorList:   string           Index (IS_OPTN or IS_NLBL) read FProcessorList write SetProcessorList stored ProcessorList_Specified;
    property context:         ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property JobStatus:       Integer          Index (IS_OPTN) read FJobStatus write SetJobStatus stored JobStatus_Specified;
    property JobStatusNew:    Integer          Index (IS_OPTN) read FJobStatusNew write SetJobStatusNew stored JobStatusNew_Specified;
    property nodeFillingType: NodeFillingType  Index (IS_OPTN) read FnodeFillingType write SetnodeFillingType stored nodeFillingType_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetNextJobMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNextJobMessageResponse = class(TRemotable)
  private
    Fnode: JobNode2;
    Fnode_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnode(Index: Integer; const AJobNode2: JobNode2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property node:    JobNode2  Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property retCode: Integer   Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string    Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetParentByTypesMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetParentByTypesMessageResponse = class(TRemotable)
  private
    Fnode: Node2;
    Fnode_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnode(Index: Integer; const ANode2: Node2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property node:    Node2    Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetClipsByRollMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetClipsByRollMessageResponse = class(TRemotable)
  private
    Fnodes: ArrayOfNode;
    Fnodes_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnodes(Index: Integer; const AArrayOfNode: ArrayOfNode);
    function  nodes_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property nodes:   ArrayOfNode  Index (IS_OPTN or IS_NLBL) read Fnodes write Setnodes stored nodes_Specified;
    property retCode: Integer      Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string       Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : WCFServiceFault, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/CinegyServer
  // ************************************************************************ //
  WCFServiceFault2 = class(TRemotable)
  private
    FFaultID: guid;
    FFaultID_Specified: boolean;
    FFaultMessage: string;
    FFaultMessage_Specified: boolean;
    procedure SetFaultID(Index: Integer; const Aguid: guid);
    function  FaultID_Specified(Index: Integer): boolean;
    procedure SetFaultMessage(Index: Integer; const Astring: string);
    function  FaultMessage_Specified(Index: Integer): boolean;
  published
    property FaultID:      guid    Index (IS_OPTN) read FFaultID write SetFaultID stored FaultID_Specified;
    property FaultMessage: string  Index (IS_OPTN or IS_NLBL) read FFaultMessage write SetFaultMessage stored FaultMessage_Specified;
  end;



  // ************************************************************************ //
  // XML       : WCFServiceFault, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/CinegyServer
  // Info      : Fault
  // Base Types: WCFServiceFault
  // ************************************************************************ //
  WCFServiceFault = class(ERemotableException)
  private
    FFaultID: guid;
    FFaultID_Specified: boolean;
    FFaultMessage: string;
    FFaultMessage_Specified: boolean;
    procedure SetFaultID(Index: Integer; const Aguid: guid);
    function  FaultID_Specified(Index: Integer): boolean;
    procedure SetFaultMessage(Index: Integer; const Astring: string);
    function  FaultMessage_Specified(Index: Integer): boolean;
  published
    property FaultID:      guid    Index (IS_OPTN) read FFaultID write SetFaultID stored FaultID_Specified;
    property FaultMessage: string  Index (IS_OPTN or IS_NLBL) read FFaultMessage write SetFaultMessage stored FaultMessage_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetFileSetMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetFileSetMessageResponse = class(TRemotable)
  private
    FprimaryFileSet: FileSetObject2;
    FprimaryFileSet_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    FsecondaryFileSet: FileSetObject2;
    FsecondaryFileSet_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetprimaryFileSet(Index: Integer; const AFileSetObject2: FileSetObject2);
    function  primaryFileSet_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure SetsecondaryFileSet(Index: Integer; const AFileSetObject2: FileSetObject2);
    function  secondaryFileSet_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property primaryFileSet:   FileSetObject2  Index (IS_OPTN or IS_NLBL) read FprimaryFileSet write SetprimaryFileSet stored primaryFileSet_Specified;
    property retCode:          Integer         Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property secondaryFileSet: FileSetObject2  Index (IS_OPTN or IS_NLBL) read FsecondaryFileSet write SetsecondaryFileSet stored secondaryFileSet_Specified;
    property error:            string          Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetRollsByStatusMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetRollsByStatusMessageResponse = class(TRemotable)
  private
    FnodeIDs: ArrayOfNodeBase;
    FnodeIDs_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetnodeIDs(Index: Integer; const AArrayOfNodeBase: ArrayOfNodeBase);
    function  nodeIDs_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property nodeIDs: ArrayOfNodeBase  Index (IS_OPTN or IS_NLBL) read FnodeIDs write SetnodeIDs stored nodeIDs_Specified;
    property retCode: Integer          Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string           Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetJobProcessorGroupMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetJobProcessorGroupMessageResponse = class(TRemotable)
  private
    FjobProcessorGroup: JobProcessorGroupObject2;
    FjobProcessorGroup_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetjobProcessorGroup(Index: Integer; const AJobProcessorGroupObject2: JobProcessorGroupObject2);
    function  jobProcessorGroup_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property jobProcessorGroup: JobProcessorGroupObject2  Index (IS_OPTN or IS_NLBL) read FjobProcessorGroup write SetjobProcessorGroup stored jobProcessorGroup_Specified;
    property retCode:           Integer                   Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:             string                    Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetJobProcessorGroupsMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetJobProcessorGroupsMessageResponse = class(TRemotable)
  private
    FjobProcessorGroups: JobProcessorGroupObjects2;
    FjobProcessorGroups_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetjobProcessorGroups(Index: Integer; const AJobProcessorGroupObjects2: JobProcessorGroupObjects2);
    function  jobProcessorGroups_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property jobProcessorGroups: JobProcessorGroupObjects2  Index (IS_OPTN or IS_NLBL) read FjobProcessorGroups write SetjobProcessorGroups stored jobProcessorGroups_Specified;
    property retCode:            Integer                    Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:              string                     Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetClipsByMogMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetClipsByMogMessageResponse = class(TRemotable)
  private
    Fnodes: ArrayOfNode;
    Fnodes_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnodes(Index: Integer; const AArrayOfNode: ArrayOfNode);
    function  nodes_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property nodes:   ArrayOfNode  Index (IS_OPTN or IS_NLBL) read Fnodes write Setnodes stored nodes_Specified;
    property retCode: Integer      Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string       Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : SetPropertiesByNameMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetPropertiesByNameMessageResponse = class(TRemotable)
  private
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : ExportMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ExportMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    FpluginID: string;
    FpluginID_Specified: boolean;
    FpluginParams: string;
    FpluginParams_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure SetpluginID(Index: Integer; const Astring: string);
    function  pluginID_Specified(Index: Integer): boolean;
    procedure SetpluginParams(Index: Integer; const Astring: string);
    function  pluginParams_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:      ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property pluginID:     string           Index (IS_OPTN or IS_NLBL) read FpluginID write SetpluginID stored pluginID_Specified;
    property pluginParams: string           Index (IS_OPTN or IS_NLBL) read FpluginParams write SetpluginParams stored pluginParams_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetStoryTypesMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetStoryTypesMessageResponse = class(TRemotable)
  private
    FstoryTypes: StoryTypeObjects2;
    FstoryTypes_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetstoryTypes(Index: Integer; const AStoryTypeObjects2: StoryTypeObjects2);
    function  storyTypes_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property storyTypes: StoryTypeObjects2  Index (IS_OPTN or IS_NLBL) read FstoryTypes write SetstoryTypes stored storyTypes_Specified;
    property retCode:    Integer            Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:      string             Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : SlaveDatabasesMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SlaveDatabasesMessageResponse = class(TRemotable)
  private
    Fdatabases: SlaveDatabaseObjects2;
    Fdatabases_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setdatabases(Index: Integer; const ASlaveDatabaseObjects2: SlaveDatabaseObjects2);
    function  databases_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property databases: SlaveDatabaseObjects2  Index (IS_OPTN or IS_NLBL) read Fdatabases write Setdatabases stored databases_Specified;
    property retCode:   Integer                Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:     string                 Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetNodesByTypeMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNodesByTypeMessageResponse = class(TRemotable)
  private
    Fnodes: ArrayOfNode;
    Fnodes_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnodes(Index: Integer; const AArrayOfNode: ArrayOfNode);
    function  nodes_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property nodes:   ArrayOfNode  Index (IS_OPTN or IS_NLBL) read Fnodes write Setnodes stored nodes_Specified;
    property retCode: Integer      Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string       Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : ExportMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ExportMessageResponse = class(TRemotable)
  private
    FresultXML: string;
    FresultXML_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetresultXML(Index: Integer; const Astring: string);
    function  resultXML_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property resultXML: string   Index (IS_OPTN or IS_NLBL) read FresultXML write SetresultXML stored resultXML_Specified;
    property retCode:   Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:     string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetEditorsMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetEditorsMessageResponse = class(TRemotable)
  private
    Feditors: EditorObjects2;
    Feditors_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Seteditors(Index: Integer; const AEditorObjects2: EditorObjects2);
    function  editors_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property editors: EditorObjects2  Index (IS_OPTN or IS_NLBL) read Feditors write Seteditors stored editors_Specified;
    property retCode: Integer         Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string          Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetWorkflowStepMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetWorkflowStepMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fid: guid;
    Fid_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const Aguid: guid);
    function  id_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property id:      guid             Index (IS_OPTN) read Fid write Setid stored id_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetEditorMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetEditorMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fid: guid;
    Fid_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const Aguid: guid);
    function  id_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property id:      guid             Index (IS_OPTN) read Fid write Setid stored id_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetEditorMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetEditorMessageResponse = class(TRemotable)
  private
    Feditor: EditorObject2;
    Feditor_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Seteditor(Index: Integer; const AEditorObject2: EditorObject2);
    function  editor_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property editor:  EditorObject2  Index (IS_OPTN or IS_NLBL) read Feditor write Seteditor stored editor_Specified;
    property retCode: Integer        Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string         Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetStoryTypeMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetStoryTypeMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fid: guid;
    Fid_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const Aguid: guid);
    function  id_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property id:      guid             Index (IS_OPTN) read Fid write Setid stored id_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetStoryTypeMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetStoryTypeMessageResponse = class(TRemotable)
  private
    FstoryType: StoryTypeObject2;
    FstoryType_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetstoryType(Index: Integer; const AStoryTypeObject2: StoryTypeObject2);
    function  storyType_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property storyType: StoryTypeObject2  Index (IS_OPTN or IS_NLBL) read FstoryType write SetstoryType stored storyType_Specified;
    property retCode:   Integer           Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:     string            Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetWorkflowStepsMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetWorkflowStepsMessageResponse = class(TRemotable)
  private
    FworkflowSteps: WorkflowStepObjects2;
    FworkflowSteps_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetworkflowSteps(Index: Integer; const AWorkflowStepObjects2: WorkflowStepObjects2);
    function  workflowSteps_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property workflowSteps: WorkflowStepObjects2  Index (IS_OPTN or IS_NLBL) read FworkflowSteps write SetworkflowSteps stored workflowSteps_Specified;
    property retCode:       Integer               Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:         string                Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetWorkflowStepMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetWorkflowStepMessageResponse = class(TRemotable)
  private
    FworkflowStep: WorkflowStepObject2;
    FworkflowStep_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetworkflowStep(Index: Integer; const AWorkflowStepObject2: WorkflowStepObject2);
    function  workflowStep_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property workflowStep: WorkflowStepObject2  Index (IS_OPTN or IS_NLBL) read FworkflowStep write SetworkflowStep stored workflowStep_Specified;
    property retCode:      Integer              Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:        string               Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : WriteLogMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  WriteLogMessageResponse = class(TRemotable)
  private
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : AsyncCopyNodeMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  AsyncCopyNodeMessageResponse = class(TRemotable)
  private
    FcommandContext: AsyncCommandContext2;
    FcommandContext_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetcommandContext(Index: Integer; const AAsyncCommandContext2: AsyncCommandContext2);
    function  commandContext_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property commandContext: AsyncCommandContext2  Index (IS_OPTN or IS_NLBL) read FcommandContext write SetcommandContext stored commandContext_Specified;
    property retCode:        Integer               Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:          string                Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetFilesPathMessageResponseEx, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetFilesPathMessageResponseEx = class(TRemotable)
  private
    FpathID: Integer;
    FpathID_Specified: boolean;
    FfilePath: string;
    FfilePath_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetpathID(Index: Integer; const AInteger: Integer);
    function  pathID_Specified(Index: Integer): boolean;
    procedure SetfilePath(Index: Integer; const Astring: string);
    function  filePath_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property pathID:   Integer  Index (IS_OPTN) read FpathID write SetpathID stored pathID_Specified;
    property filePath: string   Index (IS_OPTN or IS_NLBL) read FfilePath write SetfilePath stored filePath_Specified;
    property retCode:  Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:    string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : JobCreationInfoMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  JobCreationInfoMessageResponse = class(TRemotable)
  private
    Finfo: JobCreationInfoObjects2;
    Finfo_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setinfo(Index: Integer; const AJobCreationInfoObjects2: JobCreationInfoObjects2);
    function  info_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property info:    JobCreationInfoObjects2  Index (IS_OPTN or IS_NLBL) read Finfo write Setinfo stored info_Specified;
    property retCode: Integer                  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string                   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : NodesByFieldMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  NodesByFieldMessageResponse = class(TRemotable)
  private
    Fnodes: ArrayOfNode;
    Fnodes_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnodes(Index: Integer; const AArrayOfNode: ArrayOfNode);
    function  nodes_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property nodes:   ArrayOfNode  Index (IS_OPTN or IS_NLBL) read Fnodes write Setnodes stored nodes_Specified;
    property retCode: Integer      Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string       Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : NodesByFieldsMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  NodesByFieldsMessageResponse = class(TRemotable)
  private
    Fnodes: ArrayOfNode;
    Fnodes_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnodes(Index: Integer; const AArrayOfNode: ArrayOfNode);
    function  nodes_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property nodes:   ArrayOfNode  Index (IS_OPTN or IS_NLBL) read Fnodes write Setnodes stored nodes_Specified;
    property retCode: Integer      Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string       Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetAsyncCommandResultResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetAsyncCommandResultResponse = class(TRemotable)
  private
    FcommandResult: AsyncCommandResult2;
    FcommandResult_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetcommandResult(Index: Integer; const AAsyncCommandResult2: AsyncCommandResult2);
    function  commandResult_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property commandResult: AsyncCommandResult2  Index (IS_OPTN or IS_NLBL) read FcommandResult write SetcommandResult stored commandResult_Specified;
    property retCode:       Integer              Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:         string               Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : ExecuteCommandsMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ExecuteCommandsMessageResponse = class(TRemotable)
  private
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetFilesPathMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetFilesPathMessageResponse = class(TRemotable)
  private
    FpathID: Integer;
    FpathID_Specified: boolean;
    FfilePath: string;
    FfilePath_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetpathID(Index: Integer; const AInteger: Integer);
    function  pathID_Specified(Index: Integer): boolean;
    procedure SetfilePath(Index: Integer; const Astring: string);
    function  filePath_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property pathID:   Integer  Index (IS_OPTN) read FpathID write SetpathID stored pathID_Specified;
    property filePath: string   Index (IS_OPTN or IS_NLBL) read FfilePath write SetfilePath stored filePath_Specified;
    property retCode:  Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:    string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : TVFormatInfoMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TVFormatInfoMessageResponse = class(TRemotable)
  private
    Ftvformats: TVFormatObjects2;
    Ftvformats_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Settvformats(Index: Integer; const ATVFormatObjects2: TVFormatObjects2);
    function  tvformats_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property tvformats: TVFormatObjects2  Index (IS_OPTN or IS_NLBL) read Ftvformats write Settvformats stored tvformats_Specified;
    property retCode:   Integer           Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:     string            Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetMetadataMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetMetadataMessageResponse = class(TRemotable)
  private
    Fmetadata: MetadataSetObject2;
    Fmetadata_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setmetadata(Index: Integer; const AMetadataSetObject2: MetadataSetObject2);
    function  metadata_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property metadata: MetadataSetObject2  Index (IS_OPTN or IS_NLBL) read Fmetadata write Setmetadata stored metadata_Specified;
    property retCode:  Integer             Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:    string              Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetJobsMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetJobsMessageResponse = class(TRemotable)
  private
    Fjobs: ArrayOfJobNode;
    Fjobs_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setjobs(Index: Integer; const AArrayOfJobNode: ArrayOfJobNode);
    function  jobs_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property jobs:    ArrayOfJobNode  Index (IS_OPTN or IS_NLBL) read Fjobs write Setjobs stored jobs_Specified;
    property retCode: Integer         Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string          Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : SubTypeInfoMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SubTypeInfoMessageResponse = class(TRemotable)
  private
    Fsubtypes: SubTypeObjects2;
    Fsubtypes_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setsubtypes(Index: Integer; const ASubTypeObjects2: SubTypeObjects2);
    function  subtypes_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property subtypes: SubTypeObjects2  Index (IS_OPTN or IS_NLBL) read Fsubtypes write Setsubtypes stored subtypes_Specified;
    property retCode:  Integer          Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:    string           Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : ColorMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ColorMessageResponse = class(TRemotable)
  private
    FTotal: Integer;
    FTotal_Specified: boolean;
    Fresults: ColorParameterObjects2;
    Fresults_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetTotal(Index: Integer; const AInteger: Integer);
    function  Total_Specified(Index: Integer): boolean;
    procedure Setresults(Index: Integer; const AColorParameterObjects2: ColorParameterObjects2);
    function  results_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Total:   Integer                 Index (IS_OPTN) read FTotal write SetTotal stored Total_Specified;
    property results: ColorParameterObjects2  Index (IS_OPTN or IS_NLBL) read Fresults write Setresults stored results_Specified;
    property retCode: Integer                 Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string                  Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetSessionsCountResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSessionsCountResponse = class(TRemotable)
  private
    FTotal: Integer;
    FTotal_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetTotal(Index: Integer; const AInteger: Integer);
    function  Total_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property Total:   Integer  Index (IS_OPTN) read FTotal write SetTotal stored Total_Specified;
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : LogTemplateMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  LogTemplateMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fm_strName: string;
    Fm_strName_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setm_strName(Index: Integer; const Astring: string);
    function  m_strName_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:   ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property m_strName: string           Index (IS_OPTN or IS_NLBL) read Fm_strName write Setm_strName stored m_strName_Specified;
  end;



  // ************************************************************************ //
  // XML       : UserActionsMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UserActionsMessageResponse = class(TRemotable)
  private
    FTotal: Integer;
    FTotal_Specified: boolean;
    Factions: UserActionObjects2;
    Factions_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetTotal(Index: Integer; const AInteger: Integer);
    function  Total_Specified(Index: Integer): boolean;
    procedure Setactions(Index: Integer; const AUserActionObjects2: UserActionObjects2);
    function  actions_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Total:   Integer             Index (IS_OPTN) read FTotal write SetTotal stored Total_Specified;
    property actions: UserActionObjects2  Index (IS_OPTN or IS_NLBL) read Factions write Setactions stored actions_Specified;
    property retCode: Integer             Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string              Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : UserActionsMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UserActionsMessageRequest = class(TRemotable)
  private
    FUserName: string;
    FUserName_Specified: boolean;
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    FEnabled: Integer;
    FEnabled_Specified: boolean;
    procedure SetUserName(Index: Integer; const Astring: string);
    function  UserName_Specified(Index: Integer): boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure SetEnabled(Index: Integer; const AInteger: Integer);
    function  Enabled_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property UserName: string           Index (IS_OPTN or IS_NLBL) read FUserName write SetUserName stored UserName_Specified;
    property context:  ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property Enabled:  Integer          Index (IS_OPTN) read FEnabled write SetEnabled stored Enabled_Specified;
  end;



  // ************************************************************************ //
  // XML       : LogTemplateMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  LogTemplateMessageResponse = class(TRemotable)
  private
    FTotal: Integer;
    FTotal_Specified: boolean;
    Fresults: LogTemplateObjects2;
    Fresults_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetTotal(Index: Integer; const AInteger: Integer);
    function  Total_Specified(Index: Integer): boolean;
    procedure Setresults(Index: Integer; const ALogTemplateObjects2: LogTemplateObjects2);
    function  results_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Total:   Integer              Index (IS_OPTN) read FTotal write SetTotal stored Total_Specified;
    property results: LogTemplateObjects2  Index (IS_OPTN or IS_NLBL) read Fresults write Setresults stored results_Specified;
    property retCode: Integer              Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string               Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : UpdateUnsubscribeResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateUnsubscribeResponse = class(TRemotable)
  private
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : UpdateSubscribeResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateSubscribeResponse = class(TRemotable)
  private
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GPMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GPMessageResponse = class(TRemotable)
  private
    FTotal: Integer;
    FTotal_Specified: boolean;
    Fresults: GlobalParameterObjects2;
    Fresults_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetTotal(Index: Integer; const AInteger: Integer);
    function  Total_Specified(Index: Integer): boolean;
    procedure Setresults(Index: Integer; const AGlobalParameterObjects2: GlobalParameterObjects2);
    function  results_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Total:   Integer                  Index (IS_OPTN) read FTotal write SetTotal stored Total_Specified;
    property results: GlobalParameterObjects2  Index (IS_OPTN or IS_NLBL) read Fresults write Setresults stored results_Specified;
    property retCode: Integer                  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string                   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GPMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GPMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fm_strGPName: string;
    Fm_strGPName_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setm_strGPName(Index: Integer; const Astring: string);
    function  m_strGPName_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:     ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property m_strGPName: string           Index (IS_OPTN or IS_NLBL) read Fm_strGPName write Setm_strGPName stored m_strGPName_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetUpdatesResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetUpdatesResponse = class(TRemotable)
  private
    Fupdates: ArrayOfBaseUpdate;
    Fupdates_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setupdates(Index: Integer; const AArrayOfBaseUpdate: ArrayOfBaseUpdate);
    function  updates_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property updates: ArrayOfBaseUpdate  Index (IS_OPTN or IS_NLBL) read Fupdates write Setupdates stored updates_Specified;
    property retCode: Integer            Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string             Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : NodeChildrenIDsMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  NodeChildrenIDsMessageResponse = class(TRemotable)
  private
    FnodeIDs: ArrayOfNodeBase;
    FnodeIDs_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetnodeIDs(Index: Integer; const AArrayOfNodeBase: ArrayOfNodeBase);
    function  nodeIDs_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property nodeIDs: ArrayOfNodeBase  Index (IS_OPTN or IS_NLBL) read FnodeIDs write SetnodeIDs stored nodeIDs_Specified;
    property retCode: Integer          Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string           Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : NodeMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  NodeMessageResponse = class(TRemotable)
  private
    Fnode: Node2;
    Fnode_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnode(Index: Integer; const ANode2: Node2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property node:    Node2    Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : NodeChildrenMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  NodeChildrenMessageResponse = class(TRemotable)
  private
    Fnodes: ArrayOfNode;
    Fnodes_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnodes(Index: Integer; const AArrayOfNode: ArrayOfNode);
    function  nodes_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property nodes:   ArrayOfNode  Index (IS_OPTN or IS_NLBL) read Fnodes write Setnodes stored nodes_Specified;
    property retCode: Integer      Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string       Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : DisconnectMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DisconnectMessageResponse = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property retCode: Integer          Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string           Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : ConnectMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ConnectMessageResponse = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property retCode: Integer          Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string           Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : SearchNewsMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SearchNewsMessageRequest = class(TRemotable)
  private
    FSearchQuery: string;
    FSearchQuery_Specified: boolean;
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    procedure SetSearchQuery(Index: Integer; const Astring: string);
    function  SearchQuery_Specified(Index: Integer): boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property SearchQuery: string           Index (IS_OPTN or IS_NLBL) read FSearchQuery write SetSearchQuery stored SearchQuery_Specified;
    property context:     ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
  end;



  // ************************************************************************ //
  // XML       : SearchNewsListMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SearchNewsListMessageResponse = class(TRemotable)
  private
    FTotal: Integer;
    FTotal_Specified: boolean;
    Fresults: ArrayOfSearchNodesListResult;
    Fresults_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetTotal(Index: Integer; const AInteger: Integer);
    function  Total_Specified(Index: Integer): boolean;
    procedure Setresults(Index: Integer; const AArrayOfSearchNodesListResult: ArrayOfSearchNodesListResult);
    function  results_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Total:   Integer                       Index (IS_OPTN) read FTotal write SetTotal stored Total_Specified;
    property results: ArrayOfSearchNodesListResult  Index (IS_OPTN or IS_NLBL) read Fresults write Setresults stored results_Specified;
    property retCode: Integer                       Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string                        Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : Search2MessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  Search2MessageResponse = class(TRemotable)
  private
    FTotal: Integer;
    FTotal_Specified: boolean;
    Fresults: ArrayOfSearch2Result;
    Fresults_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetTotal(Index: Integer; const AInteger: Integer);
    function  Total_Specified(Index: Integer): boolean;
    procedure Setresults(Index: Integer; const AArrayOfSearch2Result: ArrayOfSearch2Result);
    function  results_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Total:   Integer               Index (IS_OPTN) read FTotal write SetTotal stored Total_Specified;
    property results: ArrayOfSearch2Result  Index (IS_OPTN or IS_NLBL) read Fresults write Setresults stored results_Specified;
    property retCode: Integer               Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string                Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : SearchListMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SearchListMessageResponse = class(TRemotable)
  private
    FTotal: Integer;
    FTotal_Specified: boolean;
    Fresults: ArrayOfSearchListResult;
    Fresults_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetTotal(Index: Integer; const AInteger: Integer);
    function  Total_Specified(Index: Integer): boolean;
    procedure Setresults(Index: Integer; const AArrayOfSearchListResult: ArrayOfSearchListResult);
    function  results_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Total:   Integer                  Index (IS_OPTN) read FTotal write SetTotal stored Total_Specified;
    property results: ArrayOfSearchListResult  Index (IS_OPTN or IS_NLBL) read Fresults write Setresults stored results_Specified;
    property retCode: Integer                  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string                   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : SearchMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SearchMessageResponse = class(TRemotable)
  private
    FTotal: Integer;
    FTotal_Specified: boolean;
    Fresults: ArrayOfSearchResult;
    Fresults_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetTotal(Index: Integer; const AInteger: Integer);
    function  Total_Specified(Index: Integer): boolean;
    procedure Setresults(Index: Integer; const AArrayOfSearchResult: ArrayOfSearchResult);
    function  results_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Total:   Integer              Index (IS_OPTN) read FTotal write SetTotal stored Total_Specified;
    property results: ArrayOfSearchResult  Index (IS_OPTN or IS_NLBL) read Fresults write Setresults stored results_Specified;
    property retCode: Integer              Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string               Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetNodeMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNodeMessageResponse = class(TRemotable)
  private
    Fnode: Node2;
    Fnode_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setnode(Index: Integer; const ANode2: Node2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property node:    Node2    Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property retCode: Integer  Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string   Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : ConnectContext, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/CASCommonObjects
  // ************************************************************************ //
  ConnectContext2 = class(TRemotable)
  private
    F_id: guid;
  published
    property _id: guid  read F_id write F_id;
  end;



  // ************************************************************************ //
  // XML       : ConnectContext, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/CASCommonObjects
  // ************************************************************************ //
  ConnectContext = class(ConnectContext2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : GetFilesPathMessageRequestEx, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetFilesPathMessageRequestEx = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    FfileType: MAM_FILE_TYPES;
    FfileType_Specified: boolean;
    FauxFileType: string;
    FauxFileType_Specified: boolean;
    Fquality: Integer;
    Fquality_Specified: boolean;
    FisUseDegradation: Boolean;
    FisUseDegradation_Specified: boolean;
    FmediaGroupId: Integer;
    FmediaGroupId_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure SetfileType(Index: Integer; const AMAM_FILE_TYPES: MAM_FILE_TYPES);
    function  fileType_Specified(Index: Integer): boolean;
    procedure SetauxFileType(Index: Integer; const Astring: string);
    function  auxFileType_Specified(Index: Integer): boolean;
    procedure Setquality(Index: Integer; const AInteger: Integer);
    function  quality_Specified(Index: Integer): boolean;
    procedure SetisUseDegradation(Index: Integer; const ABoolean: Boolean);
    function  isUseDegradation_Specified(Index: Integer): boolean;
    procedure SetmediaGroupId(Index: Integer; const AInteger: Integer);
    function  mediaGroupId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:          ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property fileType:         MAM_FILE_TYPES   Index (IS_OPTN) read FfileType write SetfileType stored fileType_Specified;
    property auxFileType:      string           Index (IS_OPTN or IS_NLBL) read FauxFileType write SetauxFileType stored auxFileType_Specified;
    property quality:          Integer          Index (IS_OPTN) read Fquality write Setquality stored quality_Specified;
    property isUseDegradation: Boolean          Index (IS_OPTN) read FisUseDegradation write SetisUseDegradation stored isUseDegradation_Specified;
    property mediaGroupId:     Integer          Index (IS_OPTN) read FmediaGroupId write SetmediaGroupId stored mediaGroupId_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetFilesPathMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetFilesPathMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    FfileType: MAM_FILE_TYPES;
    FfileType_Specified: boolean;
    FauxFileType: string;
    FauxFileType_Specified: boolean;
    Fquality: Integer;
    Fquality_Specified: boolean;
    FisUseDegradation: Boolean;
    FisUseDegradation_Specified: boolean;
    FisArchive: Boolean;
    FisArchive_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure SetfileType(Index: Integer; const AMAM_FILE_TYPES: MAM_FILE_TYPES);
    function  fileType_Specified(Index: Integer): boolean;
    procedure SetauxFileType(Index: Integer; const Astring: string);
    function  auxFileType_Specified(Index: Integer): boolean;
    procedure Setquality(Index: Integer; const AInteger: Integer);
    function  quality_Specified(Index: Integer): boolean;
    procedure SetisUseDegradation(Index: Integer; const ABoolean: Boolean);
    function  isUseDegradation_Specified(Index: Integer): boolean;
    procedure SetisArchive(Index: Integer; const ABoolean: Boolean);
    function  isArchive_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:          ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property fileType:         MAM_FILE_TYPES   Index (IS_OPTN) read FfileType write SetfileType stored fileType_Specified;
    property auxFileType:      string           Index (IS_OPTN or IS_NLBL) read FauxFileType write SetauxFileType stored auxFileType_Specified;
    property quality:          Integer          Index (IS_OPTN) read Fquality write Setquality stored quality_Specified;
    property isUseDegradation: Boolean          Index (IS_OPTN) read FisUseDegradation write SetisUseDegradation stored isUseDegradation_Specified;
    property isArchive:        Boolean          Index (IS_OPTN) read FisArchive write SetisArchive stored isArchive_Specified;
  end;



  // ************************************************************************ //
  // XML       : ConnectMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ConnectMessageRequest = class(TRemotable)
  private
    Fserver: string;
    Fserver_Specified: boolean;
    Fport: Integer;
    Fport_Specified: boolean;
    Fdatabase: string;
    Fdatabase_Specified: boolean;
    FconnectionType: ConnectionType;
    FconnectionType_Specified: boolean;
    Fusername: string;
    Fusername_Specified: boolean;
    Fpassword: string;
    Fpassword_Specified: boolean;
    Fapplication_: string;
    Fapplication__Specified: boolean;
    Fdomain: string;
    Fdomain_Specified: boolean;
    Fwrapper: WrapperType;
    Fwrapper_Specified: boolean;
    procedure Setserver(Index: Integer; const Astring: string);
    function  server_Specified(Index: Integer): boolean;
    procedure Setport(Index: Integer; const AInteger: Integer);
    function  port_Specified(Index: Integer): boolean;
    procedure Setdatabase(Index: Integer; const Astring: string);
    function  database_Specified(Index: Integer): boolean;
    procedure SetconnectionType(Index: Integer; const AConnectionType: ConnectionType);
    function  connectionType_Specified(Index: Integer): boolean;
    procedure Setusername(Index: Integer; const Astring: string);
    function  username_Specified(Index: Integer): boolean;
    procedure Setpassword(Index: Integer; const Astring: string);
    function  password_Specified(Index: Integer): boolean;
    procedure Setapplication_(Index: Integer; const Astring: string);
    function  application__Specified(Index: Integer): boolean;
    procedure Setdomain(Index: Integer; const Astring: string);
    function  domain_Specified(Index: Integer): boolean;
    procedure Setwrapper(Index: Integer; const AWrapperType: WrapperType);
    function  wrapper_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property server:         string          Index (IS_OPTN or IS_NLBL) read Fserver write Setserver stored server_Specified;
    property port:           Integer         Index (IS_OPTN) read Fport write Setport stored port_Specified;
    property database:       string          Index (IS_OPTN or IS_NLBL) read Fdatabase write Setdatabase stored database_Specified;
    property connectionType: ConnectionType  Index (IS_OPTN) read FconnectionType write SetconnectionType stored connectionType_Specified;
    property username:       string          Index (IS_OPTN or IS_NLBL) read Fusername write Setusername stored username_Specified;
    property password:       string          Index (IS_OPTN or IS_NLBL) read Fpassword write Setpassword stored password_Specified;
    property application_:   string          Index (IS_OPTN or IS_NLBL) read Fapplication_ write Setapplication_ stored application__Specified;
    property domain:         string          Index (IS_OPTN or IS_NLBL) read Fdomain write Setdomain stored domain_Specified;
    property wrapper:        WrapperType     Index (IS_OPTN) read Fwrapper write Setwrapper stored wrapper_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetParentByTypeMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetParentByTypeMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    Ftype_: NODE_TYPE;
    Ftype__Specified: boolean;
    Fsubtype: Integer;
    Fsubtype_Specified: boolean;
    FnodeFillingType: NodeFillingType;
    FnodeFillingType_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure Settype_(Index: Integer; const ANODE_TYPE: NODE_TYPE);
    function  type__Specified(Index: Integer): boolean;
    procedure Setsubtype(Index: Integer; const AInteger: Integer);
    function  subtype_Specified(Index: Integer): boolean;
    procedure SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
    function  nodeFillingType_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:         ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:            NodeBase2        Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property type_:           NODE_TYPE        Index (IS_OPTN) read Ftype_ write Settype_ stored type__Specified;
    property subtype:         Integer          Index (IS_OPTN) read Fsubtype write Setsubtype stored subtype_Specified;
    property nodeFillingType: NodeFillingType  Index (IS_OPTN) read FnodeFillingType write SetnodeFillingType stored nodeFillingType_Specified;
  end;



  // ************************************************************************ //
  // XML       : CreateNodeByNodeMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateNodeByNodeMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: Node2;
    Fnode_Specified: boolean;
    FnewNodeType: NODE_TYPE;
    FnewNodeType_Specified: boolean;
    FnewNodeSubType: Integer;
    FnewNodeSubType_Specified: boolean;
    FdstParent: NodeBase2;
    FdstParent_Specified: boolean;
    Fproperties: PropertySetObject2;
    Fproperties_Specified: boolean;
    FinsertPosition: NodeBase2;
    FinsertPosition_Specified: boolean;
    FinsertBefore: Boolean;
    FinsertBefore_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANode2: Node2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetnewNodeType(Index: Integer; const ANODE_TYPE: NODE_TYPE);
    function  newNodeType_Specified(Index: Integer): boolean;
    procedure SetnewNodeSubType(Index: Integer; const AInteger: Integer);
    function  newNodeSubType_Specified(Index: Integer): boolean;
    procedure SetdstParent(Index: Integer; const ANodeBase2: NodeBase2);
    function  dstParent_Specified(Index: Integer): boolean;
    procedure Setproperties(Index: Integer; const APropertySetObject2: PropertySetObject2);
    function  properties_Specified(Index: Integer): boolean;
    procedure SetinsertPosition(Index: Integer; const ANodeBase2: NodeBase2);
    function  insertPosition_Specified(Index: Integer): boolean;
    procedure SetinsertBefore(Index: Integer; const ABoolean: Boolean);
    function  insertBefore_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:        ConnectContext2     Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:           Node2               Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property newNodeType:    NODE_TYPE           Index (IS_OPTN) read FnewNodeType write SetnewNodeType stored newNodeType_Specified;
    property newNodeSubType: Integer             Index (IS_OPTN) read FnewNodeSubType write SetnewNodeSubType stored newNodeSubType_Specified;
    property dstParent:      NodeBase2           Index (IS_OPTN or IS_NLBL) read FdstParent write SetdstParent stored dstParent_Specified;
    property properties:     PropertySetObject2  Index (IS_OPTN or IS_NLBL) read Fproperties write Setproperties stored properties_Specified;
    property insertPosition: NodeBase2           Index (IS_OPTN or IS_NLBL) read FinsertPosition write SetinsertPosition stored insertPosition_Specified;
    property insertBefore:   Boolean             Index (IS_OPTN) read FinsertBefore write SetinsertBefore stored insertBefore_Specified;
  end;



  // ************************************************************************ //
  // XML       : IsHasChildrenMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  IsHasChildrenMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fparent: NodeBase2;
    Fparent_Specified: boolean;
    Ftype_: NODE_TYPE;
    Ftype__Specified: boolean;
    Fsubtype: Integer;
    Fsubtype_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setparent(Index: Integer; const ANodeBase2: NodeBase2);
    function  parent_Specified(Index: Integer): boolean;
    procedure Settype_(Index: Integer; const ANODE_TYPE: NODE_TYPE);
    function  type__Specified(Index: Integer): boolean;
    procedure Setsubtype(Index: Integer; const AInteger: Integer);
    function  subtype_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property parent:  NodeBase2        Index (IS_OPTN or IS_NLBL) read Fparent write Setparent stored parent_Specified;
    property type_:   NODE_TYPE        Index (IS_OPTN) read Ftype_ write Settype_ stored type__Specified;
    property subtype: Integer          Index (IS_OPTN) read Fsubtype write Setsubtype stored subtype_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetNodeIDsByTypeMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNodeIDsByTypeMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    FrequestType: GET_NODE_REQUEST_TYPE;
    FrequestType_Specified: boolean;
    FType_: NODE_TYPE;
    FType__Specified: boolean;
    FSubType: Integer;
    FSubType_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
    function  requestType_Specified(Index: Integer): boolean;
    procedure SetType_(Index: Integer; const ANODE_TYPE: NODE_TYPE);
    function  Type__Specified(Index: Integer): boolean;
    procedure SetSubType(Index: Integer; const AInteger: Integer);
    function  SubType_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:     ConnectContext2        Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:        NodeBase2              Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property requestType: GET_NODE_REQUEST_TYPE  Index (IS_OPTN) read FrequestType write SetrequestType stored requestType_Specified;
    property Type_:       NODE_TYPE              Index (IS_OPTN) read FType_ write SetType_ stored Type__Specified;
    property SubType:     Integer                Index (IS_OPTN) read FSubType write SetSubType stored SubType_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetNodesCountMessageRequestEx, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNodesCountMessageRequestEx = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    FrequestType: GET_NODE_REQUEST_TYPE;
    FrequestType_Specified: boolean;
    Ftype_: NODE_TYPE;
    Ftype__Specified: boolean;
    Fsubtype: Integer;
    Fsubtype_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
    function  requestType_Specified(Index: Integer): boolean;
    procedure Settype_(Index: Integer; const ANODE_TYPE: NODE_TYPE);
    function  type__Specified(Index: Integer): boolean;
    procedure Setsubtype(Index: Integer; const AInteger: Integer);
    function  subtype_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:     ConnectContext2        Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:        NodeBase2              Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property requestType: GET_NODE_REQUEST_TYPE  Index (IS_OPTN) read FrequestType write SetrequestType stored requestType_Specified;
    property type_:       NODE_TYPE              Index (IS_OPTN) read Ftype_ write Settype_ stored type__Specified;
    property subtype:     Integer                Index (IS_OPTN) read Fsubtype write Setsubtype stored subtype_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetNodesByTypeMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNodesByTypeMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    FrequestType: GET_NODE_REQUEST_TYPE;
    FrequestType_Specified: boolean;
    FnodeFillingType: NodeFillingType;
    FnodeFillingType_Specified: boolean;
    FType_: NODE_TYPE;
    FType__Specified: boolean;
    FSubType: Integer;
    FSubType_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
    function  requestType_Specified(Index: Integer): boolean;
    procedure SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
    function  nodeFillingType_Specified(Index: Integer): boolean;
    procedure SetType_(Index: Integer; const ANODE_TYPE: NODE_TYPE);
    function  Type__Specified(Index: Integer): boolean;
    procedure SetSubType(Index: Integer; const AInteger: Integer);
    function  SubType_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:         ConnectContext2        Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:            NodeBase2              Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property requestType:     GET_NODE_REQUEST_TYPE  Index (IS_OPTN) read FrequestType write SetrequestType stored requestType_Specified;
    property nodeFillingType: NodeFillingType        Index (IS_OPTN) read FnodeFillingType write SetnodeFillingType stored nodeFillingType_Specified;
    property Type_:           NODE_TYPE              Index (IS_OPTN) read FType_ write SetType_ stored Type__Specified;
    property SubType:         Integer                Index (IS_OPTN) read FSubType write SetSubType stored SubType_Specified;
  end;



  // ************************************************************************ //
  // XML       : NodesByFieldsMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  NodesByFieldsMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Ftype_: NODE_TYPE;
    Ftype__Specified: boolean;
    Fproperties: PropertySetObject2;
    Fproperties_Specified: boolean;
    FrequestType: GET_NODE_REQUEST_TYPE;
    FrequestType_Specified: boolean;
    FnodeFillingType: NodeFillingType;
    FnodeFillingType_Specified: boolean;
    Fsubtype: Integer;
    Fsubtype_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Settype_(Index: Integer; const ANODE_TYPE: NODE_TYPE);
    function  type__Specified(Index: Integer): boolean;
    procedure Setproperties(Index: Integer; const APropertySetObject2: PropertySetObject2);
    function  properties_Specified(Index: Integer): boolean;
    procedure SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
    function  requestType_Specified(Index: Integer): boolean;
    procedure SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
    function  nodeFillingType_Specified(Index: Integer): boolean;
    procedure Setsubtype(Index: Integer; const AInteger: Integer);
    function  subtype_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:         ConnectContext2        Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property type_:           NODE_TYPE              Index (IS_OPTN) read Ftype_ write Settype_ stored type__Specified;
    property properties:      PropertySetObject2     Index (IS_OPTN or IS_NLBL) read Fproperties write Setproperties stored properties_Specified;
    property requestType:     GET_NODE_REQUEST_TYPE  Index (IS_OPTN) read FrequestType write SetrequestType stored requestType_Specified;
    property nodeFillingType: NodeFillingType        Index (IS_OPTN) read FnodeFillingType write SetnodeFillingType stored nodeFillingType_Specified;
    property subtype:         Integer                Index (IS_OPTN) read Fsubtype write Setsubtype stored subtype_Specified;
  end;



  // ************************************************************************ //
  // XML       : DescriptorsMessageRequestEx, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DescriptorsMessageRequestEx = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    FnodeType: NODE_TYPE;
    FnodeType_Specified: boolean;
    FnodeSubType: Integer;
    FnodeSubType_Specified: boolean;
    FisGrouped: Boolean;
    FisGrouped_Specified: boolean;
    Fmask1: Cardinal;
    Fmask1_Specified: boolean;
    Fmask2: Cardinal;
    Fmask2_Specified: boolean;
    Ftemplate: guid;
    Ftemplate_Specified: boolean;
    FisAdditionalDesc: Boolean;
    FisAdditionalDesc_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure SetnodeType(Index: Integer; const ANODE_TYPE: NODE_TYPE);
    function  nodeType_Specified(Index: Integer): boolean;
    procedure SetnodeSubType(Index: Integer; const AInteger: Integer);
    function  nodeSubType_Specified(Index: Integer): boolean;
    procedure SetisGrouped(Index: Integer; const ABoolean: Boolean);
    function  isGrouped_Specified(Index: Integer): boolean;
    procedure Setmask1(Index: Integer; const ACardinal: Cardinal);
    function  mask1_Specified(Index: Integer): boolean;
    procedure Setmask2(Index: Integer; const ACardinal: Cardinal);
    function  mask2_Specified(Index: Integer): boolean;
    procedure Settemplate(Index: Integer; const Aguid: guid);
    function  template_Specified(Index: Integer): boolean;
    procedure SetisAdditionalDesc(Index: Integer; const ABoolean: Boolean);
    function  isAdditionalDesc_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:          ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property nodeType:         NODE_TYPE        Index (IS_OPTN) read FnodeType write SetnodeType stored nodeType_Specified;
    property nodeSubType:      Integer          Index (IS_OPTN) read FnodeSubType write SetnodeSubType stored nodeSubType_Specified;
    property isGrouped:        Boolean          Index (IS_OPTN) read FisGrouped write SetisGrouped stored isGrouped_Specified;
    property mask1:            Cardinal         Index (IS_OPTN) read Fmask1 write Setmask1 stored mask1_Specified;
    property mask2:            Cardinal         Index (IS_OPTN) read Fmask2 write Setmask2 stored mask2_Specified;
    property template:         guid             Index (IS_OPTN) read Ftemplate write Settemplate stored template_Specified;
    property isAdditionalDesc: Boolean          Index (IS_OPTN) read FisAdditionalDesc write SetisAdditionalDesc stored isAdditionalDesc_Specified;
  end;



  // ************************************************************************ //
  // XML       : NodesByFieldMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  NodesByFieldMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Ftype_: NODE_TYPE;
    Ftype__Specified: boolean;
    Fsubtype: Integer;
    Fsubtype_Specified: boolean;
    Fproperty_: PropertyObject2;
    Fproperty__Specified: boolean;
    FrequestType: GET_NODE_REQUEST_TYPE;
    FrequestType_Specified: boolean;
    FnodeFillingType: NodeFillingType;
    FnodeFillingType_Specified: boolean;
    Fparent: NodeBase2;
    Fparent_Specified: boolean;
    Flevel: Integer;
    Flevel_Specified: boolean;
    FsearchType: Integer;
    FsearchType_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Settype_(Index: Integer; const ANODE_TYPE: NODE_TYPE);
    function  type__Specified(Index: Integer): boolean;
    procedure Setsubtype(Index: Integer; const AInteger: Integer);
    function  subtype_Specified(Index: Integer): boolean;
    procedure Setproperty_(Index: Integer; const APropertyObject2: PropertyObject2);
    function  property__Specified(Index: Integer): boolean;
    procedure SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
    function  requestType_Specified(Index: Integer): boolean;
    procedure SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
    function  nodeFillingType_Specified(Index: Integer): boolean;
    procedure Setparent(Index: Integer; const ANodeBase2: NodeBase2);
    function  parent_Specified(Index: Integer): boolean;
    procedure Setlevel(Index: Integer; const AInteger: Integer);
    function  level_Specified(Index: Integer): boolean;
    procedure SetsearchType(Index: Integer; const AInteger: Integer);
    function  searchType_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:         ConnectContext2        Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property type_:           NODE_TYPE              Index (IS_OPTN) read Ftype_ write Settype_ stored type__Specified;
    property subtype:         Integer                Index (IS_OPTN) read Fsubtype write Setsubtype stored subtype_Specified;
    property property_:       PropertyObject2        Index (IS_OPTN or IS_NLBL) read Fproperty_ write Setproperty_ stored property__Specified;
    property requestType:     GET_NODE_REQUEST_TYPE  Index (IS_OPTN) read FrequestType write SetrequestType stored requestType_Specified;
    property nodeFillingType: NodeFillingType        Index (IS_OPTN) read FnodeFillingType write SetnodeFillingType stored nodeFillingType_Specified;
    property parent:          NodeBase2              Index (IS_OPTN or IS_NLBL) read Fparent write Setparent stored parent_Specified;
    property level:           Integer                Index (IS_OPTN) read Flevel write Setlevel stored level_Specified;
    property searchType:      Integer                Index (IS_OPTN) read FsearchType write SetsearchType stored searchType_Specified;
  end;



  // ************************************************************************ //
  // XML       : DescriptorsMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DescriptorsMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    FnodeType: NODE_TYPE;
    FnodeType_Specified: boolean;
    FnodeSubType: Integer;
    FnodeSubType_Specified: boolean;
    FisGrouped: Boolean;
    FisGrouped_Specified: boolean;
    Fmask1: Cardinal;
    Fmask1_Specified: boolean;
    Fmask2: Cardinal;
    Fmask2_Specified: boolean;
    Ftemplate: guid;
    Ftemplate_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure SetnodeType(Index: Integer; const ANODE_TYPE: NODE_TYPE);
    function  nodeType_Specified(Index: Integer): boolean;
    procedure SetnodeSubType(Index: Integer; const AInteger: Integer);
    function  nodeSubType_Specified(Index: Integer): boolean;
    procedure SetisGrouped(Index: Integer; const ABoolean: Boolean);
    function  isGrouped_Specified(Index: Integer): boolean;
    procedure Setmask1(Index: Integer; const ACardinal: Cardinal);
    function  mask1_Specified(Index: Integer): boolean;
    procedure Setmask2(Index: Integer; const ACardinal: Cardinal);
    function  mask2_Specified(Index: Integer): boolean;
    procedure Settemplate(Index: Integer; const Aguid: guid);
    function  template_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:     ConnectContext2  Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property nodeType:    NODE_TYPE        Index (IS_OPTN) read FnodeType write SetnodeType stored nodeType_Specified;
    property nodeSubType: Integer          Index (IS_OPTN) read FnodeSubType write SetnodeSubType stored nodeSubType_Specified;
    property isGrouped:   Boolean          Index (IS_OPTN) read FisGrouped write SetisGrouped stored isGrouped_Specified;
    property mask1:       Cardinal         Index (IS_OPTN) read Fmask1 write Setmask1 stored mask1_Specified;
    property mask2:       Cardinal         Index (IS_OPTN) read Fmask2 write Setmask2 stored mask2_Specified;
    property template:    guid             Index (IS_OPTN) read Ftemplate write Settemplate stored template_Specified;
  end;



  // ************************************************************************ //
  // XML       : NODEID, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/CASCommonObjects
  // ************************************************************************ //
  NODEID2 = class(TRemotable)
  private
    F_nodeid_id: guid;
  published
    property _nodeid_id: guid  read F_nodeid_id write F_nodeid_id;
  end;



  // ************************************************************************ //
  // XML       : NODEID, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/CASCommonObjects
  // ************************************************************************ //
  NODEID = class(NODEID2)
  private
  published
  end;

  ArrayOfNODE_TYPE = array of NODE_TYPE;        { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblCplx] }


  // ************************************************************************ //
  // XML       : GetParentByTypesMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetParentByTypesMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    Ftypes: ArrayOfNODE_TYPE;
    Ftypes_Specified: boolean;
    FnodeFillingType: NodeFillingType;
    FnodeFillingType_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure Settypes(Index: Integer; const AArrayOfNODE_TYPE: ArrayOfNODE_TYPE);
    function  types_Specified(Index: Integer): boolean;
    procedure SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
    function  nodeFillingType_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:         ConnectContext2   Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:            NodeBase2         Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property types:           ArrayOfNODE_TYPE  Index (IS_OPTN or IS_NLBL) read Ftypes write Settypes stored types_Specified;
    property nodeFillingType: NodeFillingType   Index (IS_OPTN) read FnodeFillingType write SetnodeFillingType stored nodeFillingType_Specified;
  end;

  ArrayOfJobStatus = array of JobStatus;        { "http://schemas.datacontract.org/2004/07/CASCommonObjects"[GblCplx] }


  // ************************************************************************ //
  // XML       : GetJobsMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetJobsMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    Ffilter: ArrayOfJobStatus;
    Ffilter_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure Setfilter(Index: Integer; const AArrayOfJobStatus: ArrayOfJobStatus);
    function  filter_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context: ConnectContext2   Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:    NodeBase2         Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property filter:  ArrayOfJobStatus  Index (IS_OPTN or IS_NLBL) read Ffilter write Setfilter stored filter_Specified;
  end;

  ArrayOfDescriptorBase = array of DescriptorBase2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : DescriptorsMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DescriptorsMessageResponse = class(TRemotable)
  private
    Fdescriptors: ArrayOfDescriptorBase;
    Fdescriptors_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setdescriptors(Index: Integer; const AArrayOfDescriptorBase: ArrayOfDescriptorBase);
    function  descriptors_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property descriptors: ArrayOfDescriptorBase  Index (IS_OPTN or IS_NLBL) read Fdescriptors write Setdescriptors stored descriptors_Specified;
    property retCode:     Integer                Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:       string                 Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : DescriptorBase, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  DescriptorBase2 = class(TRemotable)
  private
    FID: NODEID2;
    FName_: string;
    Fchildren: ArrayOfDescriptorBase;
  public
    destructor Destroy; override;
  published
    property ID:       NODEID2                read FID write FID;
    property Name_:    string                 Index (IS_NLBL) read FName_ write FName_;
    property children: ArrayOfDescriptorBase  Index (IS_NLBL) read Fchildren write Fchildren;
  end;



  // ************************************************************************ //
  // XML       : Presets, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  Presets2 = class(DescriptorBase2)
  private
    FDescriptorID: NODEID2;
    FPresetValue: Integer;
  public
    destructor Destroy; override;
  published
    property DescriptorID: NODEID2  read FDescriptorID write FDescriptorID;
    property PresetValue:  Integer  read FPresetValue write FPresetValue;
  end;



  // ************************************************************************ //
  // XML       : Descriptor, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  Descriptor2 = class(DescriptorBase2)
  private
    FDescription: string;
    FDescriptorExtraData: string;
    FDescriptorExtraType: DESCRIPTOR_EXTRA_TYPE;
    FDescriptorType: DESCRIPTOR_TYPE;
    FFieldNum: Integer;
    FFlags: Integer;
    FInternalName: string;
    FIsNeed2Fill: Boolean;
    FIsReadOnly: Boolean;
    FMaxValue: Integer;
    FMinValue: Integer;
    FValueType: DESCRIPTOR_VALUE_TYPE;
  published
    property Description:         string                 Index (IS_NLBL) read FDescription write FDescription;
    property DescriptorExtraData: string                 Index (IS_NLBL) read FDescriptorExtraData write FDescriptorExtraData;
    property DescriptorExtraType: DESCRIPTOR_EXTRA_TYPE  read FDescriptorExtraType write FDescriptorExtraType;
    property DescriptorType:      DESCRIPTOR_TYPE        read FDescriptorType write FDescriptorType;
    property FieldNum:            Integer                read FFieldNum write FFieldNum;
    property Flags:               Integer                read FFlags write FFlags;
    property InternalName:        string                 Index (IS_NLBL) read FInternalName write FInternalName;
    property IsNeed2Fill:         Boolean                read FIsNeed2Fill write FIsNeed2Fill;
    property IsReadOnly:          Boolean                read FIsReadOnly write FIsReadOnly;
    property MaxValue:            Integer                Index (IS_NLBL) read FMaxValue write FMaxValue;
    property MinValue:            Integer                Index (IS_NLBL) read FMinValue write FMinValue;
    property ValueType:           DESCRIPTOR_VALUE_TYPE  read FValueType write FValueType;
  end;



  // ************************************************************************ //
  // XML       : DescriptorGroup, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  DescriptorGroup2 = class(DescriptorBase2)
  private
    FChildrenCount: Integer;
  published
    property ChildrenCount: Integer  Index (IS_NLBL) read FChildrenCount write FChildrenCount;
  end;



  // ************************************************************************ //
  // XML       : NodeBase, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  NodeBase2 = class(TRemotable)
  private
    F_id: NODEID2;
    F_subtype: Integer;
    F_type: NODE_TYPE;
  public
    destructor Destroy; override;
  published
    property _id:      NODEID2    read F_id write F_id;
    property _subtype: Integer    read F_subtype write F_subtype;
    property _type:    NODE_TYPE  read F_type write F_type;
  end;



  // ************************************************************************ //
  // XML       : Node, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  Node2 = class(NodeBase2)
  private
    Faccess: UserAccess;
    Fcreation: TXSDateTime;
    Fdeleted: Integer;
    FextraData: string;
    FisHasChildren: Boolean;
    FlockStatus: Integer;
    FlockType: LockType;
    Flocker: string;
    FmetadataSet: MetadataSetObject2;
    Fmodification: TXSDateTime;
    Fmodificator: string;
    Fname_: string;
    Forder: Int64;
    Fowner: string;
    FparentID: NODEID2;
    FpredecessorID: NODEID2;
  public
    destructor Destroy; override;
  published
    property access:        UserAccess          read Faccess write Faccess;
    property creation:      TXSDateTime         read Fcreation write Fcreation;
    property deleted:       Integer             read Fdeleted write Fdeleted;
    property extraData:     string              Index (IS_NLBL) read FextraData write FextraData;
    property isHasChildren: Boolean             read FisHasChildren write FisHasChildren;
    property lockStatus:    Integer             read FlockStatus write FlockStatus;
    property lockType:      LockType            read FlockType write FlockType;
    property locker:        string              Index (IS_NLBL) read Flocker write Flocker;
    property metadataSet:   MetadataSetObject2  Index (IS_NLBL) read FmetadataSet write FmetadataSet;
    property modification:  TXSDateTime         read Fmodification write Fmodification;
    property modificator:   string              Index (IS_NLBL) read Fmodificator write Fmodificator;
    property name_:         string              Index (IS_NLBL) read Fname_ write Fname_;
    property order:         Int64               read Forder write Forder;
    property owner:         string              Index (IS_NLBL) read Fowner write Fowner;
    property parentID:      NODEID2             read FparentID write FparentID;
    property predecessorID: NODEID2             read FpredecessorID write FpredecessorID;
  end;



  // ************************************************************************ //
  // XML       : GraphicNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  GraphicNode2 = class(Node2)
  private
    FDuration: Int64;
    FFileName: string;
    FGraphicUrl: string;
    FIn_: Int64;
    FLinkedGroup: guid;
    FMix: MixObjext2;
    FOut_: Int64;
    FShareID: Integer;
  public
    destructor Destroy; override;
  published
    property Duration:    Int64       read FDuration write FDuration;
    property FileName:    string      Index (IS_NLBL) read FFileName write FFileName;
    property GraphicUrl:  string      Index (IS_NLBL) read FGraphicUrl write FGraphicUrl;
    property In_:         Int64       Index (IS_NLBL) read FIn_ write FIn_;
    property LinkedGroup: guid        Index (IS_NLBL) read FLinkedGroup write FLinkedGroup;
    property Mix:         MixObjext2  Index (IS_NLBL) read FMix write FMix;
    property Out_:        Int64       Index (IS_NLBL) read FOut_ write FOut_;
    property ShareID:     Integer     read FShareID write FShareID;
  end;



  // ************************************************************************ //
  // XML       : TitlerNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  TitlerNode2 = class(Node2)
  private
    FData: string;
    FDuration: Int64;
    FIn_: Int64;
    FLinkedGroup: guid;
    FMix: MixObjext2;
    FOut_: Int64;
    FTVFormat: Integer;
    FThumbnail: Int64;
  public
    destructor Destroy; override;
  published
    property Data:        string      Index (IS_NLBL) read FData write FData;
    property Duration:    Int64       read FDuration write FDuration;
    property In_:         Int64       Index (IS_NLBL) read FIn_ write FIn_;
    property LinkedGroup: guid        Index (IS_NLBL) read FLinkedGroup write FLinkedGroup;
    property Mix:         MixObjext2  Index (IS_NLBL) read FMix write FMix;
    property Out_:        Int64       Index (IS_NLBL) read FOut_ write FOut_;
    property TVFormat:    Integer     read FTVFormat write FTVFormat;
    property Thumbnail:   Int64       Index (IS_NLBL) read FThumbnail write FThumbnail;
  end;



  // ************************************************************************ //
  // XML       : EmptyClipNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  EmptyClipNode2 = class(Node2)
  private
    FDuration: Int64;
    FLinkedGroup: guid;
    FMix: MixObjext2;
  public
    destructor Destroy; override;
  published
    property Duration:    Int64       read FDuration write FDuration;
    property LinkedGroup: guid        Index (IS_NLBL) read FLinkedGroup write FLinkedGroup;
    property Mix:         MixObjext2  Index (IS_NLBL) read FMix write FMix;
  end;



  // ************************************************************************ //
  // XML       : LabelNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  LabelNode2 = class(Node2)
  private
    FColor: Integer;
    FComment: string;
    FFlags: Integer;
    FStartTime: Int64;
  published
    property Color:     Integer  Index (IS_NLBL) read FColor write FColor;
    property Comment:   string   Index (IS_NLBL) read FComment write FComment;
    property Flags:     Integer  Index (IS_NLBL) read FFlags write FFlags;
    property StartTime: Int64    read FStartTime write FStartTime;
  end;



  // ************************************************************************ //
  // XML       : DocumentNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  DocumentNode2 = class(Node2)
  private
    FComment: string;
    FDescription: string;
    FFileName: string;
    FPath: string;
    FShareID: Integer;
    FThumbnailURL: string;
  published
    property Comment:      string   Index (IS_NLBL) read FComment write FComment;
    property Description:  string   Index (IS_NLBL) read FDescription write FDescription;
    property FileName:     string   Index (IS_NLBL) read FFileName write FFileName;
    property Path:         string   Index (IS_NLBL) read FPath write FPath;
    property ShareID:      Integer  read FShareID write FShareID;
    property ThumbnailURL: string   Index (IS_NLBL) read FThumbnailURL write FThumbnailURL;
  end;



  // ************************************************************************ //
  // XML       : TrackNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  TrackNode2 = class(Node2)
  private
    FFlags: Integer;
    FIsHidden: Boolean;
    FLayerType: LAYERTYPE;
  published
    property Flags:     Integer    read FFlags write FFlags;
    property IsHidden:  Boolean    read FIsHidden write FIsHidden;
    property LayerType: LAYERTYPE  read FLayerType write FLayerType;
  end;



  // ************************************************************************ //
  // XML       : ScriptTrackNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ScriptTrackNode2 = class(TrackNode2)
  private
    FTrackType: SCRIPT_TRACK;
  published
    property TrackType: SCRIPT_TRACK  read FTrackType write FTrackType;
  end;



  // ************************************************************************ //
  // XML       : AudioTrackNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  AudioTrackNode2 = class(TrackNode2)
  private
    FAudioOutputId: NODEID2;
    FAudioOutputTrackType: Integer;
    FAudioTrackType: AudioTrackType;
    FTrackType: AUDIO_TRACK;
  public
    destructor Destroy; override;
  published
    property AudioOutputId:        NODEID2         Index (IS_NLBL) read FAudioOutputId write FAudioOutputId;
    property AudioOutputTrackType: Integer         read FAudioOutputTrackType write FAudioOutputTrackType;
    property AudioTrackType:       AudioTrackType  read FAudioTrackType write FAudioTrackType;
    property TrackType:            AUDIO_TRACK     read FTrackType write FTrackType;
  end;



  // ************************************************************************ //
  // XML       : VideoTrackNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  VideoTrackNode2 = class(TrackNode2)
  private
    FTrackType: VIDEO_TRACK;
  published
    property TrackType: VIDEO_TRACK  read FTrackType write FTrackType;
  end;



  // ************************************************************************ //
  // XML       : LayerNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  LayerNode2 = class(Node2)
  private
    FDefaultTrack: Integer;
    FLayerType: LAYERTYPE;
  published
    property DefaultTrack: Integer    read FDefaultTrack write FDefaultTrack;
    property LayerType:    LAYERTYPE  read FLayerType write FLayerType;
  end;



  // ************************************************************************ //
  // XML       : EffectNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  EffectNode2 = class(Node2)
  private
    FEffectType: Integer;
    FKeyframes: ArrayOfKeyframe;
  public
    destructor Destroy; override;
  published
    property EffectType: Integer          read FEffectType write FEffectType;
    property Keyframes:  ArrayOfKeyframe  Index (IS_NLBL) read FKeyframes write FKeyframes;
  end;



  // ************************************************************************ //
  // XML       : SearchQueryNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SearchQueryNode2 = class(Node2)
  private
    FIsAdvanced: Boolean;
    FIsPrivate: Boolean;
    FQuery: string;
  published
    property IsAdvanced: Boolean  read FIsAdvanced write FIsAdvanced;
    property IsPrivate:  Boolean  read FIsPrivate write FIsPrivate;
    property Query:      string   Index (IS_NLBL) read FQuery write FQuery;
  end;



  // ************************************************************************ //
  // XML       : MosNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MosNode2 = class(Node2)
  private
    FDuration: Int64;
    FMosID: string;
    FMosObj: string;
    FMosType: string;
  published
    property Duration: Int64   read FDuration write FDuration;
    property MosID:    string  Index (IS_NLBL) read FMosID write FMosID;
    property MosObj:   string  Index (IS_NLBL) read FMosObj write FMosObj;
    property MosType:  string  Index (IS_NLBL) read FMosType write FMosType;
  end;



  // ************************************************************************ //
  // XML       : StoryRundownNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  StoryRundownNode2 = class(Node2)
  private
    FDuration: Int64;
    FTVFormat: Integer;
  published
    property Duration: Int64    Index (IS_NLBL) read FDuration write FDuration;
    property TVFormat: Integer  read FTVFormat write FTVFormat;
  end;



  // ************************************************************************ //
  // XML       : TextFeedNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  TextFeedNode2 = class(Node2)
  private
    FFlags: NewsFlags;
    FHash: string;
  published
    property Flags: NewsFlags  read FFlags write FFlags;
    property Hash:  string     Index (IS_NLBL) read FHash write FHash;
  end;



  // ************************************************************************ //
  // XML       : RundownNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  RundownNode2 = class(Node2)
  private
    FOnAir: Boolean;
    FRundownID: string;
    FStartTime: Int64;
    FTVFormat: Integer;
  published
    property OnAir:     Boolean  read FOnAir write FOnAir;
    property RundownID: string   Index (IS_NLBL) read FRundownID write FRundownID;
    property StartTime: Int64    Index (IS_NLBL) read FStartTime write FStartTime;
    property TVFormat:  Integer  read FTVFormat write FTVFormat;
  end;



  // ************************************************************************ //
  // XML       : DayTemplateNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  DayTemplateNode2 = class(Node2)
  private
    FDate: TXSDateTime;
    FDuration: Int64;
    FFlags: Integer;
    FStart: Int64;
    FTVFormat: Integer;
  public
    destructor Destroy; override;
  published
    property Date:     TXSDateTime  read FDate write FDate;
    property Duration: Int64        read FDuration write FDuration;
    property Flags:    Integer      read FFlags write FFlags;
    property Start:    Int64        read FStart write FStart;
    property TVFormat: Integer      read FTVFormat write FTVFormat;
  end;



  // ************************************************************************ //
  // XML       : OradCommonNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradCommonNode2 = class(Node2)
  private
    FUniqueID: string;
  published
    property UniqueID: string  Index (IS_NLBL) read FUniqueID write FUniqueID;
  end;



  // ************************************************************************ //
  // XML       : OradDdrItemNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradDdrItemNode2 = class(OradCommonNode2)
  private
    FClipName: string;
    FDdrID: string;
    FDdrType: Integer;
    FPlayMode: Integer;
    FStart: Integer;
    FStop: Integer;
    FThumbnail: TByteDynArray;
  published
    property ClipName:  string         Index (IS_NLBL) read FClipName write FClipName;
    property DdrID:     string         Index (IS_NLBL) read FDdrID write FDdrID;
    property DdrType:   Integer        read FDdrType write FDdrType;
    property PlayMode:  Integer        read FPlayMode write FPlayMode;
    property Start:     Integer        read FStart write FStart;
    property Stop:      Integer        read FStop write FStop;
    property Thumbnail: TByteDynArray  Index (IS_NLBL) read FThumbnail write FThumbnail;
  end;



  // ************************************************************************ //
  // XML       : OradAudioItemNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradAudioItemNode2 = class(OradCommonNode2)
  private
    FHdvg: string;
    FMixing: string;
    FThumbnail: TByteDynArray;
    FWaveFile: string;
  published
    property Hdvg:      string         Index (IS_NLBL) read FHdvg write FHdvg;
    property Mixing:    string         Index (IS_NLBL) read FMixing write FMixing;
    property Thumbnail: TByteDynArray  Index (IS_NLBL) read FThumbnail write FThumbnail;
    property WaveFile:  string         Index (IS_NLBL) read FWaveFile write FWaveFile;
  end;



  // ************************************************************************ //
  // XML       : OradRundownNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradRundownNode2 = class(OradCommonNode2)
  private
    FXmlData: string;
  published
    property XmlData: string  Index (IS_NLBL) read FXmlData write FXmlData;
  end;



  // ************************************************************************ //
  // XML       : OradExternalItemNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradExternalItemNode2 = class(OradCommonNode2)
  private
    FArguments: string;
    FCommand: string;
    FDirectory: string;
    FThumbnail: TByteDynArray;
  published
    property Arguments: string         Index (IS_NLBL) read FArguments write FArguments;
    property Command:   string         Index (IS_NLBL) read FCommand write FCommand;
    property Directory: string         Index (IS_NLBL) read FDirectory write FDirectory;
    property Thumbnail: TByteDynArray  Index (IS_NLBL) read FThumbnail write FThumbnail;
  end;



  // ************************************************************************ //
  // XML       : OradTickerItemNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradTickerItemNode2 = class(OradCommonNode2)
  private
    FThumbnail: TByteDynArray;
    FXmlData: string;
  published
    property Thumbnail: TByteDynArray  Index (IS_NLBL) read FThumbnail write FThumbnail;
    property XmlData:   string         Index (IS_NLBL) read FXmlData write FXmlData;
  end;



  // ************************************************************************ //
  // XML       : OradTickerNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradTickerNode2 = class(OradCommonNode2)
  private
    FTickerName: string;
    FXmlData: string;
  published
    property TickerName: string  Index (IS_NLBL) read FTickerName write FTickerName;
    property XmlData:    string  Index (IS_NLBL) read FXmlData write FXmlData;
  end;



  // ************************************************************************ //
  // XML       : OradPageNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradPageNode2 = class(OradCommonNode2)
  private
    FBackground: TByteDynArray;
    FThumbnail: TByteDynArray;
    FXmlData: string;
  published
    property Background: TByteDynArray  Index (IS_NLBL) read FBackground write FBackground;
    property Thumbnail:  TByteDynArray  Index (IS_NLBL) read FThumbnail write FThumbnail;
    property XmlData:    string         Index (IS_NLBL) read FXmlData write FXmlData;
  end;



  // ************************************************************************ //
  // XML       : OradGraphicItemNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradGraphicItemNode2 = class(OradCommonNode2)
  private
    FThumbnail: TByteDynArray;
    FXmlData: string;
  published
    property Thumbnail: TByteDynArray  Index (IS_NLBL) read FThumbnail write FThumbnail;
    property XmlData:   string         Index (IS_NLBL) read FXmlData write FXmlData;
  end;



  // ************************************************************************ //
  // XML       : OradDatasetNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradDatasetNode2 = class(OradCommonNode2)
  private
    FXmlData: string;
  published
    property XmlData: string  Index (IS_NLBL) read FXmlData write FXmlData;
  end;



  // ************************************************************************ //
  // XML       : OradSceneNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradSceneNode2 = class(OradCommonNode2)
  private
    FFileName: string;
    FProjectID: string;
    FSceneID: string;
    FSceneName: string;
    FShareID: Integer;
    FThumbnail: TByteDynArray;
    FVersion: Integer;
    FXmlData: string;
  published
    property FileName:  string         Index (IS_NLBL) read FFileName write FFileName;
    property ProjectID: string         Index (IS_NLBL) read FProjectID write FProjectID;
    property SceneID:   string         Index (IS_NLBL) read FSceneID write FSceneID;
    property SceneName: string         Index (IS_NLBL) read FSceneName write FSceneName;
    property ShareID:   Integer        read FShareID write FShareID;
    property Thumbnail: TByteDynArray  Index (IS_NLBL) read FThumbnail write FThumbnail;
    property Version:   Integer        Index (IS_NLBL) read FVersion write FVersion;
    property XmlData:   string         Index (IS_NLBL) read FXmlData write FXmlData;
  end;



  // ************************************************************************ //
  // XML       : Orad3DPlayNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  Orad3DPlayNode2 = class(OradCommonNode2)
  private
    FIsExcluded: Boolean;
    FThumbnail: TByteDynArray;
    FXmlData: string;
  published
    property IsExcluded: Boolean        read FIsExcluded write FIsExcluded;
    property Thumbnail:  TByteDynArray  Index (IS_NLBL) read FThumbnail write FThumbnail;
    property XmlData:    string         Index (IS_NLBL) read FXmlData write FXmlData;
  end;



  // ************************************************************************ //
  // XML       : OradTransitionNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradTransitionNode2 = class(OradCommonNode2)
  private
    FDuration: Integer;
  published
    property Duration: Integer  read FDuration write FDuration;
  end;



  // ************************************************************************ //
  // XML       : OradDatalinkNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradDatalinkNode2 = class(OradCommonNode2)
  private
    FConnectionString: string;
    FConnectionType: guid;
    FPassword: string;
    FUser: string;
  published
    property ConnectionString: string  Index (IS_NLBL) read FConnectionString write FConnectionString;
    property ConnectionType:   guid    read FConnectionType write FConnectionType;
    property Password:         string  Index (IS_NLBL) read FPassword write FPassword;
    property User:             string  Index (IS_NLBL) read FUser write FUser;
  end;



  // ************************************************************************ //
  // XML       : OradDataqueryNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradDataqueryNode2 = class(OradCommonNode2)
  private
    FXmlData: string;
  published
    property XmlData: string  Index (IS_NLBL) read FXmlData write FXmlData;
  end;



  // ************************************************************************ //
  // XML       : ExtEventNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ExtEventNode2 = class(Node2)
  private
    FCommand: string;
    FIn_: Int64;
    FLinkedGroup: guid;
  published
    property Command:     string  Index (IS_NLBL) read FCommand write FCommand;
    property In_:         Int64   read FIn_ write FIn_;
    property LinkedGroup: guid    Index (IS_NLBL) read FLinkedGroup write FLinkedGroup;
  end;



  // ************************************************************************ //
  // XML       : EffectExNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  EffectExNode2 = class(Node2)
  private
    FEngineID: guid;
    FParams: string;
    FPluginID: guid;
  published
    property EngineID: guid    read FEngineID write FEngineID;
    property Params:   string  Index (IS_NLBL) read FParams write FParams;
    property PluginID: guid    read FPluginID write FPluginID;
  end;



  // ************************************************************************ //
  // XML       : JobDropFolderNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  JobDropFolderNode2 = class(Node2)
  private
    FJobFolderType: JOB_FOLDER_TYPE;
    FJobGroup: Integer;
    FScript: string;
    FSettings: string;
  published
    property JobFolderType: JOB_FOLDER_TYPE  read FJobFolderType write FJobFolderType;
    property JobGroup:      Integer          read FJobGroup write FJobGroup;
    property Script:        string           Index (IS_NLBL) read FScript write FScript;
    property Settings:      string           Index (IS_NLBL) read FSettings write FSettings;
  end;



  // ************************************************************************ //
  // XML       : JobNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  JobNode2 = class(Node2)
  private
    FIsDisabled: Boolean;
    FJobData: string;
    FJobStatus: guid;
    FJobType: Integer;
  published
    property IsDisabled: Boolean  read FIsDisabled write FIsDisabled;
    property JobData:    string   Index (IS_NLBL) read FJobData write FJobData;
    property JobStatus:  guid     Index (IS_NLBL) read FJobStatus write FJobStatus;
    property JobType:    Integer  read FJobType write FJobType;
  end;



  // ************************************************************************ //
  // XML       : LiveClipNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  LiveClipNode2 = class(Node2)
  private
    FDuration: Int64;
    FLinkedGroup: guid;
  published
    property Duration:    Int64  read FDuration write FDuration;
    property LinkedGroup: guid   Index (IS_NLBL) read FLinkedGroup write FLinkedGroup;
  end;



  // ************************************************************************ //
  // XML       : ScriptClipNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ScriptClipNode2 = class(Node2)
  private
    FDuration: Int64;
    FFlags: Integer;
    FLinkedGroup: guid;
    FLinkedNode: NODEID2;
    FPresenterID: guid;
    FRealDuration: Int64;
    FScript: string;
    FSourceID: guid;
  public
    destructor Destroy; override;
  published
    property Duration:     Int64    read FDuration write FDuration;
    property Flags:        Integer  read FFlags write FFlags;
    property LinkedGroup:  guid     Index (IS_NLBL) read FLinkedGroup write FLinkedGroup;
    property LinkedNode:   NODEID2  Index (IS_NLBL) read FLinkedNode write FLinkedNode;
    property PresenterID:  guid     Index (IS_NLBL) read FPresenterID write FPresenterID;
    property RealDuration: Int64    Index (IS_NLBL) read FRealDuration write FRealDuration;
    property Script:       string   Index (IS_NLBL) read FScript write FScript;
    property SourceID:     guid     Index (IS_NLBL) read FSourceID write FSourceID;
  end;



  // ************************************************************************ //
  // XML       : JobSubjectNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  JobSubjectNode2 = class(Node2)
  private
    FRefID: guid;
    FRefNode: Node2;
  public
    destructor Destroy; override;
  published
    property RefID:   guid   read FRefID write FRefID;
    property RefNode: Node2  Index (IS_NLBL) read FRefNode write FRefNode;
  end;



  // ************************************************************************ //
  // XML       : RefNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  RefNode2 = class(Node2)
  private
    FRef: Node2;
    FRefID: guid;
    FRefNodeSubType: Integer;
    FRefNodeType: NODE_TYPE;
  public
    destructor Destroy; override;
  published
    property Ref:            Node2      Index (IS_NLBL) read FRef write FRef;
    property RefID:          guid       read FRefID write FRefID;
    property RefNodeSubType: Integer    read FRefNodeSubType write FRefNodeSubType;
    property RefNodeType:    NODE_TYPE  read FRefNodeType write FRefNodeType;
  end;



  // ************************************************************************ //
  // XML       : ClipBinNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ClipBinNode2 = class(Node2)
  private
    FaspectRatio: guid;
    FletterBox: guid;
    FtvFormat: Integer;
  published
    property aspectRatio: guid     Index (IS_NLBL) read FaspectRatio write FaspectRatio;
    property letterBox:   guid     Index (IS_NLBL) read FletterBox write FletterBox;
    property tvFormat:    Integer  read FtvFormat write FtvFormat;
  end;



  // ************************************************************************ //
  // XML       : MetadataSetObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MetadataSetObject2 = class(TRemotable)
  private
    Fmetadata: ArrayOfMetadataObject;
  public
    destructor Destroy; override;
  published
    property metadata: ArrayOfMetadataObject  Index (IS_NLBL) read Fmetadata write Fmetadata;
  end;



  // ************************************************************************ //
  // XML       : JobCreationInfoObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  JobCreationInfoObject2 = class(TRemotable)
  private
    FPossibleNodesCount: Integer;
    FPossibleNodesTypes: ArrayOfNODE_TYPE;
  published
    property PossibleNodesCount: Integer           read FPossibleNodesCount write FPossibleNodesCount;
    property PossibleNodesTypes: ArrayOfNODE_TYPE  Index (IS_NLBL) read FPossibleNodesTypes write FPossibleNodesTypes;
  end;



  // ************************************************************************ //
  // XML       : JobCreationInfoObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  JobCreationInfoObject = class(JobCreationInfoObject2)
  private
  published
  end;

  ArrayOfstring = array of string;              { "http://schemas.microsoft.com/2003/10/Serialization/Arrays"[GblCplx] }


  // ************************************************************************ //
  // XML       : EnumExportPluginsMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  EnumExportPluginsMessageResponse = class(TRemotable)
  private
    Fplugins: ArrayOfstring;
    Fplugins_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setplugins(Index: Integer; const AArrayOfstring: ArrayOfstring);
    function  plugins_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property plugins: ArrayOfstring  Index (IS_OPTN or IS_NLBL) read Fplugins write Setplugins stored plugins_Specified;
    property retCode: Integer        Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:   string         Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;

  ArrayOfint = array of Integer;                { "http://schemas.microsoft.com/2003/10/Serialization/Arrays"[GblCplx] }


  // ************************************************************************ //
  // XML       : SubTypeRelationsParentsMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SubTypeRelationsParentsMessageResponse = class(TRemotable)
  private
    Fsubtypes: ArrayOfint;
    Fsubtypes_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setsubtypes(Index: Integer; const AArrayOfint: ArrayOfint);
    function  subtypes_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property subtypes: ArrayOfint  Index (IS_OPTN or IS_NLBL) read Fsubtypes write Setsubtypes stored subtypes_Specified;
    property retCode:  Integer     Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:    string      Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : SubTypeRelationsMessageResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SubTypeRelationsMessageResponse = class(TRemotable)
  private
    Fsubtypes: ArrayOfint;
    Fsubtypes_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure Setsubtypes(Index: Integer; const AArrayOfint: ArrayOfint);
    function  subtypes_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property subtypes: ArrayOfint  Index (IS_OPTN or IS_NLBL) read Fsubtypes write Setsubtypes stored subtypes_Specified;
    property retCode:  Integer     Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:    string      Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : KeyValueOfJOB_FOLDER_TYPEJobCreationInfoObject_SRNRwcyb, <complexType>
  // Namespace : http://schemas.microsoft.com/2003/10/Serialization/Arrays
  // ************************************************************************ //
  KeyValueOfJOB_FOLDER_TYPEJobCreationInfoObject_SRNRwcyb = class(TRemotable)
  private
    FKey: JOB_FOLDER_TYPE;
    FValue: JobCreationInfoObject2;
  public
    destructor Destroy; override;
  published
    property Key:   JOB_FOLDER_TYPE         read FKey write FKey;
    property Value: JobCreationInfoObject2  Index (IS_NLBL) read FValue write FValue;
  end;

  ArrayOfKeyValueOfJOB_FOLDER_TYPEJobCreationInfoObject_SRNRwcyb = array of KeyValueOfJOB_FOLDER_TYPEJobCreationInfoObject_SRNRwcyb;   { "http://schemas.microsoft.com/2003/10/Serialization/Arrays"[GblCplx] }


  // ************************************************************************ //
  // XML       : BinNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  BinNode2 = class(Node2)
  private
    Fflags: Integer;
    FisArchive: Boolean;
    FletterBox: guid;
    Fpriority: Integer;
    FrollLockType: Integer;
    FrollLocker: string;
    FtvFormat: Integer;
  published
    property flags:        Integer  read Fflags write Fflags;
    property isArchive:    Boolean  read FisArchive write FisArchive;
    property letterBox:    guid     Index (IS_NLBL) read FletterBox write FletterBox;
    property priority:     Integer  read Fpriority write Fpriority;
    property rollLockType: Integer  read FrollLockType write FrollLockType;
    property rollLocker:   string   Index (IS_NLBL) read FrollLocker write FrollLocker;
    property tvFormat:     Integer  read FtvFormat write FtvFormat;
  end;



  // ************************************************************************ //
  // XML       : MogClipFields, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MogClipFields2 = class(Node2)
  private
    Fa10Alloc: guid;
    Fa11Alloc: guid;
    Fa12Alloc: guid;
    Fa13Alloc: guid;
    Fa14Alloc: guid;
    Fa15Alloc: guid;
    Fa16Alloc: guid;
    Fa1Alloc: guid;
    Fa2Alloc: guid;
    Fa3Alloc: guid;
    Fa4Alloc: guid;
    Fa5Alloc: guid;
    Fa6Alloc: guid;
    Fa7Alloc: guid;
    Fa8Alloc: guid;
    Fa9Alloc: guid;
    FaudioExtraData: string;
    FaudioType: guid;
    FclipColor: Integer;
    FfileSet: FileSetObject2;
    FisEntire: Boolean;
    FletterBox: guid;
    Foffset: Int64;
    ForiginalTapeIn: Int64;
    FrightsIndicator: guid;
    FrollID: guid;
    FrollLockType: Integer;
    FrollLocker: string;
    FsecondaryFileSet: FileSetObject2;
    FtapeIn: Int64;
    FtapeOut: Int64;
    FtargetAspectRatio: guid;
    Fthumbnail: Int64;
    FtvFormat: Integer;
    Fuses_: Integer;
  public
    destructor Destroy; override;
  published
    property a10Alloc:          guid            Index (IS_NLBL) read Fa10Alloc write Fa10Alloc;
    property a11Alloc:          guid            Index (IS_NLBL) read Fa11Alloc write Fa11Alloc;
    property a12Alloc:          guid            Index (IS_NLBL) read Fa12Alloc write Fa12Alloc;
    property a13Alloc:          guid            Index (IS_NLBL) read Fa13Alloc write Fa13Alloc;
    property a14Alloc:          guid            Index (IS_NLBL) read Fa14Alloc write Fa14Alloc;
    property a15Alloc:          guid            Index (IS_NLBL) read Fa15Alloc write Fa15Alloc;
    property a16Alloc:          guid            Index (IS_NLBL) read Fa16Alloc write Fa16Alloc;
    property a1Alloc:           guid            Index (IS_NLBL) read Fa1Alloc write Fa1Alloc;
    property a2Alloc:           guid            Index (IS_NLBL) read Fa2Alloc write Fa2Alloc;
    property a3Alloc:           guid            Index (IS_NLBL) read Fa3Alloc write Fa3Alloc;
    property a4Alloc:           guid            Index (IS_NLBL) read Fa4Alloc write Fa4Alloc;
    property a5Alloc:           guid            Index (IS_NLBL) read Fa5Alloc write Fa5Alloc;
    property a6Alloc:           guid            Index (IS_NLBL) read Fa6Alloc write Fa6Alloc;
    property a7Alloc:           guid            Index (IS_NLBL) read Fa7Alloc write Fa7Alloc;
    property a8Alloc:           guid            Index (IS_NLBL) read Fa8Alloc write Fa8Alloc;
    property a9Alloc:           guid            Index (IS_NLBL) read Fa9Alloc write Fa9Alloc;
    property audioExtraData:    string          Index (IS_NLBL) read FaudioExtraData write FaudioExtraData;
    property audioType:         guid            Index (IS_NLBL) read FaudioType write FaudioType;
    property clipColor:         Integer         read FclipColor write FclipColor;
    property fileSet:           FileSetObject2  Index (IS_NLBL) read FfileSet write FfileSet;
    property isEntire:          Boolean         read FisEntire write FisEntire;
    property letterBox:         guid            Index (IS_NLBL) read FletterBox write FletterBox;
    property offset:            Int64           read Foffset write Foffset;
    property originalTapeIn:    Int64           read ForiginalTapeIn write ForiginalTapeIn;
    property rightsIndicator:   guid            Index (IS_NLBL) read FrightsIndicator write FrightsIndicator;
    property rollID:            guid            read FrollID write FrollID;
    property rollLockType:      Integer         read FrollLockType write FrollLockType;
    property rollLocker:        string          Index (IS_NLBL) read FrollLocker write FrollLocker;
    property secondaryFileSet:  FileSetObject2  Index (IS_NLBL) read FsecondaryFileSet write FsecondaryFileSet;
    property tapeIn:            Int64           read FtapeIn write FtapeIn;
    property tapeOut:           Int64           read FtapeOut write FtapeOut;
    property targetAspectRatio: guid            Index (IS_NLBL) read FtargetAspectRatio write FtargetAspectRatio;
    property thumbnail:         Int64           Index (IS_NLBL) read Fthumbnail write Fthumbnail;
    property tvFormat:          Integer         read FtvFormat write FtvFormat;
    property uses_:             Integer         Index (IS_NLBL) read Fuses_ write Fuses_;
  end;



  // ************************************************************************ //
  // XML       : MixObjext, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MixObjext2 = class(TRemotable)
  private
    FDuration: Int64;
    FFlags: Integer;
    FMixID: guid;
    FParams: string;
    FStart: Int64;
  published
    property Duration: Int64    read FDuration write FDuration;
    property Flags:    Integer  read FFlags write FFlags;
    property MixID:    guid     read FMixID write FMixID;
    property Params:   string   Index (IS_NLBL) read FParams write FParams;
    property Start:    Int64    read FStart write FStart;
  end;



  // ************************************************************************ //
  // XML       : SequenceNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SequenceNode2 = class(Node2)
  private
    FComment: string;
    FDuration: Int64;
    FEditor: guid;
    FIn_: Int64;
    FOut_: Int64;
    FPlaybackStatus: Integer;
    FPresenter: guid;
    FRealStartTime: Int64;
    FSequenceType: SEQUENCE_TYPE;
    FStartTime: Int64;
    FStoryType: guid;
    FTVFormat: Integer;
    FVersion: Integer;
    FWorkflowstep: guid;
  published
    property Comment:        string         Index (IS_NLBL) read FComment write FComment;
    property Duration:       Int64          Index (IS_NLBL) read FDuration write FDuration;
    property Editor:         guid           Index (IS_NLBL) read FEditor write FEditor;
    property In_:            Int64          Index (IS_NLBL) read FIn_ write FIn_;
    property Out_:           Int64          Index (IS_NLBL) read FOut_ write FOut_;
    property PlaybackStatus: Integer        read FPlaybackStatus write FPlaybackStatus;
    property Presenter:      guid           Index (IS_NLBL) read FPresenter write FPresenter;
    property RealStartTime:  Int64          Index (IS_NLBL) read FRealStartTime write FRealStartTime;
    property SequenceType:   SEQUENCE_TYPE  Index (IS_NLBL) read FSequenceType write FSequenceType;
    property StartTime:      Int64          read FStartTime write FStartTime;
    property StoryType:      guid           Index (IS_NLBL) read FStoryType write FStoryType;
    property TVFormat:       Integer        Index (IS_NLBL) read FTVFormat write FTVFormat;
    property Version:        Integer        Index (IS_NLBL) read FVersion write FVersion;
    property Workflowstep:   guid           Index (IS_NLBL) read FWorkflowstep write FWorkflowstep;
  end;



  // ************************************************************************ //
  // XML       : MultiClipNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MultiClipNode2 = class(Node2)
  private
    FAMasterID: guid;
    FAudioChannels: Integer;
    FGridH: Integer;
    FGridV: Integer;
    FIn_: Int64;
    FIsFlip: Boolean;
    FLinkedGroup: guid;
    FMix: MixObjext2;
    FOut_: Int64;
    FSpeed: Integer;
    FSpeedDuration: Int64;
    FSyncPoint: Int64;
    FSyncType: guid;
    FTVFormat: Integer;
    FTapeIn: Int64;
    FTapeOut: Int64;
    FThumbnail: Int64;
    FThumbnailURL: string;
    FVMasterID: guid;
  public
    destructor Destroy; override;
  published
    property AMasterID:     guid        Index (IS_NLBL) read FAMasterID write FAMasterID;
    property AudioChannels: Integer     Index (IS_NLBL) read FAudioChannels write FAudioChannels;
    property GridH:         Integer     read FGridH write FGridH;
    property GridV:         Integer     read FGridV write FGridV;
    property In_:           Int64       Index (IS_NLBL) read FIn_ write FIn_;
    property IsFlip:        Boolean     read FIsFlip write FIsFlip;
    property LinkedGroup:   guid        Index (IS_NLBL) read FLinkedGroup write FLinkedGroup;
    property Mix:           MixObjext2  Index (IS_NLBL) read FMix write FMix;
    property Out_:          Int64       Index (IS_NLBL) read FOut_ write FOut_;
    property Speed:         Integer     Index (IS_NLBL) read FSpeed write FSpeed;
    property SpeedDuration: Int64       Index (IS_NLBL) read FSpeedDuration write FSpeedDuration;
    property SyncPoint:     Int64       read FSyncPoint write FSyncPoint;
    property SyncType:      guid        read FSyncType write FSyncType;
    property TVFormat:      Integer     read FTVFormat write FTVFormat;
    property TapeIn:        Int64       read FTapeIn write FTapeIn;
    property TapeOut:       Int64       read FTapeOut write FTapeOut;
    property Thumbnail:     Int64       Index (IS_NLBL) read FThumbnail write FThumbnail;
    property ThumbnailURL:  string      Index (IS_NLBL) read FThumbnailURL write FThumbnailURL;
    property VMasterID:     guid        Index (IS_NLBL) read FVMasterID write FVMasterID;
  end;



  // ************************************************************************ //
  // XML       : ClipNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ClipNode2 = class(Node2)
  private
    FAudioChannels: Integer;
    FClipColor: Integer;
    FComment: string;
    FHasAudio1: Boolean;
    FHasAudio10: Boolean;
    FHasAudio11: Boolean;
    FHasAudio12: Boolean;
    FHasAudio13: Boolean;
    FHasAudio14: Boolean;
    FHasAudio15: Boolean;
    FHasAudio16: Boolean;
    FHasAudio2: Boolean;
    FHasAudio3: Boolean;
    FHasAudio4: Boolean;
    FHasAudio5: Boolean;
    FHasAudio6: Boolean;
    FHasAudio7: Boolean;
    FHasAudio8: Boolean;
    FHasAudio9: Boolean;
    FHasVideo: Boolean;
    FIn_: Int64;
    FIsFlip: Boolean;
    FLinkedGroup: guid;
    FMix: MixObjext2;
    FMogID: guid;
    FOut_: Int64;
    FSpeed: Integer;
    FSpeedDuration: Int64;
    FTapeIn: Int64;
    FTapeOut: Int64;
    FTargetAspectRatio: guid;
    FThumbnail: Int64;
    FThumbnailURL: string;
    Fmog: MogNode2;
    FmogFields: MogClipFields2;
  public
    destructor Destroy; override;
  published
    property AudioChannels:     Integer         Index (IS_NLBL) read FAudioChannels write FAudioChannels;
    property ClipColor:         Integer         read FClipColor write FClipColor;
    property Comment:           string          Index (IS_NLBL) read FComment write FComment;
    property HasAudio1:         Boolean         read FHasAudio1 write FHasAudio1;
    property HasAudio10:        Boolean         read FHasAudio10 write FHasAudio10;
    property HasAudio11:        Boolean         read FHasAudio11 write FHasAudio11;
    property HasAudio12:        Boolean         read FHasAudio12 write FHasAudio12;
    property HasAudio13:        Boolean         read FHasAudio13 write FHasAudio13;
    property HasAudio14:        Boolean         read FHasAudio14 write FHasAudio14;
    property HasAudio15:        Boolean         read FHasAudio15 write FHasAudio15;
    property HasAudio16:        Boolean         read FHasAudio16 write FHasAudio16;
    property HasAudio2:         Boolean         read FHasAudio2 write FHasAudio2;
    property HasAudio3:         Boolean         read FHasAudio3 write FHasAudio3;
    property HasAudio4:         Boolean         read FHasAudio4 write FHasAudio4;
    property HasAudio5:         Boolean         read FHasAudio5 write FHasAudio5;
    property HasAudio6:         Boolean         read FHasAudio6 write FHasAudio6;
    property HasAudio7:         Boolean         read FHasAudio7 write FHasAudio7;
    property HasAudio8:         Boolean         read FHasAudio8 write FHasAudio8;
    property HasAudio9:         Boolean         read FHasAudio9 write FHasAudio9;
    property HasVideo:          Boolean         read FHasVideo write FHasVideo;
    property In_:               Int64           read FIn_ write FIn_;
    property IsFlip:            Boolean         read FIsFlip write FIsFlip;
    property LinkedGroup:       guid            Index (IS_NLBL) read FLinkedGroup write FLinkedGroup;
    property Mix:               MixObjext2      Index (IS_NLBL) read FMix write FMix;
    property MogID:             guid            read FMogID write FMogID;
    property Out_:              Int64           read FOut_ write FOut_;
    property Speed:             Integer         Index (IS_NLBL) read FSpeed write FSpeed;
    property SpeedDuration:     Int64           Index (IS_NLBL) read FSpeedDuration write FSpeedDuration;
    property TapeIn:            Int64           read FTapeIn write FTapeIn;
    property TapeOut:           Int64           read FTapeOut write FTapeOut;
    property TargetAspectRatio: guid            Index (IS_NLBL) read FTargetAspectRatio write FTargetAspectRatio;
    property Thumbnail:         Int64           Index (IS_NLBL) read FThumbnail write FThumbnail;
    property ThumbnailURL:      string          Index (IS_NLBL) read FThumbnailURL write FThumbnailURL;
    property mog:               MogNode2        Index (IS_NLBL) read Fmog write Fmog;
    property mogFields:         MogClipFields2  Index (IS_NLBL) read FmogFields write FmogFields;
  end;



  // ************************************************************************ //
  // XML       : MogNode, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MogNode2 = class(Node2)
  private
    FThumbnailURL: string;
    Fa10Alloc: guid;
    Fa11Alloc: guid;
    Fa12Alloc: guid;
    Fa13Alloc: guid;
    Fa14Alloc: guid;
    Fa15Alloc: guid;
    Fa16Alloc: guid;
    Fa1Alloc: guid;
    Fa2Alloc: guid;
    Fa3Alloc: guid;
    Fa4Alloc: guid;
    Fa5Alloc: guid;
    Fa6Alloc: guid;
    Fa7Alloc: guid;
    Fa8Alloc: guid;
    Fa9Alloc: guid;
    FaudioExtraData: string;
    FaudioType: guid;
    FclipColor: Integer;
    FfileSet: FileSetObject2;
    FisEntire: Boolean;
    FletterBox: guid;
    Foffset: Int64;
    ForiginalTapeIn: Int64;
    FrightsIndicator: guid;
    FrollLockType: Integer;
    FrollLocker: string;
    FsecondaryFileSet: FileSetObject2;
    FtapeIn: Int64;
    FtapeOut: Int64;
    FtargetAspectRatio: guid;
    Fthumbnail: Int64;
    FtvFormat: Integer;
    Fuses_: Integer;
  public
    destructor Destroy; override;
  published
    property ThumbnailURL:      string          Index (IS_NLBL) read FThumbnailURL write FThumbnailURL;
    property a10Alloc:          guid            Index (IS_NLBL) read Fa10Alloc write Fa10Alloc;
    property a11Alloc:          guid            Index (IS_NLBL) read Fa11Alloc write Fa11Alloc;
    property a12Alloc:          guid            Index (IS_NLBL) read Fa12Alloc write Fa12Alloc;
    property a13Alloc:          guid            Index (IS_NLBL) read Fa13Alloc write Fa13Alloc;
    property a14Alloc:          guid            Index (IS_NLBL) read Fa14Alloc write Fa14Alloc;
    property a15Alloc:          guid            Index (IS_NLBL) read Fa15Alloc write Fa15Alloc;
    property a16Alloc:          guid            Index (IS_NLBL) read Fa16Alloc write Fa16Alloc;
    property a1Alloc:           guid            Index (IS_NLBL) read Fa1Alloc write Fa1Alloc;
    property a2Alloc:           guid            Index (IS_NLBL) read Fa2Alloc write Fa2Alloc;
    property a3Alloc:           guid            Index (IS_NLBL) read Fa3Alloc write Fa3Alloc;
    property a4Alloc:           guid            Index (IS_NLBL) read Fa4Alloc write Fa4Alloc;
    property a5Alloc:           guid            Index (IS_NLBL) read Fa5Alloc write Fa5Alloc;
    property a6Alloc:           guid            Index (IS_NLBL) read Fa6Alloc write Fa6Alloc;
    property a7Alloc:           guid            Index (IS_NLBL) read Fa7Alloc write Fa7Alloc;
    property a8Alloc:           guid            Index (IS_NLBL) read Fa8Alloc write Fa8Alloc;
    property a9Alloc:           guid            Index (IS_NLBL) read Fa9Alloc write Fa9Alloc;
    property audioExtraData:    string          Index (IS_NLBL) read FaudioExtraData write FaudioExtraData;
    property audioType:         guid            Index (IS_NLBL) read FaudioType write FaudioType;
    property clipColor:         Integer         read FclipColor write FclipColor;
    property fileSet:           FileSetObject2  Index (IS_NLBL) read FfileSet write FfileSet;
    property isEntire:          Boolean         read FisEntire write FisEntire;
    property letterBox:         guid            Index (IS_NLBL) read FletterBox write FletterBox;
    property offset:            Int64           read Foffset write Foffset;
    property originalTapeIn:    Int64           read ForiginalTapeIn write ForiginalTapeIn;
    property rightsIndicator:   guid            Index (IS_NLBL) read FrightsIndicator write FrightsIndicator;
    property rollLockType:      Integer         read FrollLockType write FrollLockType;
    property rollLocker:        string          Index (IS_NLBL) read FrollLocker write FrollLocker;
    property secondaryFileSet:  FileSetObject2  Index (IS_NLBL) read FsecondaryFileSet write FsecondaryFileSet;
    property tapeIn:            Int64           read FtapeIn write FtapeIn;
    property tapeOut:           Int64           read FtapeOut write FtapeOut;
    property targetAspectRatio: guid            Index (IS_NLBL) read FtargetAspectRatio write FtargetAspectRatio;
    property thumbnail:         Int64           Index (IS_NLBL) read Fthumbnail write Fthumbnail;
    property tvFormat:          Integer         read FtvFormat write FtvFormat;
    property uses_:             Integer         Index (IS_NLBL) read Fuses_ write Fuses_;
  end;



  // ************************************************************************ //
  // XML       : FileDescObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  FileDescObject2 = class(TRemotable)
  private
    FauxFileType: string;
    FfileID: Integer;
    FfileName: string;
    FfilePath: string;
    FfileType: MAM_FILE_TYPES;
    FmediaGroupID: Integer;
    Foffset: Int64;
    FpathID: Integer;
    Fquality: Integer;
    Ftrack: Integer;
    Furl: string;
  published
    property auxFileType:  string          Index (IS_NLBL) read FauxFileType write FauxFileType;
    property fileID:       Integer         read FfileID write FfileID;
    property fileName:     string          Index (IS_NLBL) read FfileName write FfileName;
    property filePath:     string          Index (IS_NLBL) read FfilePath write FfilePath;
    property fileType:     MAM_FILE_TYPES  read FfileType write FfileType;
    property mediaGroupID: Integer         read FmediaGroupID write FmediaGroupID;
    property offset:       Int64           read Foffset write Foffset;
    property pathID:       Integer         read FpathID write FpathID;
    property quality:      Integer         read Fquality write Fquality;
    property track:        Integer         read Ftrack write Ftrack;
    property url:          string          Index (IS_NLBL) read Furl write Furl;
  end;

  ArrayOfFileDescObject = array of FileDescObject2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : FileSetObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  FileSetObject2 = class(TRemotable)
  private
    FID: NODEID2;
    Ffiles: ArrayOfFileDescObject;
    Ftype_: FileSetType;
  public
    destructor Destroy; override;
  published
    property ID:    NODEID2                read FID write FID;
    property files: ArrayOfFileDescObject  Index (IS_NLBL) read Ffiles write Ffiles;
    property type_: FileSetType            read Ftype_ write Ftype_;
  end;



  // ************************************************************************ //
  // XML       : EffectNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  EffectNode = class(EffectNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : TitlerNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  TitlerNode = class(TitlerNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : EffectExNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  EffectExNode = class(EffectExNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Keyframe, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  Keyframe = class(Keyframe2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : GraphicNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  GraphicNode = class(GraphicNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ScriptTrackNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ScriptTrackNode = class(ScriptTrackNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : AudioTrackNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  AudioTrackNode = class(AudioTrackNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : LabelNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  LabelNode = class(LabelNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : EmptyClipNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  EmptyClipNode = class(EmptyClipNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : JobDropFolderNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  JobDropFolderNode = class(JobDropFolderNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : StoryRundownNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  StoryRundownNode = class(StoryRundownNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ExtEventNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ExtEventNode = class(ExtEventNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SearchQueryNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SearchQueryNode = class(SearchQueryNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : TextFeedNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  TextFeedNode = class(TextFeedNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ScriptClipNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ScriptClipNode = class(ScriptClipNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : JobSubjectNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  JobSubjectNode = class(JobSubjectNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : JobNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  JobNode = class(JobNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : LiveClipNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  LiveClipNode = class(LiveClipNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : RefNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  RefNode = class(RefNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ClipNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ClipNode = class(ClipNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : FileDescObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  FileDescObject = class(FileDescObject2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : MogClipFields, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MogClipFields = class(MogClipFields2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : MixObjext, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MixObjext = class(MixObjext2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : FileSetObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  FileSetObject = class(FileSetObject2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ClipBinNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ClipBinNode = class(ClipBinNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : NodeBase, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  NodeBase = class(NodeBase2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : MogNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MogNode = class(MogNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : BinNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  BinNode = class(BinNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : MultiClipNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MultiClipNode = class(MultiClipNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : LayerNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  LayerNode = class(LayerNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : DescriptorGroup, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  DescriptorGroup = class(DescriptorGroup2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : VideoTrackNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  VideoTrackNode = class(VideoTrackNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : TrackNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  TrackNode = class(TrackNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Descriptor, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  Descriptor = class(Descriptor2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : DocumentNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  DocumentNode = class(DocumentNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SequenceNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SequenceNode = class(SequenceNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : DescriptorBase, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  DescriptorBase = class(DescriptorBase2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Presets, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  Presets = class(Presets2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SearchNodesListResult, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SearchNodesListResult = class(SearchNodesListResult2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Search2Parameters, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  Search2Parameters = class(Search2Parameters2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SearchPagerParameters, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SearchPagerParameters = class(SearchPagerParameters2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SearchListResult, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SearchListResult = class(SearchListResult2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Search2Result, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  Search2Result = class(Search2Result2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SearchParameters, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SearchParameters = class(SearchParameters2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : MetadataObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MetadataObject = class(MetadataObject2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : GetRecentNodesParameters, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  GetRecentNodesParameters = class(GetRecentNodesParameters2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SearchResult, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SearchResult = class(SearchResult2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SubTypeObjects, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SubTypeObjects = class(SubTypeObjects2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : RenameUpdate, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  RenameUpdate = class(RenameUpdate2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ChildrenDeletedUpdate, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ChildrenDeletedUpdate = class(ChildrenDeletedUpdate2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : PredefinedPropertyObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  PredefinedPropertyObject = class(PredefinedPropertyObject2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : FieldUpdate, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  FieldUpdate = class(FieldUpdate2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ChildrenInsertedUpdate, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ChildrenInsertedUpdate = class(ChildrenInsertedUpdate2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : TVFormatObjects, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  TVFormatObjects = class(TVFormatObjects2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SubTypeObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SubTypeObject = class(SubTypeObject2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : BaseUpdate, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  BaseUpdate = class(BaseUpdate2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : TVFormatObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  TVFormatObject = class(TVFormatObject2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OradPageNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradPageNode = class(OradPageNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OradDataqueryNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradDataqueryNode = class(OradDataqueryNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OradDatasetNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradDatasetNode = class(OradDatasetNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OradTickerNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradTickerNode = class(OradTickerNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OradDatalinkNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradDatalinkNode = class(OradDatalinkNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : RundownNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  RundownNode = class(RundownNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : MosNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MosNode = class(MosNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OradCommonNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradCommonNode = class(OradCommonNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : DayTemplateNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  DayTemplateNode = class(DayTemplateNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OradGraphicItemNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradGraphicItemNode = class(OradGraphicItemNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OradTransitionNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradTransitionNode = class(OradTransitionNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OradSceneNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradSceneNode = class(OradSceneNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : MetadataSetObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MetadataSetObject = class(MetadataSetObject2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Orad3DPlayNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  Orad3DPlayNode = class(Orad3DPlayNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OradRundownNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradRundownNode = class(OradRundownNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OradAudioItemNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradAudioItemNode = class(OradAudioItemNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OradTickerItemNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradTickerItemNode = class(OradTickerItemNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OradExternalItemNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradExternalItemNode = class(OradExternalItemNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OradDdrItemNode, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  OradDdrItemNode = class(OradDdrItemNode2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Node, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  Node = class(Node2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : MpegProfileObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MpegProfileObject2 = class(TRemotable)
  private
    Fcontent: string;
    Fdescription: string;
    Fname_: string;
    FprofileID: Integer;
    Ftype_: MpegProfileType;
    FtypeName: string;
  published
    property content:     string           Index (IS_NLBL) read Fcontent write Fcontent;
    property description: string           Index (IS_NLBL) read Fdescription write Fdescription;
    property name_:       string           Index (IS_NLBL) read Fname_ write Fname_;
    property profileID:   Integer          read FprofileID write FprofileID;
    property type_:       MpegProfileType  read Ftype_ write Ftype_;
    property typeName:    string           Index (IS_NLBL) read FtypeName write FtypeName;
  end;



  // ************************************************************************ //
  // XML       : MpegProfileObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MpegProfileObject = class(MpegProfileObject2)
  private
  published
  end;

  ArrayOfMpegProfileObject = array of MpegProfileObject2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ArrayOfMpegProfile_TVFormatObject = array of MpegProfile_TVFormatObject2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : MpegProfile_TVFormatObjects, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MpegProfile_TVFormatObjects2 = class(TRemotable)
  private
    Fprofiles: ArrayOfMpegProfile_TVFormatObject;
  public
    destructor Destroy; override;
  published
    property profiles: ArrayOfMpegProfile_TVFormatObject  Index (IS_NLBL) read Fprofiles write Fprofiles;
  end;



  // ************************************************************************ //
  // XML       : MpegProfile_TVFormatObjects, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MpegProfile_TVFormatObjects = class(MpegProfile_TVFormatObjects2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : MpegProfileSetObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MpegProfileSetObject2 = class(TRemotable)
  private
    Fprofiles: ArrayOfMpegProfileObject;
  public
    destructor Destroy; override;
  published
    property profiles: ArrayOfMpegProfileObject  Index (IS_NLBL) read Fprofiles write Fprofiles;
  end;



  // ************************************************************************ //
  // XML       : MpegProfileSetObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MpegProfileSetObject = class(MpegProfileSetObject2)
  private
  published
  end;

  ArrayOfMappingTypeObject = array of MappingTypeObject2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : MetadataTemplate, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MetadataTemplate2 = class(TRemotable)
  private
    Fform: string;
    FformBinary: TByteDynArray;
    FisDefault: Boolean;
    FisDisabled: Boolean;
    FisUserDefault: Boolean;
    Fname_: string;
    FnodeSubtype: Integer;
    FnodeType: NODE_TYPE;
    FtemplateID: guid;
    Ftype_: MetadataTemplateType;
  published
    property form:          string                Index (IS_NLBL) read Fform write Fform;
    property formBinary:    TByteDynArray         Index (IS_NLBL) read FformBinary write FformBinary;
    property isDefault:     Boolean               read FisDefault write FisDefault;
    property isDisabled:    Boolean               read FisDisabled write FisDisabled;
    property isUserDefault: Boolean               read FisUserDefault write FisUserDefault;
    property name_:         string                Index (IS_NLBL) read Fname_ write Fname_;
    property nodeSubtype:   Integer               read FnodeSubtype write FnodeSubtype;
    property nodeType:      NODE_TYPE             read FnodeType write FnodeType;
    property templateID:    guid                  read FtemplateID write FtemplateID;
    property type_:         MetadataTemplateType  read Ftype_ write Ftype_;
  end;



  // ************************************************************************ //
  // XML       : MetadataTemplate, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MetadataTemplate = class(MetadataTemplate2)
  private
  published
  end;

  ArrayOfMetadataTemplate = array of MetadataTemplate2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : MetadataTemplateSetObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MetadataTemplateSetObject2 = class(TRemotable)
  private
    Ftemplates: ArrayOfMetadataTemplate;
  public
    destructor Destroy; override;
  published
    property templates: ArrayOfMetadataTemplate  Index (IS_NLBL) read Ftemplates write Ftemplates;
  end;



  // ************************************************************************ //
  // XML       : MetadataTemplateSetObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MetadataTemplateSetObject = class(MetadataTemplateSetObject2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : MpegProfile_TVFormatObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MpegProfile_TVFormatObject2 = class(TRemotable)
  private
    FprofileID: Integer;
    FtvFormat: TVFORMAT;
  published
    property profileID: Integer   read FprofileID write FprofileID;
    property tvFormat:  TVFORMAT  read FtvFormat write FtvFormat;
  end;



  // ************************************************************************ //
  // XML       : MpegProfile_TVFormatObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MpegProfile_TVFormatObject = class(MpegProfile_TVFormatObject2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : WorkflowStepObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  WorkflowStepObject2 = class(TRemotable)
  private
    Fbcolor: Integer;
    Ffcolor: Integer;
    FuserName: string;
    FworkflowStepID: guid;
  published
    property bcolor:         Integer  read Fbcolor write Fbcolor;
    property fcolor:         Integer  read Ffcolor write Ffcolor;
    property userName:       string   Index (IS_NLBL) read FuserName write FuserName;
    property workflowStepID: guid     read FworkflowStepID write FworkflowStepID;
  end;



  // ************************************************************************ //
  // XML       : WorkflowStepObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  WorkflowStepObject = class(WorkflowStepObject2)
  private
  published
  end;

  ArrayOfEditorObject = array of EditorObject2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ArrayOfWorkflowStepObject = array of WorkflowStepObject2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : WorkflowStepObjects, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  WorkflowStepObjects2 = class(TRemotable)
  private
    FworkflowSteps: ArrayOfWorkflowStepObject;
  public
    destructor Destroy; override;
  published
    property workflowSteps: ArrayOfWorkflowStepObject  Index (IS_NLBL) read FworkflowSteps write FworkflowSteps;
  end;



  // ************************************************************************ //
  // XML       : WorkflowStepObjects, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  WorkflowStepObjects = class(WorkflowStepObjects2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : EditorObjects, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  EditorObjects2 = class(TRemotable)
  private
    Feditors: ArrayOfEditorObject;
  public
    destructor Destroy; override;
  published
    property editors: ArrayOfEditorObject  Index (IS_NLBL) read Feditors write Feditors;
  end;



  // ************************************************************************ //
  // XML       : EditorObjects, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  EditorObjects = class(EditorObjects2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : PresenterObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  PresenterObject2 = class(TRemotable)
  private
    Fflags: Integer;
    FpresenterID: guid;
    Fspeed: Integer;
    FuserName: string;
  published
    property flags:       Integer  read Fflags write Fflags;
    property presenterID: guid     read FpresenterID write FpresenterID;
    property speed:       Integer  read Fspeed write Fspeed;
    property userName:    string   Index (IS_NLBL) read FuserName write FuserName;
  end;



  // ************************************************************************ //
  // XML       : PresenterObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  PresenterObject = class(PresenterObject2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : EditorObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  EditorObject2 = class(TRemotable)
  private
    FeditorID: guid;
    Fflags: Integer;
    Fspeed: Integer;
    FuserName: string;
  published
    property editorID: guid     read FeditorID write FeditorID;
    property flags:    Integer  read Fflags write Fflags;
    property speed:    Integer  read Fspeed write Fspeed;
    property userName: string   Index (IS_NLBL) read FuserName write FuserName;
  end;



  // ************************************************************************ //
  // XML       : EditorObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  EditorObject = class(EditorObject2)
  private
  published
  end;

  ArrayOfPresenterObject = array of PresenterObject2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : PresenterObjects, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  PresenterObjects2 = class(TRemotable)
  private
    Fpresenters: ArrayOfPresenterObject;
  public
    destructor Destroy; override;
  published
    property presenters: ArrayOfPresenterObject  Index (IS_NLBL) read Fpresenters write Fpresenters;
  end;



  // ************************************************************************ //
  // XML       : PresenterObjects, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  PresenterObjects = class(PresenterObjects2)
  private
  published
  end;

  ArrayOfUserAction = array of UserAction2;     { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : UserActionObjects, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  UserActionObjects2 = class(TRemotable)
  private
    Factions: ArrayOfUserAction;
    Fenabled: Integer;
    Fusername: string;
  public
    destructor Destroy; override;
  published
    property actions:  ArrayOfUserAction  Index (IS_NLBL) read Factions write Factions;
    property enabled:  Integer            read Fenabled write Fenabled;
    property username: string             Index (IS_NLBL) read Fusername write Fusername;
  end;



  // ************************************************************************ //
  // XML       : UserActionObjects, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  UserActionObjects = class(UserActionObjects2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : UserAction, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  UserAction2 = class(TRemotable)
  private
    F_enabled: Boolean;
    F_id: Integer;
    F_name: string;
  published
    property _enabled: Boolean  read F_enabled write F_enabled;
    property _id:      Integer  read F_id write F_id;
    property _name:    string   Index (IS_NLBL) read F_name write F_name;
  end;



  // ************************************************************************ //
  // XML       : UserAction, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  UserAction = class(UserAction2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : LogTemplate, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  LogTemplate2 = class(TRemotable)
  private
    F_guid: guid;
    F_name: string;
    F_path: string;
  published
    property _guid: guid    read F_guid write F_guid;
    property _name: string  Index (IS_NLBL) read F_name write F_name;
    property _path: string  Index (IS_NLBL) read F_path write F_path;
  end;



  // ************************************************************************ //
  // XML       : LogTemplate, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  LogTemplate = class(LogTemplate2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ColorParameter, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ColorParameter2 = class(TRemotable)
  private
    F_color_index: Integer;
    F_color_value: Integer;
  published
    property _color_index: Integer  read F_color_index write F_color_index;
    property _color_value: Integer  read F_color_value write F_color_value;
  end;



  // ************************************************************************ //
  // XML       : ColorParameter, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ColorParameter = class(ColorParameter2)
  private
  published
  end;

  ArrayOfColorParameter = array of ColorParameter2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : ColorParameterObjects, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ColorParameterObjects2 = class(TRemotable)
  private
    Fparameters: ArrayOfColorParameter;
  public
    destructor Destroy; override;
  published
    property parameters: ArrayOfColorParameter  Index (IS_NLBL) read Fparameters write Fparameters;
  end;



  // ************************************************************************ //
  // XML       : ColorParameterObjects, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  ColorParameterObjects = class(ColorParameterObjects2)
  private
  published
  end;

  ArrayOfLogTemplate = array of LogTemplate2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : LogTemplateObjects, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  LogTemplateObjects2 = class(TRemotable)
  private
    Ftemplates: ArrayOfLogTemplate;
  public
    destructor Destroy; override;
  published
    property templates: ArrayOfLogTemplate  Index (IS_NLBL) read Ftemplates write Ftemplates;
  end;



  // ************************************************************************ //
  // XML       : LogTemplateObjects, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  LogTemplateObjects = class(LogTemplateObjects2)
  private
  published
  end;

  ArrayOfPropertyObjectBase = array of PropertyObjectBase2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : PropertySetObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  PropertySetObject2 = class(TRemotable)
  private
    Fproperties: ArrayOfPropertyObjectBase;
  public
    destructor Destroy; override;
  published
    property properties: ArrayOfPropertyObjectBase  Index (IS_NLBL) read Fproperties write Fproperties;
  end;



  // ************************************************************************ //
  // XML       : PropertySetObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  PropertySetObject = class(PropertySetObject2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : MappingObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MappingObject2 = class(TRemotable)
  private
    FschemaID: guid;
    Ftype_: MappingType;
    Fxml: string;
  published
    property schemaID: guid         read FschemaID write FschemaID;
    property type_:    MappingType  read Ftype_ write Ftype_;
    property xml:      string       Index (IS_NLBL) read Fxml write Fxml;
  end;



  // ************************************************************************ //
  // XML       : MappingObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MappingObject = class(MappingObject2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : MosObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MosObject2 = class(TRemotable)
  private
    Fdescription: string;
    Fhostname: string;
    FisStoreSend: Boolean;
    FmosID: string;
    FprogID: string;
    Ftype_: string;
    Fversion: string;
  published
    property description: string   Index (IS_NLBL) read Fdescription write Fdescription;
    property hostname:    string   Index (IS_NLBL) read Fhostname write Fhostname;
    property isStoreSend: Boolean  read FisStoreSend write FisStoreSend;
    property mosID:       string   Index (IS_NLBL) read FmosID write FmosID;
    property progID:      string   Index (IS_NLBL) read FprogID write FprogID;
    property type_:       string   Index (IS_NLBL) read Ftype_ write Ftype_;
    property version:     string   Index (IS_NLBL) read Fversion write Fversion;
  end;



  // ************************************************************************ //
  // XML       : MosObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MosObject = class(MosObject2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : MappingTypeObjects, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MappingTypeObjects2 = class(TRemotable)
  private
    Fmappings: ArrayOfMappingTypeObject;
  public
    destructor Destroy; override;
  published
    property mappings: ArrayOfMappingTypeObject  Index (IS_NLBL) read Fmappings write Fmappings;
  end;



  // ************************************************************************ //
  // XML       : MappingTypeObjects, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MappingTypeObjects = class(MappingTypeObjects2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : MappingTypeObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MappingTypeObject2 = class(TRemotable)
  private
    Fid: guid;
    Fname_: string;
    FxmlSchema: string;
  published
    property id:        guid    read Fid write Fid;
    property name_:     string  Index (IS_NLBL) read Fname_ write Fname_;
    property xmlSchema: string  Index (IS_NLBL) read FxmlSchema write FxmlSchema;
  end;



  // ************************************************************************ //
  // XML       : MappingTypeObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MappingTypeObject = class(MappingTypeObject2)
  private
  published
  end;

  ArrayOfMosObject = array of MosObject2;       { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }
  ArrayOfTag = array of Tag2;                   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : TagsCloudObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  TagsCloudObject2 = class(TRemotable)
  private
    Ftags: ArrayOfTag;
  public
    destructor Destroy; override;
  published
    property tags: ArrayOfTag  Index (IS_NLBL) read Ftags write Ftags;
  end;



  // ************************************************************************ //
  // XML       : TagsCloudObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  TagsCloudObject = class(TagsCloudObject2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : MosObjects, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MosObjects2 = class(TRemotable)
  private
    Fobjects: ArrayOfMosObject;
  public
    destructor Destroy; override;
  published
    property objects: ArrayOfMosObject  Index (IS_NLBL) read Fobjects write Fobjects;
  end;



  // ************************************************************************ //
  // XML       : MosObjects, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MosObjects = class(MosObjects2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Tag, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  Tag2 = class(TRemotable)
  private
    Fnumber: Integer;
    Ftag_name: string;
  published
    property number:   Integer  read Fnumber write Fnumber;
    property tag_name: string   Index (IS_NLBL) read Ftag_name write Ftag_name;
  end;



  // ************************************************************************ //
  // XML       : Tag, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  Tag = class(Tag2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : AsyncCommandContext, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  AsyncCommandContext2 = class(TRemotable)
  private
    F_id: guid;
  published
    property _id: guid  read F_id write F_id;
  end;



  // ************************************************************************ //
  // XML       : AsyncCommandContext, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  AsyncCommandContext = class(AsyncCommandContext2)
  private
  published
  end;

  ArrayOfAsyncCommandResult = array of AsyncCommandResult2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : GetAsyncCommandsResultResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetAsyncCommandsResultResponse = class(TRemotable)
  private
    FcommandsResult: ArrayOfAsyncCommandResult;
    FcommandsResult_Specified: boolean;
    FretCode: Integer;
    FretCode_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    procedure SetcommandsResult(Index: Integer; const AArrayOfAsyncCommandResult: ArrayOfAsyncCommandResult);
    function  commandsResult_Specified(Index: Integer): boolean;
    procedure SetretCode(Index: Integer; const AInteger: Integer);
    function  retCode_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property commandsResult: ArrayOfAsyncCommandResult  Index (IS_OPTN or IS_NLBL) read FcommandsResult write SetcommandsResult stored commandsResult_Specified;
    property retCode:        Integer                    Index (IS_OPTN) read FretCode write SetretCode stored retCode_Specified;
    property error:          string                     Index (IS_OPTN or IS_NLBL) read Ferror write Seterror stored error_Specified;
  end;



  // ************************************************************************ //
  // XML       : AsyncCommandResult, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  AsyncCommandResult2 = class(TRemotable)
  private
    FcommandContext: AsyncCommandContext2;
    FcommandResponse: Variant;
    FcommandStatus: ASYNC_COMMAND_STATUS;
  public
    destructor Destroy; override;
  published
    property commandContext:  AsyncCommandContext2  Index (IS_NLBL) read FcommandContext write FcommandContext;
    property commandResponse: Variant               Index (IS_NLBL) read FcommandResponse write FcommandResponse;
    property commandStatus:   ASYNC_COMMAND_STATUS  read FcommandStatus write FcommandStatus;
  end;



  // ************************************************************************ //
  // XML       : AsyncCommandResult, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  AsyncCommandResult = class(AsyncCommandResult2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : LogData, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  LogData2 = class(TRemotable)
  private
    F_x003C_AppData_x003E_k__BackingField: string;
    F_x003C_Mode_x003E_k__BackingField: string;
    F_x003C_infoText_x003E_k__BackingField: string;
  published
    property _x003C_AppData_x003E_k__BackingField:  string  Index (IS_NLBL) read F_x003C_AppData_x003E_k__BackingField write F_x003C_AppData_x003E_k__BackingField;
    property _x003C_Mode_x003E_k__BackingField:     string  Index (IS_NLBL) read F_x003C_Mode_x003E_k__BackingField write F_x003C_Mode_x003E_k__BackingField;
    property _x003C_infoText_x003E_k__BackingField: string  Index (IS_NLBL) read F_x003C_infoText_x003E_k__BackingField write F_x003C_infoText_x003E_k__BackingField;
  end;



  // ************************************************************************ //
  // XML       : LogData, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  LogData = class(LogData2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : JobProcessorGroupObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  JobProcessorGroupObject2 = class(TRemotable)
  private
    FjobProcessorGroupId: Integer;
    Fname_: string;
  published
    property jobProcessorGroupId: Integer  read FjobProcessorGroupId write FjobProcessorGroupId;
    property name_:               string   Index (IS_NLBL) read Fname_ write Fname_;
  end;



  // ************************************************************************ //
  // XML       : JobProcessorGroupObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  JobProcessorGroupObject = class(JobProcessorGroupObject2)
  private
  published
  end;

  ArrayOfJobProcessorGroupObject = array of JobProcessorGroupObject2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : PropertyObjectByName, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  PropertyObjectByName2 = class(TRemotable)
  private
    FfieldName: string;
    Fvalue: Variant;
  published
    property fieldName: string   Index (IS_NLBL) read FfieldName write FfieldName;
    property value:     Variant  Index (IS_NLBL) read Fvalue write Fvalue;
  end;



  // ************************************************************************ //
  // XML       : PropertyObjectByName, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  PropertyObjectByName = class(PropertyObjectByName2)
  private
  published
  end;

  ArrayOfPropertyObjectByName = array of PropertyObjectByName2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : SetPropertiesByNameMessageRequest, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetPropertiesByNameMessageRequest = class(TRemotable)
  private
    Fcontext: ConnectContext2;
    Fcontext_Specified: boolean;
    Fnode: NodeBase2;
    Fnode_Specified: boolean;
    Fproperties: ArrayOfPropertyObjectByName;
    Fproperties_Specified: boolean;
    procedure Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
    function  context_Specified(Index: Integer): boolean;
    procedure Setnode(Index: Integer; const ANodeBase2: NodeBase2);
    function  node_Specified(Index: Integer): boolean;
    procedure Setproperties(Index: Integer; const AArrayOfPropertyObjectByName: ArrayOfPropertyObjectByName);
    function  properties_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property context:    ConnectContext2              Index (IS_OPTN or IS_NLBL) read Fcontext write Setcontext stored context_Specified;
    property node:       NodeBase2                    Index (IS_OPTN or IS_NLBL) read Fnode write Setnode stored node_Specified;
    property properties: ArrayOfPropertyObjectByName  Index (IS_OPTN or IS_NLBL) read Fproperties write Setproperties stored properties_Specified;
  end;



  // ************************************************************************ //
  // XML       : JobProcessorGroupObjects, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  JobProcessorGroupObjects2 = class(TRemotable)
  private
    FjobProcessorGroup: ArrayOfJobProcessorGroupObject;
  public
    destructor Destroy; override;
  published
    property jobProcessorGroup: ArrayOfJobProcessorGroupObject  Index (IS_NLBL) read FjobProcessorGroup write FjobProcessorGroup;
  end;



  // ************************************************************************ //
  // XML       : JobProcessorGroupObjects, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  JobProcessorGroupObjects = class(JobProcessorGroupObjects2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : JobCreationInfoObjects, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  JobCreationInfoObjects2 = class(TRemotable)
  private
    Fobjects: ArrayOfKeyValueOfJOB_FOLDER_TYPEJobCreationInfoObject_SRNRwcyb;
  public
    destructor Destroy; override;
  published
    property objects: ArrayOfKeyValueOfJOB_FOLDER_TYPEJobCreationInfoObject_SRNRwcyb  Index (IS_NLBL) read Fobjects write Fobjects;
  end;



  // ************************************************************************ //
  // XML       : JobCreationInfoObjects, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  JobCreationInfoObjects = class(JobCreationInfoObjects2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : MediaGroupObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MediaGroupObject2 = class(TRemotable)
  private
    Fdescription: string;
    Fflags: Integer;
    FmediaGroupId: Integer;
    Fname_: string;
  published
    property description:  string   Index (IS_NLBL) read Fdescription write Fdescription;
    property flags:        Integer  read Fflags write Fflags;
    property mediaGroupId: Integer  read FmediaGroupId write FmediaGroupId;
    property name_:        string   Index (IS_NLBL) read Fname_ write Fname_;
  end;



  // ************************************************************************ //
  // XML       : MediaGroupObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MediaGroupObject = class(MediaGroupObject2)
  private
  published
  end;

  ArrayOfMediaGroupObject = array of MediaGroupObject2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : MediaGroupObjects, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MediaGroupObjects2 = class(TRemotable)
  private
    FmediaGroup: ArrayOfMediaGroupObject;
  public
    destructor Destroy; override;
  published
    property mediaGroup: ArrayOfMediaGroupObject  Index (IS_NLBL) read FmediaGroup write FmediaGroup;
  end;



  // ************************************************************************ //
  // XML       : MediaGroupObjects, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MediaGroupObjects = class(MediaGroupObjects2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SlaveDatabaseObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SlaveDatabaseObject2 = class(TRemotable)
  private
    FdbName: string;
    FdbServer: string;
    FdbUser: string;
    Fdescription: string;
    Fflags: Integer;
    FisReadOnly: Boolean;
    FisTrusted: Boolean;
  published
    property dbName:      string   Index (IS_NLBL) read FdbName write FdbName;
    property dbServer:    string   Index (IS_NLBL) read FdbServer write FdbServer;
    property dbUser:      string   Index (IS_NLBL) read FdbUser write FdbUser;
    property description: string   Index (IS_NLBL) read Fdescription write Fdescription;
    property flags:       Integer  read Fflags write Fflags;
    property isReadOnly:  Boolean  read FisReadOnly write FisReadOnly;
    property isTrusted:   Boolean  read FisTrusted write FisTrusted;
  end;



  // ************************************************************************ //
  // XML       : SlaveDatabaseObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SlaveDatabaseObject = class(SlaveDatabaseObject2)
  private
  published
  end;

  ArrayOfBaseCommand = array of BaseCommand2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : CommandsChain, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  CommandsChain2 = class(TRemotable)
  private
    F_commands: ArrayOfBaseCommand;
  public
    destructor Destroy; override;
  published
    property _commands: ArrayOfBaseCommand  Index (IS_NLBL) read F_commands write F_commands;
  end;



  // ************************************************************************ //
  // XML       : CommandsChain, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  CommandsChain = class(CommandsChain2)
  private
  published
  end;

  ArrayOfSlaveDatabaseObject = array of SlaveDatabaseObject2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : StoryTypeObject, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  StoryTypeObject2 = class(TRemotable)
  private
    Fbcolor: Integer;
    Ffcolor: Integer;
    FstoryTypeID: guid;
    FuserName: string;
  published
    property bcolor:      Integer  read Fbcolor write Fbcolor;
    property fcolor:      Integer  read Ffcolor write Ffcolor;
    property storyTypeID: guid     read FstoryTypeID write FstoryTypeID;
    property userName:    string   Index (IS_NLBL) read FuserName write FuserName;
  end;



  // ************************************************************************ //
  // XML       : StoryTypeObject, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  StoryTypeObject = class(StoryTypeObject2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SlaveDatabaseObjects, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SlaveDatabaseObjects2 = class(TRemotable)
  private
    Fdatabases: ArrayOfSlaveDatabaseObject;
  public
    destructor Destroy; override;
  published
    property databases: ArrayOfSlaveDatabaseObject  Index (IS_NLBL) read Fdatabases write Fdatabases;
  end;



  // ************************************************************************ //
  // XML       : SlaveDatabaseObjects, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SlaveDatabaseObjects = class(SlaveDatabaseObjects2)
  private
  published
  end;

  ArrayOfStoryTypeObject = array of StoryTypeObject2;   { "http://schemas.datacontract.org/2004/07/MessageContracts"[GblCplx] }


  // ************************************************************************ //
  // XML       : StoryTypeObjects, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  StoryTypeObjects2 = class(TRemotable)
  private
    FstoryTypes: ArrayOfStoryTypeObject;
  public
    destructor Destroy; override;
  published
    property storyTypes: ArrayOfStoryTypeObject  Index (IS_NLBL) read FstoryTypes write FstoryTypes;
  end;



  // ************************************************************************ //
  // XML       : StoryTypeObjects, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  StoryTypeObjects = class(StoryTypeObjects2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : BaseCommand, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  BaseCommand2 = class(TRemotable)
  private
    F_commandType: CommandType;
  published
    property _commandType: CommandType  read F_commandType write F_commandType;
  end;



  // ************************************************************************ //
  // XML       : BaseCommand, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  BaseCommand = class(BaseCommand2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : RemoveTagCommand, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  RemoveTagCommand2 = class(BaseCommand2)
  private
    F_nodeID: NODEID2;
    F_tag: string;
  public
    destructor Destroy; override;
  published
    property _nodeID: NODEID2  read F_nodeID write F_nodeID;
    property _tag:    string   Index (IS_NLBL) read F_tag write F_tag;
  end;



  // ************************************************************************ //
  // XML       : RemoveTagCommand, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  RemoveTagCommand = class(RemoveTagCommand2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : LockNodeCommand, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  LockNodeCommand2 = class(BaseCommand2)
  private
    F_lockType: LockType;
    F_node: NodeBase2;
  public
    destructor Destroy; override;
  published
    property _lockType: LockType   read F_lockType write F_lockType;
    property _node:     NodeBase2  Index (IS_NLBL) read F_node write F_node;
  end;



  // ************************************************************************ //
  // XML       : LockNodeCommand, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  LockNodeCommand = class(LockNodeCommand2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : CreateJobCommand, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  CreateJobCommand2 = class(BaseCommand2)
  private
    F_isCopy: Boolean;
    F_node: JobNode2;
    F_subjectNodes: ArrayOfNode;
  public
    destructor Destroy; override;
  published
    property _isCopy:       Boolean      read F_isCopy write F_isCopy;
    property _node:         JobNode2     Index (IS_NLBL) read F_node write F_node;
    property _subjectNodes: ArrayOfNode  Index (IS_NLBL) read F_subjectNodes write F_subjectNodes;
  end;



  // ************************************************************************ //
  // XML       : CreateJobCommand, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  CreateJobCommand = class(CreateJobCommand2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : AddTagCommand, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  AddTagCommand2 = class(BaseCommand2)
  private
    F_nodeID: NODEID2;
    F_tag: string;
  public
    destructor Destroy; override;
  published
    property _nodeID: NODEID2  read F_nodeID write F_nodeID;
    property _tag:    string   Index (IS_NLBL) read F_tag write F_tag;
  end;



  // ************************************************************************ //
  // XML       : AddTagCommand, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  AddTagCommand = class(AddTagCommand2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : UnlockNodeCommand, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  UnlockNodeCommand2 = class(BaseCommand2)
  private
    F_lockType: LockType;
    F_node: NodeBase2;
  public
    destructor Destroy; override;
  published
    property _lockType: LockType   read F_lockType write F_lockType;
    property _node:     NodeBase2  Index (IS_NLBL) read F_node write F_node;
  end;



  // ************************************************************************ //
  // XML       : UnlockNodeCommand, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  UnlockNodeCommand = class(UnlockNodeCommand2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : CopyNodeCommand, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  CopyNodeCommand2 = class(BaseCommand2)
  private
    F_dstParent: NodeBase2;
    F_insertBefore: Boolean;
    F_insertPosition: NodeBase2;
    F_newNodeID: NODEID2;
    F_node: NodeBase2;
  public
    destructor Destroy; override;
  published
    property _dstParent:      NodeBase2  Index (IS_NLBL) read F_dstParent write F_dstParent;
    property _insertBefore:   Boolean    read F_insertBefore write F_insertBefore;
    property _insertPosition: NodeBase2  Index (IS_NLBL) read F_insertPosition write F_insertPosition;
    property _newNodeID:      NODEID2    Index (IS_NLBL) read F_newNodeID write F_newNodeID;
    property _node:           NodeBase2  Index (IS_NLBL) read F_node write F_node;
  end;



  // ************************************************************************ //
  // XML       : CopyNodeCommand, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  CopyNodeCommand = class(CopyNodeCommand2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SetPropertiesCommand, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SetPropertiesCommand2 = class(BaseCommand2)
  private
    F_node: NodeBase2;
    F_properties: PropertySetObject2;
  public
    destructor Destroy; override;
  published
    property _node:       NodeBase2           Index (IS_NLBL) read F_node write F_node;
    property _properties: PropertySetObject2  Index (IS_NLBL) read F_properties write F_properties;
  end;



  // ************************************************************************ //
  // XML       : SetPropertiesCommand, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SetPropertiesCommand = class(SetPropertiesCommand2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : CreateNodeByNodeCommand, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  CreateNodeByNodeCommand2 = class(BaseCommand2)
  private
    F_dstParent: NodeBase2;
    F_insertBefore: Boolean;
    F_insertPosition: NodeBase2;
    F_newNodeSubType: Integer;
    F_newNodeType: NODE_TYPE;
    F_node: Node2;
    F_properties: PropertySetObject2;
  public
    destructor Destroy; override;
  published
    property _dstParent:      NodeBase2           Index (IS_NLBL) read F_dstParent write F_dstParent;
    property _insertBefore:   Boolean             read F_insertBefore write F_insertBefore;
    property _insertPosition: NodeBase2           Index (IS_NLBL) read F_insertPosition write F_insertPosition;
    property _newNodeSubType: Integer             read F_newNodeSubType write F_newNodeSubType;
    property _newNodeType:    NODE_TYPE           read F_newNodeType write F_newNodeType;
    property _node:           Node2               Index (IS_NLBL) read F_node write F_node;
    property _properties:     PropertySetObject2  Index (IS_NLBL) read F_properties write F_properties;
  end;



  // ************************************************************************ //
  // XML       : CreateNodeByNodeCommand, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  CreateNodeByNodeCommand = class(CreateNodeByNodeCommand2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : MoveNodeCommand, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MoveNodeCommand2 = class(BaseCommand2)
  private
    F_dstParent: NodeBase2;
    F_insertBefore: Boolean;
    F_insertPosition: NodeBase2;
    F_node: Node2;
  public
    destructor Destroy; override;
  published
    property _dstParent:      NodeBase2  Index (IS_NLBL) read F_dstParent write F_dstParent;
    property _insertBefore:   Boolean    read F_insertBefore write F_insertBefore;
    property _insertPosition: NodeBase2  Index (IS_NLBL) read F_insertPosition write F_insertPosition;
    property _node:           Node2      Index (IS_NLBL) read F_node write F_node;
  end;



  // ************************************************************************ //
  // XML       : MoveNodeCommand, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  MoveNodeCommand = class(MoveNodeCommand2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SetPropertyCommand, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SetPropertyCommand2 = class(BaseCommand2)
  private
    F_node: NodeBase2;
    F_property: PropertyObjectBase2;
  public
    destructor Destroy; override;
  published
    property _node:     NodeBase2            Index (IS_NLBL) read F_node write F_node;
    property _property: PropertyObjectBase2  Index (IS_NLBL) read F_property write F_property;
  end;



  // ************************************************************************ //
  // XML       : SetPropertyCommand, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  SetPropertyCommand = class(SetPropertyCommand2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : DeleteNodeCommand, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  DeleteNodeCommand2 = class(BaseCommand2)
  private
    F_node: NodeBase2;
  public
    destructor Destroy; override;
  published
    property _node: NodeBase2  Index (IS_NLBL) read F_node write F_node;
  end;



  // ************************************************************************ //
  // XML       : DeleteNodeCommand, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  DeleteNodeCommand = class(DeleteNodeCommand2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : CreateNodeCommand, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  CreateNodeCommand2 = class(BaseCommand2)
  private
    F_extraData: Variant;
    F_insertBefore: Boolean;
    F_insertPosition: NodeBase2;
    F_node: Node2;
  public
    destructor Destroy; override;
  published
    property _extraData:      Variant    Index (IS_NLBL) read F_extraData write F_extraData;
    property _insertBefore:   Boolean    read F_insertBefore write F_insertBefore;
    property _insertPosition: NodeBase2  Index (IS_NLBL) read F_insertPosition write F_insertPosition;
    property _node:           Node2      Index (IS_NLBL) read F_node write F_node;
  end;



  // ************************************************************************ //
  // XML       : CreateNodeCommand, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  CreateNodeCommand = class(CreateNodeCommand2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : RenameNodeCommand, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  RenameNodeCommand2 = class(BaseCommand2)
  private
    F_name: string;
    F_node: NodeBase2;
  public
    destructor Destroy; override;
  published
    property _name: string     Index (IS_NLBL) read F_name write F_name;
    property _node: NodeBase2  Index (IS_NLBL) read F_node write F_node;
  end;



  // ************************************************************************ //
  // XML       : RenameNodeCommand, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  RenameNodeCommand = class(RenameNodeCommand2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : RestoreNodeCommand, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  RestoreNodeCommand2 = class(BaseCommand2)
  private
    F_node: NodeBase2;
  public
    destructor Destroy; override;
  published
    property _node: NodeBase2  Index (IS_NLBL) read F_node write F_node;
  end;



  // ************************************************************************ //
  // XML       : RestoreNodeCommand, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/MessageContracts
  // ************************************************************************ //
  RestoreNodeCommand = class(RestoreNodeCommand2)
  private
  published
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/ICinegyDataAccessService/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : BasicHttpBinding_ICinegyDataAccessService
  // service   : CinegyDataAccessService
  // port      : BasicHttpBinding_ICinegyDataAccessService
  // URL       : http://freehand:8082/ICinegyDataAccessService
  // ************************************************************************ //
  ICinegyDataAccessService = interface(IInvokable)
  ['{25184C0C-4577-701F-9ADE-37AF18BEF793}']

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  Connect(const parameters: ConnectMessageRequest): ConnectMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  Disconnect(const parameters: DisconnectMessageRequest): DisconnectMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetRoot(const parameters: BaseMessageRequest): NodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetChildrenIDs(const parameters: NodeIDMessageRequest): NodeChildrenIDsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetChildrenNodesEx(const parameters: GetChildrenMessageRequestEx): NodeChildrenMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetChildrenNodes(const parameters: GetChildrenMessageRequest): NodeChildrenMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetNode(const parameters: GetNodeMessageRequest): GetNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetNodeEx(const parameters: GetNodeMessageRequestEx): GetNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  Search(const parameters: SearchMessageRequest): SearchMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetRecentNodes(const parameters: GetRecentNodesMessageRequest): Search2MessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  Search2(const parameters: Search2MessageRequest): Search2MessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  Search14(const parameters: Search2MessageRequest): Search2MessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  SearchNewsList(const parameters: SearchNewsMessageRequest): SearchNewsListMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  SearchList(const parameters: SearchListMessageRequest): SearchListMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  SearchPagerList(const parameters: SearchPagerListMessageRequest): SearchListMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetDescriptors(const parameters: DescriptorsMessageRequest): DescriptorsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetSubTypesInfo(const parameters: SubTypeInfoMessageRequest): SubTypeInfoMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetSubTypesChildren(const parameters: SubTypeRelationsMessageRequest): SubTypeRelationsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetSubTypesParents(const parameters: SubTypeRelationsParentsMessageRequest): SubTypeRelationsParentsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetTVFormatsInfo(const parameters: TVFormatInfoMessageRequest): TVFormatInfoMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetFilesPath(const parameters: GetFilesPathMessageRequest): GetFilesPathMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetJobs(const parameters: GetJobsMessageRequest): GetJobsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetMetadata(const parameters: GetMetadataMessageRequest): GetMetadataMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  UpdateSubscribe(const parameters: UpdateSubscribeRequest): UpdateSubscribeResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  UpdateUnsubscribe(const parameters: UpdateUnsubscribeRequest): UpdateUnsubscribeResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetUpdates(const parameters: GetUpdatesRequest): GetUpdatesResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetGlobalParameters(const parameters: GPMessageRequest): GPMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetSessionsCount(const parameters: GetSessionsCountRequest): GetSessionsCountResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetColorPalette(const parameters: ColorMessageRequest): ColorMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetLogTemplates(const parameters: LogTemplateMessageRequest): LogTemplateMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetUserActions(const parameters: UserActionsMessageRequest): UserActionsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  CreateNode(const parameters: CreateNodeMessageRequest): CreateNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  DeleteNode(const parameters: DeleteNodeMessageRequest): DeleteNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  RestoreNode(const parameters: RestoreNodeMessageRequest): RestoreNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  RenameNode(const parameters: RenameNodeMessageRequest): RenameNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetPathForNode(const parameters: GetPathForNodeRequest): GetPathForNodeResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  SetProperty(const parameters: SetPropertyMessageRequest): SetPropertyMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  SetProperties(const parameters: SetPropertiesMessageRequest): SetPropertiesMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  CopyNode(const parameters: CopyNodeMessageRequest): CopyNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  MoveNode(const parameters: MoveNodeMessageRequest): MoveNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  CreateNodeByNode(const parameters: CreateNodeByNodeMessageRequest): CreateNodeByNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetHubUrl(const parameters: BaseMessageRequest): GetHubUrlMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  HeartBeat(const parameters: HeartBeatMessageRequest): HeartBeatMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  CreateJob(const parameters: CreateJobMessageRequest): CreateJobMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  AddTag(const parameters: AddNodeTagMessageRequest): AddNodeTagMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  RemoveTag(const parameters: RemoveNodeTagMessageRequest): RemoveNodeTagMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetTagsCloud(const parameters: TagsCloudMessageRequest): TagsCloudMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  NodeLock(const parameters: NodeLockMessageRequest): NodeLockMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  NodeUnlock(const parameters: NodeUnlockMessageRequest): NodeUnlockMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetNodesCount(const parameters: GetNodesCountMessageRequest): GetNodesCountMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetChildrenNodesPage(const parameters: GetChildrenPageMessageRequest): GetChildrenPageMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  IsHasChildren(const parameters: IsHasChildrenMessageRequest): IsHasChildrenMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetProfile(const parameters: GetProfileMessageRequest): GetProfileMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetServerConnectionInfo(const parameters: ConnectionInfoMessageRequest): ConnectionInfoMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetPluginDescriptor(const parameters: PluginDescriptorMessageRequest): PluginDescriptorMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetMosObjects(const parameters: MosObjectsMessageRequest): MosObjectsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetMapping(const parameters: GetMappingMessageRequest): GetMappingMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  SetMapping(const parameters: SetMappingMessageRequest): SetMappingMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  DeleteMapping(const parameters: DeleteMappingMessageRequest): DeleteMappingMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetMappingType(const parameters: GetMappingTypeMessageRequest): GetMappingTypeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  RegisterMappingType(const parameters: SetMappingTypeMessageRequest): SetMappingTypeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  UnregisterMappingType(const parameters: DeleteMappingTypeMessageRequest): DeleteMappingTypeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetMappingTypes(const parameters: GetMappingTypesMessageRequest): GetMappingTypesMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetSpecialNode(const parameters: GetSpecialNodeMessageRequest): GetSpecialNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetParentByType(const parameters: GetParentByTypeMessageRequest): GetParentByTypeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetMetadataTemplates(const parameters: GetMetadataTemplatesMessageRequest): GetMetadataTemplatesMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  SetUserProfile(const parameters: SetUserProfileMessageRequest): SetUserProfileMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetMPEGProfiles(const parameters: MpegProfilesMessageRequest): MpegProfilesMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  RorderNodes(const parameters: ReorderNodesMessageRequest): ReorderNodesMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  SplitMog(const parameters: SplitMogMessageRequest): SplitMogMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  JoinMogs(const parameters: JoinMogsMessageRequest): JoinMogsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetPresenter(const parameters: GetPresenterMessageRequest): GetPresenterMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetPresenters(const parameters: GetPresentersMessageRequest): GetPresentersMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetEditor(const parameters: GetEditorMessageRequest): GetEditorMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetEditors(const parameters: GetEditorsMessageRequest): GetEditorsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetWorkflowStep(const parameters: GetWorkflowStepMessageRequest): GetWorkflowStepMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetWorkflowSteps(const parameters: GetWorkflowStepsMessageRequest): GetWorkflowStepsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetStoryType(const parameters: GetStoryTypeMessageRequest): GetStoryTypeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetStoryTypes(const parameters: GetStoryTypesMessageRequest): GetStoryTypesMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  EnumExportPlugins(const parameters: EnumExportPluginsMessageRequest): EnumExportPluginsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  Export_(const parameters: ExportMessageRequest): ExportMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetNodesByType(const parameters: GetNodesByTypeMessageRequest): GetNodesByTypeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetSlaveDatabases(const parameters: SlaveDatabasesMessageRequest): SlaveDatabasesMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetNodesByFields(const parameters: NodesByFieldsMessageRequest): NodesByFieldsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetNodesByField(const parameters: NodesByFieldMessageRequest): NodesByFieldMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetDescriptorsEx(const parameters: DescriptorsMessageRequestEx): DescriptorsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  ExecuteCommands(const parameters: ExecuteCommandsMessageRequest): ExecuteCommandsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetAsyncCommand(const parameters: GetAsyncCommandResultRequest): GetAsyncCommandResultResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetAsyncCommands(const parameters: GetAsyncCommandsResultRequest): GetAsyncCommandsResultResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  AsyncCopyNode(const parameters: AsyncCopyNodeMessageRequest): AsyncCopyNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  WriteLog(const parameters: WriteLogMessageRequest): WriteLogMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetJobCreationInfo(const parameters: JobCreationInfoMessageRequest): JobCreationInfoMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetFilesPathEx(const parameters: GetFilesPathMessageRequestEx): GetFilesPathMessageResponseEx; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetMediaGroups(const parameters: GetMediaGroupMessageRequest): GetMediaGroupMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetNodesCountEx(const parameters: GetNodesCountMessageRequestEx): GetNodesCountMessageResponseEx; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetBreakingNews(const parameters: GetBreakingNewsRequest): GetBreakingNewsResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetNextJob(const parameters: GetNextJobMessageRequest): GetNextJobMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  SetMetadata(const parameters: SetMetadataMessageRequest): SetMetadataMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetBaseNodesByType(const parameters: GetNodeIDsByTypeMessageRequest): GetNodeIDsByTypeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  CreateSubClip(const parameters: CreateSubClipMessageRequest): CreateSubClipMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetExtraData(const parameters: GetExtraDataMessageRequest): GetExtraDataMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetAllNews(const parameters: GetAllNewsMessageRequest): GetAllNewsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetJobProcessorGroups(const parameters: GetJobProcessorGroupsMessageRequest): GetJobProcessorGroupsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetJobProcessorGroup(const parameters: GetJobProcessorGroupMessageRequest): GetJobProcessorGroupMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  SetPropertiesByName(const parameters: SetPropertiesByNameMessageRequest): SetPropertiesByNameMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetClipsByMog(const parameters: GetClipsByMogMessageRequest): GetClipsByMogMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetClipsByRoll(const parameters: GetClipsByRollMessageRequest): GetClipsByRollMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetParentByTypes(const parameters: GetParentByTypesMessageRequest): GetParentByTypesMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetRollsByStatus(const parameters: GetRollsByStatusMessageRequest): GetRollsByStatusMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetFileSet(const parameters: GetFileSetMessageRequest): GetFileSetMessageResponse; stdcall;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/ICinegyDataAccessService/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : CustomBinding_ICinegyDataAccessServiceCompressed
  // service   : CinegyDataAccessService
  // port      : CustomBinding_ICinegyDataAccessServiceCompressed
  // URL       : http://freehand:8082/ICinegyDataAccessServiceCompressed
  // ************************************************************************ //
  ICinegyDataAccessServiceCompressed = interface(IInvokable)
  ['{72D16AC5-E349-2281-CDD2-9844FD6111C7}']

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  Connect(const parameters: ConnectMessageRequest): ConnectMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  Disconnect(const parameters: DisconnectMessageRequest): DisconnectMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetRoot(const parameters: BaseMessageRequest): NodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetChildrenIDs(const parameters: NodeIDMessageRequest): NodeChildrenIDsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetChildrenNodesEx(const parameters: GetChildrenMessageRequestEx): NodeChildrenMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetChildrenNodes(const parameters: GetChildrenMessageRequest): NodeChildrenMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetNode(const parameters: GetNodeMessageRequest): GetNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetNodeEx(const parameters: GetNodeMessageRequestEx): GetNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  Search(const parameters: SearchMessageRequest): SearchMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetRecentNodes(const parameters: GetRecentNodesMessageRequest): Search2MessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  Search2(const parameters: Search2MessageRequest): Search2MessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  Search14(const parameters: Search2MessageRequest): Search2MessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  SearchNewsList(const parameters: SearchNewsMessageRequest): SearchNewsListMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  SearchList(const parameters: SearchListMessageRequest): SearchListMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  SearchPagerList(const parameters: SearchPagerListMessageRequest): SearchListMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetDescriptors(const parameters: DescriptorsMessageRequest): DescriptorsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetSubTypesInfo(const parameters: SubTypeInfoMessageRequest): SubTypeInfoMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetSubTypesChildren(const parameters: SubTypeRelationsMessageRequest): SubTypeRelationsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetSubTypesParents(const parameters: SubTypeRelationsParentsMessageRequest): SubTypeRelationsParentsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetTVFormatsInfo(const parameters: TVFormatInfoMessageRequest): TVFormatInfoMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetFilesPath(const parameters: GetFilesPathMessageRequest): GetFilesPathMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetJobs(const parameters: GetJobsMessageRequest): GetJobsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetMetadata(const parameters: GetMetadataMessageRequest): GetMetadataMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  UpdateSubscribe(const parameters: UpdateSubscribeRequest): UpdateSubscribeResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  UpdateUnsubscribe(const parameters: UpdateUnsubscribeRequest): UpdateUnsubscribeResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetUpdates(const parameters: GetUpdatesRequest): GetUpdatesResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetGlobalParameters(const parameters: GPMessageRequest): GPMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetSessionsCount(const parameters: GetSessionsCountRequest): GetSessionsCountResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetColorPalette(const parameters: ColorMessageRequest): ColorMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetLogTemplates(const parameters: LogTemplateMessageRequest): LogTemplateMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetUserActions(const parameters: UserActionsMessageRequest): UserActionsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  CreateNode(const parameters: CreateNodeMessageRequest): CreateNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  DeleteNode(const parameters: DeleteNodeMessageRequest): DeleteNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  RestoreNode(const parameters: RestoreNodeMessageRequest): RestoreNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  RenameNode(const parameters: RenameNodeMessageRequest): RenameNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetPathForNode(const parameters: GetPathForNodeRequest): GetPathForNodeResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  SetProperty(const parameters: SetPropertyMessageRequest): SetPropertyMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  SetProperties(const parameters: SetPropertiesMessageRequest): SetPropertiesMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  CopyNode(const parameters: CopyNodeMessageRequest): CopyNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  MoveNode(const parameters: MoveNodeMessageRequest): MoveNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  CreateNodeByNode(const parameters: CreateNodeByNodeMessageRequest): CreateNodeByNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetHubUrl(const parameters: BaseMessageRequest): GetHubUrlMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  HeartBeat(const parameters: HeartBeatMessageRequest): HeartBeatMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  CreateJob(const parameters: CreateJobMessageRequest): CreateJobMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  AddTag(const parameters: AddNodeTagMessageRequest): AddNodeTagMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  RemoveTag(const parameters: RemoveNodeTagMessageRequest): RemoveNodeTagMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetTagsCloud(const parameters: TagsCloudMessageRequest): TagsCloudMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  NodeLock(const parameters: NodeLockMessageRequest): NodeLockMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  NodeUnlock(const parameters: NodeUnlockMessageRequest): NodeUnlockMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetNodesCount(const parameters: GetNodesCountMessageRequest): GetNodesCountMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetChildrenNodesPage(const parameters: GetChildrenPageMessageRequest): GetChildrenPageMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  IsHasChildren(const parameters: IsHasChildrenMessageRequest): IsHasChildrenMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetProfile(const parameters: GetProfileMessageRequest): GetProfileMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetServerConnectionInfo(const parameters: ConnectionInfoMessageRequest): ConnectionInfoMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetPluginDescriptor(const parameters: PluginDescriptorMessageRequest): PluginDescriptorMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetMosObjects(const parameters: MosObjectsMessageRequest): MosObjectsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetMapping(const parameters: GetMappingMessageRequest): GetMappingMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  SetMapping(const parameters: SetMappingMessageRequest): SetMappingMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  DeleteMapping(const parameters: DeleteMappingMessageRequest): DeleteMappingMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetMappingType(const parameters: GetMappingTypeMessageRequest): GetMappingTypeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  RegisterMappingType(const parameters: SetMappingTypeMessageRequest): SetMappingTypeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  UnregisterMappingType(const parameters: DeleteMappingTypeMessageRequest): DeleteMappingTypeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetMappingTypes(const parameters: GetMappingTypesMessageRequest): GetMappingTypesMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetSpecialNode(const parameters: GetSpecialNodeMessageRequest): GetSpecialNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetParentByType(const parameters: GetParentByTypeMessageRequest): GetParentByTypeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetMetadataTemplates(const parameters: GetMetadataTemplatesMessageRequest): GetMetadataTemplatesMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  SetUserProfile(const parameters: SetUserProfileMessageRequest): SetUserProfileMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetMPEGProfiles(const parameters: MpegProfilesMessageRequest): MpegProfilesMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  RorderNodes(const parameters: ReorderNodesMessageRequest): ReorderNodesMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  SplitMog(const parameters: SplitMogMessageRequest): SplitMogMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  JoinMogs(const parameters: JoinMogsMessageRequest): JoinMogsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetPresenter(const parameters: GetPresenterMessageRequest): GetPresenterMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetPresenters(const parameters: GetPresentersMessageRequest): GetPresentersMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetEditor(const parameters: GetEditorMessageRequest): GetEditorMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetEditors(const parameters: GetEditorsMessageRequest): GetEditorsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetWorkflowStep(const parameters: GetWorkflowStepMessageRequest): GetWorkflowStepMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetWorkflowSteps(const parameters: GetWorkflowStepsMessageRequest): GetWorkflowStepsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetStoryType(const parameters: GetStoryTypeMessageRequest): GetStoryTypeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetStoryTypes(const parameters: GetStoryTypesMessageRequest): GetStoryTypesMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  EnumExportPlugins(const parameters: EnumExportPluginsMessageRequest): EnumExportPluginsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  Export_(const parameters: ExportMessageRequest): ExportMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetNodesByType(const parameters: GetNodesByTypeMessageRequest): GetNodesByTypeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetSlaveDatabases(const parameters: SlaveDatabasesMessageRequest): SlaveDatabasesMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetNodesByFields(const parameters: NodesByFieldsMessageRequest): NodesByFieldsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetNodesByField(const parameters: NodesByFieldMessageRequest): NodesByFieldMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetDescriptorsEx(const parameters: DescriptorsMessageRequestEx): DescriptorsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  ExecuteCommands(const parameters: ExecuteCommandsMessageRequest): ExecuteCommandsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetAsyncCommand(const parameters: GetAsyncCommandResultRequest): GetAsyncCommandResultResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetAsyncCommands(const parameters: GetAsyncCommandsResultRequest): GetAsyncCommandsResultResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  AsyncCopyNode(const parameters: AsyncCopyNodeMessageRequest): AsyncCopyNodeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  WriteLog(const parameters: WriteLogMessageRequest): WriteLogMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetJobCreationInfo(const parameters: JobCreationInfoMessageRequest): JobCreationInfoMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetFilesPathEx(const parameters: GetFilesPathMessageRequestEx): GetFilesPathMessageResponseEx; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetMediaGroups(const parameters: GetMediaGroupMessageRequest): GetMediaGroupMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetNodesCountEx(const parameters: GetNodesCountMessageRequestEx): GetNodesCountMessageResponseEx; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetBreakingNews(const parameters: GetBreakingNewsRequest): GetBreakingNewsResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetNextJob(const parameters: GetNextJobMessageRequest): GetNextJobMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  SetMetadata(const parameters: SetMetadataMessageRequest): SetMetadataMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetBaseNodesByType(const parameters: GetNodeIDsByTypeMessageRequest): GetNodeIDsByTypeMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  CreateSubClip(const parameters: CreateSubClipMessageRequest): CreateSubClipMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetExtraData(const parameters: GetExtraDataMessageRequest): GetExtraDataMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetAllNews(const parameters: GetAllNewsMessageRequest): GetAllNewsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetJobProcessorGroups(const parameters: GetJobProcessorGroupsMessageRequest): GetJobProcessorGroupsMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetJobProcessorGroup(const parameters: GetJobProcessorGroupMessageRequest): GetJobProcessorGroupMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  SetPropertiesByName(const parameters: SetPropertiesByNameMessageRequest): SetPropertiesByNameMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetClipsByMog(const parameters: GetClipsByMogMessageRequest): GetClipsByMogMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetClipsByRoll(const parameters: GetClipsByRollMessageRequest): GetClipsByRollMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetParentByTypes(const parameters: GetParentByTypesMessageRequest): GetParentByTypesMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetRollsByStatus(const parameters: GetRollsByStatusMessageRequest): GetRollsByStatusMessageResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - Wrapper type needs special serialization
    function  GetFileSet(const parameters: GetFileSetMessageRequest): GetFileSetMessageResponse; stdcall;
  end;

function GetICinegyDataAccessService(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ICinegyDataAccessService;
function GetICinegyDataAccessServiceCompressed(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ICinegyDataAccessServiceCompressed;


implementation
  uses System.SysUtils;

function GetICinegyDataAccessService(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ICinegyDataAccessService;
const
  defWSDL = 'http://localhost:8082/ICinegyDataAccessService?wsdl';
  defURL  = 'http://freehand:8082/ICinegyDataAccessService';
  defSvc  = 'CinegyDataAccessService';
  defPrt  = 'BasicHttpBinding_ICinegyDataAccessService';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as ICinegyDataAccessService);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


function GetICinegyDataAccessServiceCompressed(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ICinegyDataAccessServiceCompressed;
const
  defWSDL = 'http://localhost:8082/ICinegyDataAccessService?wsdl';
  defURL  = 'http://freehand:8082/ICinegyDataAccessServiceCompressed';
  defSvc  = 'CinegyDataAccessService';
  defPrt  = 'CustomBinding_ICinegyDataAccessServiceCompressed';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as ICinegyDataAccessServiceCompressed);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


constructor GetRecentNodesMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetRecentNodesMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fsp);
  inherited Destroy;
end;

procedure GetRecentNodesMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetRecentNodesMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetRecentNodesMessageRequest.Setsp(Index: Integer; const AGetRecentNodesParameters2: GetRecentNodesParameters2);
begin
  Fsp := AGetRecentNodesParameters2;
  Fsp_Specified := True;
end;

function GetRecentNodesMessageRequest.sp_Specified(Index: Integer): boolean;
begin
  Result := Fsp_Specified;
end;

constructor SearchMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SearchMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fsp);
  inherited Destroy;
end;

procedure SearchMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function SearchMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure SearchMessageRequest.Setsp(Index: Integer; const ASearchParameters2: SearchParameters2);
begin
  Fsp := ASearchParameters2;
  Fsp_Specified := True;
end;

function SearchMessageRequest.sp_Specified(Index: Integer): boolean;
begin
  Result := Fsp_Specified;
end;

constructor SearchListMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SearchListMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fsp);
  inherited Destroy;
end;

procedure SearchListMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function SearchListMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure SearchListMessageRequest.Setsp(Index: Integer; const ASearchParameters2: SearchParameters2);
begin
  Fsp := ASearchParameters2;
  Fsp_Specified := True;
end;

function SearchListMessageRequest.sp_Specified(Index: Integer): boolean;
begin
  Result := Fsp_Specified;
end;

constructor SearchPagerListMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SearchPagerListMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FSp);
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure SearchPagerListMessageRequest.SetSp(Index: Integer; const ASearchPagerParameters2: SearchPagerParameters2);
begin
  FSp := ASearchPagerParameters2;
  FSp_Specified := True;
end;

function SearchPagerListMessageRequest.Sp_Specified(Index: Integer): boolean;
begin
  Result := FSp_Specified;
end;

procedure SearchPagerListMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function SearchPagerListMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor Search2MessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor Search2MessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fsp);
  inherited Destroy;
end;

procedure Search2MessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function Search2MessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure Search2MessageRequest.Setsp(Index: Integer; const ASearch2Parameters2: Search2Parameters2);
begin
  Fsp := ASearch2Parameters2;
  Fsp_Specified := True;
end;

function Search2MessageRequest.sp_Specified(Index: Integer): boolean;
begin
  Result := Fsp_Specified;
end;

constructor DisconnectMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DisconnectMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure DisconnectMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function DisconnectMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor BaseMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor BaseMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure BaseMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function BaseMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor UpdateUnsubscribeRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UpdateUnsubscribeRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure UpdateUnsubscribeRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function UpdateUnsubscribeRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor GetSessionsCountRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetSessionsCountRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetSessionsCountRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetSessionsCountRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor UpdateSubscribeRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UpdateSubscribeRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure UpdateSubscribeRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function UpdateSubscribeRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor TVFormatInfoMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TVFormatInfoMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure TVFormatInfoMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function TVFormatInfoMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor GetMetadataMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetMetadataMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetMetadataMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetMetadataMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetMetadataMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function GetMetadataMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

constructor GetAsyncCommandResultRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetAsyncCommandResultRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FcommandContext);
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetAsyncCommandResultRequest.SetcommandContext(Index: Integer; const AAsyncCommandContext2: AsyncCommandContext2);
begin
  FcommandContext := AAsyncCommandContext2;
  FcommandContext_Specified := True;
end;

function GetAsyncCommandResultRequest.commandContext_Specified(Index: Integer): boolean;
begin
  Result := FcommandContext_Specified;
end;

procedure GetAsyncCommandResultRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetAsyncCommandResultRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor GetAsyncCommandsResultRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetAsyncCommandsResultRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetAsyncCommandsResultRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetAsyncCommandsResultRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor ExecuteCommandsMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor ExecuteCommandsMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcommands);
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure ExecuteCommandsMessageRequest.Setcommands(Index: Integer; const ACommandsChain2: CommandsChain2);
begin
  Fcommands := ACommandsChain2;
  Fcommands_Specified := True;
end;

function ExecuteCommandsMessageRequest.commands_Specified(Index: Integer): boolean;
begin
  Result := Fcommands_Specified;
end;

procedure ExecuteCommandsMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function ExecuteCommandsMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor WriteLogMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor WriteLogMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(FlogData);
  inherited Destroy;
end;

procedure WriteLogMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function WriteLogMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure WriteLogMessageRequest.SetlogData(Index: Integer; const ALogData2: LogData2);
begin
  FlogData := ALogData2;
  FlogData_Specified := True;
end;

function WriteLogMessageRequest.logData_Specified(Index: Integer): boolean;
begin
  Result := FlogData_Specified;
end;

constructor JobCreationInfoMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor JobCreationInfoMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure JobCreationInfoMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function JobCreationInfoMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor GetWorkflowStepsMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetWorkflowStepsMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetWorkflowStepsMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetWorkflowStepsMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor GetEditorsMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetEditorsMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetEditorsMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetEditorsMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor SlaveDatabasesMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SlaveDatabasesMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure SlaveDatabasesMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function SlaveDatabasesMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor GetStoryTypesMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetStoryTypesMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetStoryTypesMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetStoryTypesMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor EnumExportPluginsMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor EnumExportPluginsMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure EnumExportPluginsMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function EnumExportPluginsMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor GetMediaGroupMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetMediaGroupMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetMediaGroupMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetMediaGroupMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor GetJobProcessorGroupsMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetJobProcessorGroupsMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetJobProcessorGroupsMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetJobProcessorGroupsMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor GetFileSetMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetFileSetMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetFileSetMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetFileSetMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetFileSetMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function GetFileSetMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

constructor SetMetadataMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetMetadataMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  System.SysUtils.FreeAndNil(Fmetadata);
  inherited Destroy;
end;

procedure SetMetadataMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function SetMetadataMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure SetMetadataMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function SetMetadataMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure SetMetadataMessageRequest.Setmetadata(Index: Integer; const AMetadataSetObject2: MetadataSetObject2);
begin
  Fmetadata := AMetadataSetObject2;
  Fmetadata_Specified := True;
end;

function SetMetadataMessageRequest.metadata_Specified(Index: Integer): boolean;
begin
  Result := Fmetadata_Specified;
end;

constructor GetExtraDataMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetExtraDataMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetExtraDataMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetExtraDataMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetExtraDataMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function GetExtraDataMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

constructor GetPathForNodeRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetPathForNodeRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fm_NodeID);
  inherited Destroy;
end;

procedure GetPathForNodeRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetPathForNodeRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetPathForNodeRequest.Setm_NodeID(Index: Integer; const ANODEID2: NODEID2);
begin
  Fm_NodeID := ANODEID2;
  Fm_NodeID_Specified := True;
end;

function GetPathForNodeRequest.m_NodeID_Specified(Index: Integer): boolean;
begin
  Result := Fm_NodeID_Specified;
end;

constructor DeleteNodeMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DeleteNodeMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure DeleteNodeMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function DeleteNodeMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure DeleteNodeMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function DeleteNodeMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

constructor RestoreNodeMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor RestoreNodeMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure RestoreNodeMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function RestoreNodeMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure RestoreNodeMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function RestoreNodeMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

constructor SetPropertyMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetPropertyMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  System.SysUtils.FreeAndNil(Fproperty_);
  inherited Destroy;
end;

procedure SetPropertyMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function SetPropertyMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure SetPropertyMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function SetPropertyMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure SetPropertyMessageRequest.Setproperty_(Index: Integer; const APropertyObjectBase2: PropertyObjectBase2);
begin
  Fproperty_ := APropertyObjectBase2;
  Fproperty__Specified := True;
end;

function SetPropertyMessageRequest.property__Specified(Index: Integer): boolean;
begin
  Result := Fproperty__Specified;
end;

constructor SetPropertiesMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetPropertiesMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  System.SysUtils.FreeAndNil(Fproperties);
  inherited Destroy;
end;

procedure SetPropertiesMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function SetPropertiesMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure SetPropertiesMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function SetPropertiesMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure SetPropertiesMessageRequest.Setproperties(Index: Integer; const APropertySetObject2: PropertySetObject2);
begin
  Fproperties := APropertySetObject2;
  Fproperties_Specified := True;
end;

function SetPropertiesMessageRequest.properties_Specified(Index: Integer): boolean;
begin
  Result := Fproperties_Specified;
end;

constructor MpegProfilesMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor MpegProfilesMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure MpegProfilesMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function MpegProfilesMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor GetMetadataTemplatesMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetMetadataTemplatesMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetMetadataTemplatesMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetMetadataTemplatesMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor GetPresentersMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetPresentersMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetPresentersMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetPresentersMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor MosObjectsMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor MosObjectsMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure MosObjectsMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function MosObjectsMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor ConnectionInfoMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor ConnectionInfoMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure ConnectionInfoMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function ConnectionInfoMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor GetMappingTypesMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetMappingTypesMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetMappingTypesMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetMappingTypesMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

destructor SearchResult2.Destroy;
begin
  System.SysUtils.FreeAndNil(F_node);
  inherited Destroy;
end;

constructor ReorderNodesMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor ReorderNodesMessageRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fnodes)-1 do
    System.SysUtils.FreeAndNil(Fnodes[I]);
  System.SetLength(Fnodes, 0);
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure ReorderNodesMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function ReorderNodesMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure ReorderNodesMessageRequest.Setnodes(Index: Integer; const AArrayOfNodeBase: ArrayOfNodeBase);
begin
  Fnodes := AArrayOfNodeBase;
  Fnodes_Specified := True;
end;

function ReorderNodesMessageRequest.nodes_Specified(Index: Integer): boolean;
begin
  Result := Fnodes_Specified;
end;

destructor GlobalParameterObjects2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fparameters)-1 do
    System.SysUtils.FreeAndNil(Fparameters[I]);
  System.SetLength(Fparameters, 0);
  inherited Destroy;
end;

destructor SearchNodesListResult2.Destroy;
begin
  System.SysUtils.FreeAndNil(F_node_id);
  inherited Destroy;
end;

destructor Search2Result2.Destroy;
begin
  System.SysUtils.FreeAndNil(F_node);
  inherited Destroy;
end;

destructor SubTypeObjects2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FSubTypes)-1 do
    System.SysUtils.FreeAndNil(FSubTypes[I]);
  System.SetLength(FSubTypes, 0);
  inherited Destroy;
end;

destructor TVFormatObjects2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTVFormats)-1 do
    System.SysUtils.FreeAndNil(FTVFormats[I]);
  System.SetLength(FTVFormats, 0);
  inherited Destroy;
end;

constructor SubTypeInfoMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SubTypeInfoMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure SubTypeInfoMessageRequest.SetbildType(Index: Integer; const ABildType: BildType);
begin
  FbildType := ABildType;
  FbildType_Specified := True;
end;

function SubTypeInfoMessageRequest.bildType_Specified(Index: Integer): boolean;
begin
  Result := FbildType_Specified;
end;

procedure SubTypeInfoMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function SubTypeInfoMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor NodeUnlockMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor NodeUnlockMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure NodeUnlockMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function NodeUnlockMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure NodeUnlockMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function NodeUnlockMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure NodeUnlockMessageRequest.SetlockType(Index: Integer; const ALockType: LockType);
begin
  FlockType := ALockType;
  FlockType_Specified := True;
end;

function NodeUnlockMessageRequest.lockType_Specified(Index: Integer): boolean;
begin
  Result := FlockType_Specified;
end;

constructor NodeLockMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor NodeLockMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure NodeLockMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function NodeLockMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure NodeLockMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function NodeLockMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure NodeLockMessageRequest.SetlockType(Index: Integer; const ALockType: LockType);
begin
  FlockType := ALockType;
  FlockType_Specified := True;
end;

function NodeLockMessageRequest.lockType_Specified(Index: Integer): boolean;
begin
  Result := FlockType_Specified;
end;

constructor GetNodesCountMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetNodesCountMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetNodesCountMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetNodesCountMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetNodesCountMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function GetNodesCountMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetNodesCountMessageRequest.SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
begin
  FrequestType := AGET_NODE_REQUEST_TYPE;
  FrequestType_Specified := True;
end;

function GetNodesCountMessageRequest.requestType_Specified(Index: Integer): boolean;
begin
  Result := FrequestType_Specified;
end;

constructor GetClipsByRollMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetClipsByRollMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetClipsByRollMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetClipsByRollMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetClipsByRollMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function GetClipsByRollMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetClipsByRollMessageRequest.SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
begin
  FrequestType := AGET_NODE_REQUEST_TYPE;
  FrequestType_Specified := True;
end;

function GetClipsByRollMessageRequest.requestType_Specified(Index: Integer): boolean;
begin
  Result := FrequestType_Specified;
end;

procedure GetClipsByRollMessageRequest.SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
begin
  FnodeFillingType := ANodeFillingType;
  FnodeFillingType_Specified := True;
end;

function GetClipsByRollMessageRequest.nodeFillingType_Specified(Index: Integer): boolean;
begin
  Result := FnodeFillingType_Specified;
end;

constructor GetClipsByMogMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetClipsByMogMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetClipsByMogMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetClipsByMogMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetClipsByMogMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function GetClipsByMogMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetClipsByMogMessageRequest.SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
begin
  FrequestType := AGET_NODE_REQUEST_TYPE;
  FrequestType_Specified := True;
end;

function GetClipsByMogMessageRequest.requestType_Specified(Index: Integer): boolean;
begin
  Result := FrequestType_Specified;
end;

procedure GetClipsByMogMessageRequest.SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
begin
  FnodeFillingType := ANodeFillingType;
  FnodeFillingType_Specified := True;
end;

function GetClipsByMogMessageRequest.nodeFillingType_Specified(Index: Integer): boolean;
begin
  Result := FnodeFillingType_Specified;
end;

constructor NodeIDMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor NodeIDMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure NodeIDMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function NodeIDMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure NodeIDMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function NodeIDMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure NodeIDMessageRequest.SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
begin
  FrequestType := AGET_NODE_REQUEST_TYPE;
  FrequestType_Specified := True;
end;

function NodeIDMessageRequest.requestType_Specified(Index: Integer): boolean;
begin
  Result := FrequestType_Specified;
end;

constructor GetChildrenMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetChildrenMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetChildrenMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetChildrenMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetChildrenMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function GetChildrenMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetChildrenMessageRequest.SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
begin
  FrequestType := AGET_NODE_REQUEST_TYPE;
  FrequestType_Specified := True;
end;

function GetChildrenMessageRequest.requestType_Specified(Index: Integer): boolean;
begin
  Result := FrequestType_Specified;
end;

constructor GetNodeMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetNodeMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetNodeMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetNodeMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetNodeMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function GetNodeMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetNodeMessageRequest.SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
begin
  FrequestType := AGET_NODE_REQUEST_TYPE;
  FrequestType_Specified := True;
end;

function GetNodeMessageRequest.requestType_Specified(Index: Integer): boolean;
begin
  Result := FrequestType_Specified;
end;

constructor GetChildrenMessageRequestEx.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetChildrenMessageRequestEx.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetChildrenMessageRequestEx.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetChildrenMessageRequestEx.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetChildrenMessageRequestEx.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function GetChildrenMessageRequestEx.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetChildrenMessageRequestEx.SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
begin
  FrequestType := AGET_NODE_REQUEST_TYPE;
  FrequestType_Specified := True;
end;

function GetChildrenMessageRequestEx.requestType_Specified(Index: Integer): boolean;
begin
  Result := FrequestType_Specified;
end;

procedure GetChildrenMessageRequestEx.SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
begin
  FnodeFillingType := ANodeFillingType;
  FnodeFillingType_Specified := True;
end;

function GetChildrenMessageRequestEx.nodeFillingType_Specified(Index: Integer): boolean;
begin
  Result := FnodeFillingType_Specified;
end;

constructor GetNodeMessageRequestEx.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetNodeMessageRequestEx.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetNodeMessageRequestEx.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetNodeMessageRequestEx.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetNodeMessageRequestEx.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function GetNodeMessageRequestEx.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetNodeMessageRequestEx.SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
begin
  FrequestType := AGET_NODE_REQUEST_TYPE;
  FrequestType_Specified := True;
end;

function GetNodeMessageRequestEx.requestType_Specified(Index: Integer): boolean;
begin
  Result := FrequestType_Specified;
end;

procedure GetNodeMessageRequestEx.SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
begin
  FnodeFillingType := ANodeFillingType;
  FnodeFillingType_Specified := True;
end;

function GetNodeMessageRequestEx.nodeFillingType_Specified(Index: Integer): boolean;
begin
  Result := FnodeFillingType_Specified;
end;

destructor MetadataUpdate2.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  System.SysUtils.FreeAndNil(Fprop);
  inherited Destroy;
end;

destructor OrderUpdate2.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

destructor ChildrenDeletedUpdate2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fchildren)-1 do
    System.SysUtils.FreeAndNil(Fchildren[I]);
  System.SetLength(Fchildren, 0);
  System.SysUtils.FreeAndNil(Fparent);
  inherited Destroy;
end;

destructor FieldUpdate2.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  System.SysUtils.FreeAndNil(Fprop);
  inherited Destroy;
end;

destructor RollUnlockUpdate2.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

destructor UnlockUpdate2.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

destructor NewsAddedUpdate2.Destroy;
begin
  System.SysUtils.FreeAndNil(FnewsId);
  System.SysUtils.FreeAndNil(Fparent);
  inherited Destroy;
end;

destructor ChildrenInsertedUpdate2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fchildren)-1 do
    System.SysUtils.FreeAndNil(Fchildren[I]);
  System.SetLength(Fchildren, 0);
  System.SysUtils.FreeAndNil(Fparent);
  inherited Destroy;
end;

constructor JoinMogsMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor JoinMogsMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode1);
  System.SysUtils.FreeAndNil(Fnode2);
  System.SysUtils.FreeAndNil(Fproperties);
  inherited Destroy;
end;

procedure JoinMogsMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function JoinMogsMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure JoinMogsMessageRequest.Setnode1(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode1 := ANodeBase2;
  Fnode1_Specified := True;
end;

function JoinMogsMessageRequest.node1_Specified(Index: Integer): boolean;
begin
  Result := Fnode1_Specified;
end;

procedure JoinMogsMessageRequest.Setnode2(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode2 := ANodeBase2;
  Fnode2_Specified := True;
end;

function JoinMogsMessageRequest.node2_Specified(Index: Integer): boolean;
begin
  Result := Fnode2_Specified;
end;

procedure JoinMogsMessageRequest.Setproperties(Index: Integer; const APropertySetObject2: PropertySetObject2);
begin
  Fproperties := APropertySetObject2;
  Fproperties_Specified := True;
end;

function JoinMogsMessageRequest.properties_Specified(Index: Integer): boolean;
begin
  Result := Fproperties_Specified;
end;

procedure JoinMogsMessageRequest.SetisJoinProps(Index: Integer; const ABoolean: Boolean);
begin
  FisJoinProps := ABoolean;
  FisJoinProps_Specified := True;
end;

function JoinMogsMessageRequest.isJoinProps_Specified(Index: Integer): boolean;
begin
  Result := FisJoinProps_Specified;
end;

procedure JoinMogsMessageRequest.SetisUseFirstProps(Index: Integer; const ABoolean: Boolean);
begin
  FisUseFirstProps := ABoolean;
  FisUseFirstProps_Specified := True;
end;

function JoinMogsMessageRequest.isUseFirstProps_Specified(Index: Integer): boolean;
begin
  Result := FisUseFirstProps_Specified;
end;

constructor CopyNodeMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CopyNodeMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  System.SysUtils.FreeAndNil(FdstParent);
  System.SysUtils.FreeAndNil(FinsertPosition);
  System.SysUtils.FreeAndNil(FnewNodeID);
  inherited Destroy;
end;

procedure CopyNodeMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function CopyNodeMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure CopyNodeMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function CopyNodeMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure CopyNodeMessageRequest.SetdstParent(Index: Integer; const ANodeBase2: NodeBase2);
begin
  FdstParent := ANodeBase2;
  FdstParent_Specified := True;
end;

function CopyNodeMessageRequest.dstParent_Specified(Index: Integer): boolean;
begin
  Result := FdstParent_Specified;
end;

procedure CopyNodeMessageRequest.SetinsertPosition(Index: Integer; const ANodeBase2: NodeBase2);
begin
  FinsertPosition := ANodeBase2;
  FinsertPosition_Specified := True;
end;

function CopyNodeMessageRequest.insertPosition_Specified(Index: Integer): boolean;
begin
  Result := FinsertPosition_Specified;
end;

procedure CopyNodeMessageRequest.SetinsertBefore(Index: Integer; const ABoolean: Boolean);
begin
  FinsertBefore := ABoolean;
  FinsertBefore_Specified := True;
end;

function CopyNodeMessageRequest.insertBefore_Specified(Index: Integer): boolean;
begin
  Result := FinsertBefore_Specified;
end;

procedure CopyNodeMessageRequest.SetnewNodeID(Index: Integer; const ANODEID2: NODEID2);
begin
  FnewNodeID := ANODEID2;
  FnewNodeID_Specified := True;
end;

function CopyNodeMessageRequest.newNodeID_Specified(Index: Integer): boolean;
begin
  Result := FnewNodeID_Specified;
end;

constructor MoveNodeMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor MoveNodeMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  System.SysUtils.FreeAndNil(FdstParent);
  System.SysUtils.FreeAndNil(FinsertPosition);
  inherited Destroy;
end;

procedure MoveNodeMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function MoveNodeMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure MoveNodeMessageRequest.Setnode(Index: Integer; const ANode2: Node2);
begin
  Fnode := ANode2;
  Fnode_Specified := True;
end;

function MoveNodeMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure MoveNodeMessageRequest.SetdstParent(Index: Integer; const ANodeBase2: NodeBase2);
begin
  FdstParent := ANodeBase2;
  FdstParent_Specified := True;
end;

function MoveNodeMessageRequest.dstParent_Specified(Index: Integer): boolean;
begin
  Result := FdstParent_Specified;
end;

procedure MoveNodeMessageRequest.SetinsertPosition(Index: Integer; const ANodeBase2: NodeBase2);
begin
  FinsertPosition := ANodeBase2;
  FinsertPosition_Specified := True;
end;

function MoveNodeMessageRequest.insertPosition_Specified(Index: Integer): boolean;
begin
  Result := FinsertPosition_Specified;
end;

procedure MoveNodeMessageRequest.SetinsertBefore(Index: Integer; const ABoolean: Boolean);
begin
  FinsertBefore := ABoolean;
  FinsertBefore_Specified := True;
end;

function MoveNodeMessageRequest.insertBefore_Specified(Index: Integer): boolean;
begin
  Result := FinsertBefore_Specified;
end;

constructor CreateJobMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CreateJobMessageRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FsubjectNodes)-1 do
    System.SysUtils.FreeAndNil(FsubjectNodes[I]);
  System.SetLength(FsubjectNodes, 0);
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure CreateJobMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function CreateJobMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure CreateJobMessageRequest.Setnode(Index: Integer; const AJobNode2: JobNode2);
begin
  Fnode := AJobNode2;
  Fnode_Specified := True;
end;

function CreateJobMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure CreateJobMessageRequest.SetsubjectNodes(Index: Integer; const AArrayOfNode: ArrayOfNode);
begin
  FsubjectNodes := AArrayOfNode;
  FsubjectNodes_Specified := True;
end;

function CreateJobMessageRequest.subjectNodes_Specified(Index: Integer): boolean;
begin
  Result := FsubjectNodes_Specified;
end;

procedure CreateJobMessageRequest.SetisCopy(Index: Integer; const ABoolean: Boolean);
begin
  FisCopy := ABoolean;
  FisCopy_Specified := True;
end;

function CreateJobMessageRequest.isCopy_Specified(Index: Integer): boolean;
begin
  Result := FisCopy_Specified;
end;

constructor CreateSubClipMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CreateSubClipMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  System.SysUtils.FreeAndNil(FdstParent);
  System.SysUtils.FreeAndNil(FinsertPosition);
  System.SysUtils.FreeAndNil(FnewNodeID);
  System.SysUtils.FreeAndNil(Fproperties);
  inherited Destroy;
end;

procedure CreateSubClipMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function CreateSubClipMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure CreateSubClipMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function CreateSubClipMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure CreateSubClipMessageRequest.SetdstParent(Index: Integer; const ANodeBase2: NodeBase2);
begin
  FdstParent := ANodeBase2;
  FdstParent_Specified := True;
end;

function CreateSubClipMessageRequest.dstParent_Specified(Index: Integer): boolean;
begin
  Result := FdstParent_Specified;
end;

procedure CreateSubClipMessageRequest.SetinsertPosition(Index: Integer; const ANodeBase2: NodeBase2);
begin
  FinsertPosition := ANodeBase2;
  FinsertPosition_Specified := True;
end;

function CreateSubClipMessageRequest.insertPosition_Specified(Index: Integer): boolean;
begin
  Result := FinsertPosition_Specified;
end;

procedure CreateSubClipMessageRequest.SetinsertBefore(Index: Integer; const ABoolean: Boolean);
begin
  FinsertBefore := ABoolean;
  FinsertBefore_Specified := True;
end;

function CreateSubClipMessageRequest.insertBefore_Specified(Index: Integer): boolean;
begin
  Result := FinsertBefore_Specified;
end;

procedure CreateSubClipMessageRequest.SetnewNodeID(Index: Integer; const ANODEID2: NODEID2);
begin
  FnewNodeID := ANODEID2;
  FnewNodeID_Specified := True;
end;

function CreateSubClipMessageRequest.newNodeID_Specified(Index: Integer): boolean;
begin
  Result := FnewNodeID_Specified;
end;

procedure CreateSubClipMessageRequest.Setproperties(Index: Integer; const APropertySetObject2: PropertySetObject2);
begin
  Fproperties := APropertySetObject2;
  Fproperties_Specified := True;
end;

function CreateSubClipMessageRequest.properties_Specified(Index: Integer): boolean;
begin
  Result := Fproperties_Specified;
end;

constructor AsyncCopyNodeMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor AsyncCopyNodeMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  System.SysUtils.FreeAndNil(FdstParent);
  System.SysUtils.FreeAndNil(FinsertPosition);
  System.SysUtils.FreeAndNil(FnewNodeID);
  inherited Destroy;
end;

procedure AsyncCopyNodeMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function AsyncCopyNodeMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure AsyncCopyNodeMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function AsyncCopyNodeMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure AsyncCopyNodeMessageRequest.SetdstParent(Index: Integer; const ANodeBase2: NodeBase2);
begin
  FdstParent := ANodeBase2;
  FdstParent_Specified := True;
end;

function AsyncCopyNodeMessageRequest.dstParent_Specified(Index: Integer): boolean;
begin
  Result := FdstParent_Specified;
end;

procedure AsyncCopyNodeMessageRequest.SetinsertPosition(Index: Integer; const ANodeBase2: NodeBase2);
begin
  FinsertPosition := ANodeBase2;
  FinsertPosition_Specified := True;
end;

function AsyncCopyNodeMessageRequest.insertPosition_Specified(Index: Integer): boolean;
begin
  Result := FinsertPosition_Specified;
end;

procedure AsyncCopyNodeMessageRequest.SetinsertBefore(Index: Integer; const ABoolean: Boolean);
begin
  FinsertBefore := ABoolean;
  FinsertBefore_Specified := True;
end;

function AsyncCopyNodeMessageRequest.insertBefore_Specified(Index: Integer): boolean;
begin
  Result := FinsertBefore_Specified;
end;

procedure AsyncCopyNodeMessageRequest.SetnewNodeID(Index: Integer; const ANODEID2: NODEID2);
begin
  FnewNodeID := ANODEID2;
  FnewNodeID_Specified := True;
end;

function AsyncCopyNodeMessageRequest.newNodeID_Specified(Index: Integer): boolean;
begin
  Result := FnewNodeID_Specified;
end;

constructor SplitMogMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SplitMogMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  System.SysUtils.FreeAndNil(Fproperties1);
  System.SysUtils.FreeAndNil(Fproperties2);
  inherited Destroy;
end;

procedure SplitMogMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function SplitMogMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure SplitMogMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function SplitMogMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure SplitMogMessageRequest.SetsplitTime(Index: Integer; const AInt64: Int64);
begin
  FsplitTime := AInt64;
  FsplitTime_Specified := True;
end;

function SplitMogMessageRequest.splitTime_Specified(Index: Integer): boolean;
begin
  Result := FsplitTime_Specified;
end;

procedure SplitMogMessageRequest.Setproperties1(Index: Integer; const APropertySetObject2: PropertySetObject2);
begin
  Fproperties1 := APropertySetObject2;
  Fproperties1_Specified := True;
end;

function SplitMogMessageRequest.properties1_Specified(Index: Integer): boolean;
begin
  Result := Fproperties1_Specified;
end;

procedure SplitMogMessageRequest.Setproperties2(Index: Integer; const APropertySetObject2: PropertySetObject2);
begin
  Fproperties2 := APropertySetObject2;
  Fproperties2_Specified := True;
end;

function SplitMogMessageRequest.properties2_Specified(Index: Integer): boolean;
begin
  Result := Fproperties2_Specified;
end;

destructor SearchListResult2.Destroy;
begin
  System.SysUtils.FreeAndNil(F_node_id);
  System.SysUtils.FreeAndNil(F_parent_id);
  inherited Destroy;
end;

destructor ChangeDeleteUpdate2.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

constructor GetChildrenPageMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetChildrenPageMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetChildrenPageMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetChildrenPageMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetChildrenPageMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function GetChildrenPageMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetChildrenPageMessageRequest.SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
begin
  FrequestType := AGET_NODE_REQUEST_TYPE;
  FrequestType_Specified := True;
end;

function GetChildrenPageMessageRequest.requestType_Specified(Index: Integer): boolean;
begin
  Result := FrequestType_Specified;
end;

procedure GetChildrenPageMessageRequest.SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
begin
  FnodeFillingType := ANodeFillingType;
  FnodeFillingType_Specified := True;
end;

function GetChildrenPageMessageRequest.nodeFillingType_Specified(Index: Integer): boolean;
begin
  Result := FnodeFillingType_Specified;
end;

procedure GetChildrenPageMessageRequest.SetpageSize(Index: Integer; const AInteger: Integer);
begin
  FpageSize := AInteger;
  FpageSize_Specified := True;
end;

function GetChildrenPageMessageRequest.pageSize_Specified(Index: Integer): boolean;
begin
  Result := FpageSize_Specified;
end;

procedure GetChildrenPageMessageRequest.SetpageNum(Index: Integer; const AInteger: Integer);
begin
  FpageNum := AInteger;
  FpageNum_Specified := True;
end;

function GetChildrenPageMessageRequest.pageNum_Specified(Index: Integer): boolean;
begin
  Result := FpageNum_Specified;
end;

procedure GetChildrenPageMessageRequest.SetorderField(Index: Integer; const AOrderField: OrderField);
begin
  ForderField := AOrderField;
  ForderField_Specified := True;
end;

function GetChildrenPageMessageRequest.orderField_Specified(Index: Integer): boolean;
begin
  Result := ForderField_Specified;
end;

constructor HeartBeatMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor HeartBeatMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure HeartBeatMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function HeartBeatMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure HeartBeatMessageRequest.Setm_bTouch(Index: Integer; const AInteger: Integer);
begin
  Fm_bTouch := AInteger;
  Fm_bTouch_Specified := True;
end;

function HeartBeatMessageRequest.m_bTouch_Specified(Index: Integer): boolean;
begin
  Result := Fm_bTouch_Specified;
end;

constructor TagsCloudMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TagsCloudMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fm_NodeID);
  inherited Destroy;
end;

procedure TagsCloudMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function TagsCloudMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure TagsCloudMessageRequest.Setm_NodeID(Index: Integer; const ANODEID2: NODEID2);
begin
  Fm_NodeID := ANODEID2;
  Fm_NodeID_Specified := True;
end;

function TagsCloudMessageRequest.m_NodeID_Specified(Index: Integer): boolean;
begin
  Result := Fm_NodeID_Specified;
end;

procedure TagsCloudMessageRequest.Setlimit(Index: Integer; const AInteger: Integer);
begin
  Flimit := AInteger;
  Flimit_Specified := True;
end;

function TagsCloudMessageRequest.limit_Specified(Index: Integer): boolean;
begin
  Result := Flimit_Specified;
end;

procedure TagsCloudMessageRequest.SetisIncludeEmpty(Index: Integer; const ABoolean: Boolean);
begin
  FisIncludeEmpty := ABoolean;
  FisIncludeEmpty_Specified := True;
end;

function TagsCloudMessageRequest.isIncludeEmpty_Specified(Index: Integer): boolean;
begin
  Result := FisIncludeEmpty_Specified;
end;

constructor GetAllNewsMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetAllNewsMessageRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fnodes)-1 do
    System.SysUtils.FreeAndNil(Fnodes[I]);
  System.SetLength(Fnodes, 0);
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetAllNewsMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetAllNewsMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetAllNewsMessageRequest.Setnodes(Index: Integer; const AArrayOfNodeBase: ArrayOfNodeBase);
begin
  Fnodes := AArrayOfNodeBase;
  Fnodes_Specified := True;
end;

function GetAllNewsMessageRequest.nodes_Specified(Index: Integer): boolean;
begin
  Result := Fnodes_Specified;
end;

procedure GetAllNewsMessageRequest.SetisBreakingOnly(Index: Integer; const ABoolean: Boolean);
begin
  FisBreakingOnly := ABoolean;
  FisBreakingOnly_Specified := True;
end;

function GetAllNewsMessageRequest.isBreakingOnly_Specified(Index: Integer): boolean;
begin
  Result := FisBreakingOnly_Specified;
end;

procedure GetAllNewsMessageRequest.Settop(Index: Integer; const AInteger: Integer);
begin
  Ftop := AInteger;
  Ftop_Specified := True;
end;

function GetAllNewsMessageRequest.top_Specified(Index: Integer): boolean;
begin
  Result := Ftop_Specified;
end;

constructor GetBreakingNewsRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetBreakingNewsRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetBreakingNewsRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetBreakingNewsRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetBreakingNewsRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function GetBreakingNewsRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetBreakingNewsRequest.Settop(Index: Integer; const AInteger: Integer);
begin
  Ftop := AInteger;
  Ftop_Specified := True;
end;

function GetBreakingNewsRequest.top_Specified(Index: Integer): boolean;
begin
  Result := Ftop_Specified;
end;

constructor GetRollsByStatusMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetRollsByStatusMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetRollsByStatusMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetRollsByStatusMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetRollsByStatusMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function GetRollsByStatusMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetRollsByStatusMessageRequest.SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
begin
  FrequestType := AGET_NODE_REQUEST_TYPE;
  FrequestType_Specified := True;
end;

function GetRollsByStatusMessageRequest.requestType_Specified(Index: Integer): boolean;
begin
  Result := FrequestType_Specified;
end;

procedure GetRollsByStatusMessageRequest.SetExpired(Index: Integer; const AExperationStatus: ExperationStatus);
begin
  FExpired := AExperationStatus;
  FExpired_Specified := True;
end;

function GetRollsByStatusMessageRequest.Expired_Specified(Index: Integer): boolean;
begin
  Result := FExpired_Specified;
end;

procedure GetRollsByStatusMessageRequest.SetCreated(Index: Integer; const ACreationStatus: CreationStatus);
begin
  FCreated := ACreationStatus;
  FCreated_Specified := True;
end;

function GetRollsByStatusMessageRequest.Created_Specified(Index: Integer): boolean;
begin
  Result := FCreated_Specified;
end;

procedure GetRollsByStatusMessageRequest.SetDaysAgo(Index: Integer; const AInteger: Integer);
begin
  FDaysAgo := AInteger;
  FDaysAgo_Specified := True;
end;

function GetRollsByStatusMessageRequest.DaysAgo_Specified(Index: Integer): boolean;
begin
  Result := FDaysAgo_Specified;
end;

constructor GetJobProcessorGroupMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetJobProcessorGroupMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetJobProcessorGroupMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetJobProcessorGroupMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetJobProcessorGroupMessageRequest.SetjobProcessorGroupId(Index: Integer; const AInteger: Integer);
begin
  FjobProcessorGroupId := AInteger;
  FjobProcessorGroupId_Specified := True;
end;

function GetJobProcessorGroupMessageRequest.jobProcessorGroupId_Specified(Index: Integer): boolean;
begin
  Result := FjobProcessorGroupId_Specified;
end;

constructor SubTypeRelationsMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SubTypeRelationsMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure SubTypeRelationsMessageRequest.SetSubType(Index: Integer; const AInteger: Integer);
begin
  FSubType := AInteger;
  FSubType_Specified := True;
end;

function SubTypeRelationsMessageRequest.SubType_Specified(Index: Integer): boolean;
begin
  Result := FSubType_Specified;
end;

procedure SubTypeRelationsMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function SubTypeRelationsMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor SubTypeRelationsParentsMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SubTypeRelationsParentsMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure SubTypeRelationsParentsMessageRequest.SetSubType(Index: Integer; const AInteger: Integer);
begin
  FSubType := AInteger;
  FSubType_Specified := True;
end;

function SubTypeRelationsParentsMessageRequest.SubType_Specified(Index: Integer): boolean;
begin
  Result := FSubType_Specified;
end;

procedure SubTypeRelationsParentsMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function SubTypeRelationsParentsMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor ColorMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor ColorMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure ColorMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function ColorMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure ColorMessageRequest.Setm_intIndex(Index: Integer; const AInteger: Integer);
begin
  Fm_intIndex := AInteger;
  Fm_intIndex_Specified := True;
end;

function ColorMessageRequest.m_intIndex_Specified(Index: Integer): boolean;
begin
  Result := Fm_intIndex_Specified;
end;

constructor GetUpdatesRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetUpdatesRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetUpdatesRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetUpdatesRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetUpdatesRequest.Setcount(Index: Integer; const AInteger: Integer);
begin
  Fcount := AInteger;
  Fcount_Specified := True;
end;

function GetUpdatesRequest.count_Specified(Index: Integer): boolean;
begin
  Result := Fcount_Specified;
end;

constructor GetSpecialNodeMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetSpecialNodeMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetSpecialNodeMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetSpecialNodeMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetSpecialNodeMessageRequest.Settype_(Index: Integer; const ASpecialNodes: SpecialNodes);
begin
  Ftype_ := ASpecialNodes;
  Ftype__Specified := True;
end;

function GetSpecialNodeMessageRequest.type__Specified(Index: Integer): boolean;
begin
  Result := Ftype__Specified;
end;

procedure GetSpecialNodeMessageRequest.SetextraData(Index: Integer; const AVariant: Variant);
begin
  FextraData := AVariant;
  FextraData_Specified := True;
end;

function GetSpecialNodeMessageRequest.extraData_Specified(Index: Integer): boolean;
begin
  Result := FextraData_Specified;
end;

procedure GetSpecialNodeMessageRequest.SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
begin
  FnodeFillingType := ANodeFillingType;
  FnodeFillingType_Specified := True;
end;

function GetSpecialNodeMessageRequest.nodeFillingType_Specified(Index: Integer): boolean;
begin
  Result := FnodeFillingType_Specified;
end;

constructor CreateNodeMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CreateNodeMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  System.SysUtils.FreeAndNil(FinsertPosition);
  inherited Destroy;
end;

procedure CreateNodeMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function CreateNodeMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure CreateNodeMessageRequest.Setnode(Index: Integer; const ANode2: Node2);
begin
  Fnode := ANode2;
  Fnode_Specified := True;
end;

function CreateNodeMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure CreateNodeMessageRequest.SetinsertPosition(Index: Integer; const ANodeBase2: NodeBase2);
begin
  FinsertPosition := ANodeBase2;
  FinsertPosition_Specified := True;
end;

function CreateNodeMessageRequest.insertPosition_Specified(Index: Integer): boolean;
begin
  Result := FinsertPosition_Specified;
end;

procedure CreateNodeMessageRequest.SetinsertBefore(Index: Integer; const ABoolean: Boolean);
begin
  FinsertBefore := ABoolean;
  FinsertBefore_Specified := True;
end;

function CreateNodeMessageRequest.insertBefore_Specified(Index: Integer): boolean;
begin
  Result := FinsertBefore_Specified;
end;

procedure CreateNodeMessageRequest.SetextraData(Index: Integer; const AVariant: Variant);
begin
  FextraData := AVariant;
  FextraData_Specified := True;
end;

function CreateNodeMessageRequest.extraData_Specified(Index: Integer): boolean;
begin
  Result := FextraData_Specified;
end;

destructor TVFormatObject2.Destroy;
begin
  System.SysUtils.FreeAndNil(FAspect);
  System.SysUtils.FreeAndNil(FFrameStruct);
  System.SysUtils.FreeAndNil(FFrequency);
  inherited Destroy;
end;

destructor GetRecentNodesParameters2.Destroy;
begin
  System.SysUtils.FreeAndNil(F_fromDate);
  System.SysUtils.FreeAndNil(F_toDate);
  inherited Destroy;
end;

destructor LockUpdate2.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

destructor RenameUpdate2.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

destructor MetadataObject2.Destroy;
begin
  System.SysUtils.FreeAndNil(FdescriptorID);
  inherited Destroy;
end;

constructor GetMappingTypeMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetMappingTypeMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetMappingTypeMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetMappingTypeMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetMappingTypeMessageRequest.Setid(Index: Integer; const Aguid: guid);
begin
  Fid := Aguid;
  Fid_Specified := True;
end;

function GetMappingTypeMessageRequest.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

constructor GetMappingTypeMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetMappingTypeMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fmapping);
  inherited Destroy;
end;

procedure GetMappingTypeMessageResponse.Setmapping(Index: Integer; const AMappingTypeObject2: MappingTypeObject2);
begin
  Fmapping := AMappingTypeObject2;
  Fmapping_Specified := True;
end;

function GetMappingTypeMessageResponse.mapping_Specified(Index: Integer): boolean;
begin
  Result := Fmapping_Specified;
end;

procedure GetMappingTypeMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetMappingTypeMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetMappingTypeMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetMappingTypeMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor DeleteMappingMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure DeleteMappingMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function DeleteMappingMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure DeleteMappingMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function DeleteMappingMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor SetMappingMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure SetMappingMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function SetMappingMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure SetMappingMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function SetMappingMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor DeleteMappingMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DeleteMappingMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure DeleteMappingMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function DeleteMappingMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure DeleteMappingMessageRequest.Settype_(Index: Integer; const AMappingType: MappingType);
begin
  Ftype_ := AMappingType;
  Ftype__Specified := True;
end;

function DeleteMappingMessageRequest.type__Specified(Index: Integer): boolean;
begin
  Result := Ftype__Specified;
end;

procedure DeleteMappingMessageRequest.SetschemaID(Index: Integer; const Aguid: guid);
begin
  FschemaID := Aguid;
  FschemaID_Specified := True;
end;

function DeleteMappingMessageRequest.schemaID_Specified(Index: Integer): boolean;
begin
  Result := FschemaID_Specified;
end;

constructor DeleteMappingTypeMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure DeleteMappingTypeMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function DeleteMappingTypeMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure DeleteMappingTypeMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function DeleteMappingTypeMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor DeleteMappingTypeMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DeleteMappingTypeMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure DeleteMappingTypeMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function DeleteMappingTypeMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure DeleteMappingTypeMessageRequest.Setid(Index: Integer; const Aguid: guid);
begin
  Fid := Aguid;
  Fid_Specified := True;
end;

function DeleteMappingTypeMessageRequest.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

constructor SetMappingTypeMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetMappingTypeMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure SetMappingTypeMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function SetMappingTypeMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure SetMappingTypeMessageRequest.Setid(Index: Integer; const Aguid: guid);
begin
  Fid := Aguid;
  Fid_Specified := True;
end;

function SetMappingTypeMessageRequest.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

procedure SetMappingTypeMessageRequest.Setname_(Index: Integer; const Astring: string);
begin
  Fname_ := Astring;
  Fname__Specified := True;
end;

function SetMappingTypeMessageRequest.name__Specified(Index: Integer): boolean;
begin
  Result := Fname__Specified;
end;

procedure SetMappingTypeMessageRequest.Setxml(Index: Integer; const Astring: string);
begin
  Fxml := Astring;
  Fxml_Specified := True;
end;

function SetMappingTypeMessageRequest.xml_Specified(Index: Integer): boolean;
begin
  Result := Fxml_Specified;
end;

constructor SetMappingTypeMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure SetMappingTypeMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function SetMappingTypeMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure SetMappingTypeMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function SetMappingTypeMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor PluginDescriptorMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor PluginDescriptorMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure PluginDescriptorMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function PluginDescriptorMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure PluginDescriptorMessageRequest.Setrecordid(Index: Integer; const Astring: string);
begin
  Frecordid := Astring;
  Frecordid_Specified := True;
end;

function PluginDescriptorMessageRequest.recordid_Specified(Index: Integer): boolean;
begin
  Result := Frecordid_Specified;
end;

constructor PluginDescriptorMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure PluginDescriptorMessageResponse.Setname_(Index: Integer; const Astring: string);
begin
  Fname_ := Astring;
  Fname__Specified := True;
end;

function PluginDescriptorMessageResponse.name__Specified(Index: Integer): boolean;
begin
  Result := Fname__Specified;
end;

procedure PluginDescriptorMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function PluginDescriptorMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure PluginDescriptorMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function PluginDescriptorMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor ConnectionInfoMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure ConnectionInfoMessageResponse.Setserver(Index: Integer; const Astring: string);
begin
  Fserver := Astring;
  Fserver_Specified := True;
end;

function ConnectionInfoMessageResponse.server_Specified(Index: Integer): boolean;
begin
  Result := Fserver_Specified;
end;

procedure ConnectionInfoMessageResponse.Setdatabase(Index: Integer; const Astring: string);
begin
  Fdatabase := Astring;
  Fdatabase_Specified := True;
end;

function ConnectionInfoMessageResponse.database_Specified(Index: Integer): boolean;
begin
  Result := Fdatabase_Specified;
end;

procedure ConnectionInfoMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function ConnectionInfoMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure ConnectionInfoMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function ConnectionInfoMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

procedure ConnectionInfoMessageResponse.Setuser(Index: Integer; const Astring: string);
begin
  Fuser := Astring;
  Fuser_Specified := True;
end;

function ConnectionInfoMessageResponse.user_Specified(Index: Integer): boolean;
begin
  Result := Fuser_Specified;
end;

constructor GetProfileMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetProfileMessageResponse.Setprofile(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  Fprofile := ATByteDynArray;
  Fprofile_Specified := True;
end;

function GetProfileMessageResponse.profile_Specified(Index: Integer): boolean;
begin
  Result := Fprofile_Specified;
end;

procedure GetProfileMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetProfileMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetProfileMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetProfileMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetMappingMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetMappingMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fmapping);
  inherited Destroy;
end;

procedure GetMappingMessageResponse.Setmapping(Index: Integer; const AMappingObject2: MappingObject2);
begin
  Fmapping := AMappingObject2;
  Fmapping_Specified := True;
end;

function GetMappingMessageResponse.mapping_Specified(Index: Integer): boolean;
begin
  Result := Fmapping_Specified;
end;

procedure GetMappingMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetMappingMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetMappingMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetMappingMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor SetMappingMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetMappingMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure SetMappingMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function SetMappingMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure SetMappingMessageRequest.Settype_(Index: Integer; const AMappingType: MappingType);
begin
  Ftype_ := AMappingType;
  Ftype__Specified := True;
end;

function SetMappingMessageRequest.type__Specified(Index: Integer): boolean;
begin
  Result := Ftype__Specified;
end;

procedure SetMappingMessageRequest.SetschemaID(Index: Integer; const Aguid: guid);
begin
  FschemaID := Aguid;
  FschemaID_Specified := True;
end;

function SetMappingMessageRequest.schemaID_Specified(Index: Integer): boolean;
begin
  Result := FschemaID_Specified;
end;

procedure SetMappingMessageRequest.Setxml(Index: Integer; const Astring: string);
begin
  Fxml := Astring;
  Fxml_Specified := True;
end;

function SetMappingMessageRequest.xml_Specified(Index: Integer): boolean;
begin
  Result := Fxml_Specified;
end;

constructor GetMappingMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetMappingMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetMappingMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetMappingMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetMappingMessageRequest.Settype_(Index: Integer; const AMappingType: MappingType);
begin
  Ftype_ := AMappingType;
  Ftype__Specified := True;
end;

function GetMappingMessageRequest.type__Specified(Index: Integer): boolean;
begin
  Result := Ftype__Specified;
end;

procedure GetMappingMessageRequest.SetschemaID(Index: Integer; const Aguid: guid);
begin
  FschemaID := Aguid;
  FschemaID_Specified := True;
end;

function GetMappingMessageRequest.schemaID_Specified(Index: Integer): boolean;
begin
  Result := FschemaID_Specified;
end;

constructor MosObjectsMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor MosObjectsMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fobjects);
  inherited Destroy;
end;

procedure MosObjectsMessageResponse.Setobjects(Index: Integer; const AMosObjects2: MosObjects2);
begin
  Fobjects := AMosObjects2;
  Fobjects_Specified := True;
end;

function MosObjectsMessageResponse.objects_Specified(Index: Integer): boolean;
begin
  Result := Fobjects_Specified;
end;

procedure MosObjectsMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function MosObjectsMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure MosObjectsMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function MosObjectsMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetMappingTypesMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetMappingTypesMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fmappings);
  inherited Destroy;
end;

procedure GetMappingTypesMessageResponse.Setmappings(Index: Integer; const AMappingTypeObjects2: MappingTypeObjects2);
begin
  Fmappings := AMappingTypeObjects2;
  Fmappings_Specified := True;
end;

function GetMappingTypesMessageResponse.mappings_Specified(Index: Integer): boolean;
begin
  Result := Fmappings_Specified;
end;

procedure GetMappingTypesMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetMappingTypesMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetMappingTypesMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetMappingTypesMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor SplitMogMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SplitMogMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fmog1);
  System.SysUtils.FreeAndNil(Fmog2);
  inherited Destroy;
end;

procedure SplitMogMessageResponse.Setmog1(Index: Integer; const AMogNode2: MogNode2);
begin
  Fmog1 := AMogNode2;
  Fmog1_Specified := True;
end;

function SplitMogMessageResponse.mog1_Specified(Index: Integer): boolean;
begin
  Result := Fmog1_Specified;
end;

procedure SplitMogMessageResponse.Setmog2(Index: Integer; const AMogNode2: MogNode2);
begin
  Fmog2 := AMogNode2;
  Fmog2_Specified := True;
end;

function SplitMogMessageResponse.mog2_Specified(Index: Integer): boolean;
begin
  Result := Fmog2_Specified;
end;

procedure SplitMogMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function SplitMogMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure SplitMogMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function SplitMogMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor ReorderNodesMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure ReorderNodesMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function ReorderNodesMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure ReorderNodesMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function ReorderNodesMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetPresentersMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetPresentersMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fpresenters);
  inherited Destroy;
end;

procedure GetPresentersMessageResponse.Setpresenters(Index: Integer; const APresenterObjects2: PresenterObjects2);
begin
  Fpresenters := APresenterObjects2;
  Fpresenters_Specified := True;
end;

function GetPresentersMessageResponse.presenters_Specified(Index: Integer): boolean;
begin
  Result := Fpresenters_Specified;
end;

procedure GetPresentersMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetPresentersMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetPresentersMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetPresentersMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetPresenterMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetPresenterMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fpresenter);
  inherited Destroy;
end;

procedure GetPresenterMessageResponse.Setpresenter(Index: Integer; const APresenterObject2: PresenterObject2);
begin
  Fpresenter := APresenterObject2;
  Fpresenter_Specified := True;
end;

function GetPresenterMessageResponse.presenter_Specified(Index: Integer): boolean;
begin
  Result := Fpresenter_Specified;
end;

procedure GetPresenterMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetPresenterMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetPresenterMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetPresenterMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor JoinMogsMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor JoinMogsMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fmog);
  inherited Destroy;
end;

procedure JoinMogsMessageResponse.Setmog(Index: Integer; const AMogNode2: MogNode2);
begin
  Fmog := AMogNode2;
  Fmog_Specified := True;
end;

function JoinMogsMessageResponse.mog_Specified(Index: Integer): boolean;
begin
  Result := Fmog_Specified;
end;

procedure JoinMogsMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function JoinMogsMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure JoinMogsMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function JoinMogsMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetPresenterMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetPresenterMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetPresenterMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetPresenterMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetPresenterMessageRequest.Setid(Index: Integer; const Aguid: guid);
begin
  Fid := Aguid;
  Fid_Specified := True;
end;

function GetPresenterMessageRequest.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

constructor GetParentByTypeMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetParentByTypeMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetParentByTypeMessageResponse.Setnode(Index: Integer; const ANode2: Node2);
begin
  Fnode := ANode2;
  Fnode_Specified := True;
end;

function GetParentByTypeMessageResponse.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetParentByTypeMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetParentByTypeMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetParentByTypeMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetParentByTypeMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetSpecialNodeMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetSpecialNodeMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetSpecialNodeMessageResponse.Setnode(Index: Integer; const ANode2: Node2);
begin
  Fnode := ANode2;
  Fnode_Specified := True;
end;

function GetSpecialNodeMessageResponse.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetSpecialNodeMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetSpecialNodeMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetSpecialNodeMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetSpecialNodeMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor MpegProfilesMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor MpegProfilesMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FProfiles);
  System.SysUtils.FreeAndNil(FProfiles2TVFormats);
  inherited Destroy;
end;

procedure MpegProfilesMessageResponse.SetProfiles(Index: Integer; const AMpegProfileSetObject2: MpegProfileSetObject2);
begin
  FProfiles := AMpegProfileSetObject2;
  FProfiles_Specified := True;
end;

function MpegProfilesMessageResponse.Profiles_Specified(Index: Integer): boolean;
begin
  Result := FProfiles_Specified;
end;

procedure MpegProfilesMessageResponse.SetProfiles2TVFormats(Index: Integer; const AMpegProfile_TVFormatObjects2: MpegProfile_TVFormatObjects2);
begin
  FProfiles2TVFormats := AMpegProfile_TVFormatObjects2;
  FProfiles2TVFormats_Specified := True;
end;

function MpegProfilesMessageResponse.Profiles2TVFormats_Specified(Index: Integer): boolean;
begin
  Result := FProfiles2TVFormats_Specified;
end;

procedure MpegProfilesMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function MpegProfilesMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure MpegProfilesMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function MpegProfilesMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor SetUserProfileMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure SetUserProfileMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function SetUserProfileMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure SetUserProfileMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function SetUserProfileMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetMetadataTemplatesMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetMetadataTemplatesMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Ftemplates);
  inherited Destroy;
end;

procedure GetMetadataTemplatesMessageResponse.Settemplates(Index: Integer; const AMetadataTemplateSetObject2: MetadataTemplateSetObject2);
begin
  Ftemplates := AMetadataTemplateSetObject2;
  Ftemplates_Specified := True;
end;

function GetMetadataTemplatesMessageResponse.templates_Specified(Index: Integer): boolean;
begin
  Result := Ftemplates_Specified;
end;

procedure GetMetadataTemplatesMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetMetadataTemplatesMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetMetadataTemplatesMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetMetadataTemplatesMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor SetUserProfileMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetUserProfileMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure SetUserProfileMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function SetUserProfileMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure SetUserProfileMessageRequest.Setusername(Index: Integer; const Astring: string);
begin
  Fusername := Astring;
  Fusername_Specified := True;
end;

function SetUserProfileMessageRequest.username_Specified(Index: Integer): boolean;
begin
  Result := Fusername_Specified;
end;

procedure SetUserProfileMessageRequest.Setprofile(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  Fprofile := ATByteDynArray;
  Fprofile_Specified := True;
end;

function SetUserProfileMessageRequest.profile_Specified(Index: Integer): boolean;
begin
  Result := Fprofile_Specified;
end;

constructor GetProfileMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetProfileMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetProfileMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetProfileMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetProfileMessageRequest.Settype_(Index: Integer; const AProfileType: ProfileType);
begin
  Ftype_ := AProfileType;
  Ftype__Specified := True;
end;

function GetProfileMessageRequest.type__Specified(Index: Integer): boolean;
begin
  Result := Ftype__Specified;
end;

procedure GetProfileMessageRequest.Setuser(Index: Integer; const Astring: string);
begin
  Fuser := Astring;
  Fuser_Specified := True;
end;

function GetProfileMessageRequest.user_Specified(Index: Integer): boolean;
begin
  Result := Fuser_Specified;
end;

constructor SetPropertiesMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure SetPropertiesMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function SetPropertiesMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure SetPropertiesMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function SetPropertiesMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor SetPropertyMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure SetPropertyMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function SetPropertyMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure SetPropertyMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function SetPropertyMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor CreateNodeByNodeMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CreateNodeByNodeMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure CreateNodeByNodeMessageResponse.Setnode(Index: Integer; const ANode2: Node2);
begin
  Fnode := ANode2;
  Fnode_Specified := True;
end;

function CreateNodeByNodeMessageResponse.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure CreateNodeByNodeMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function CreateNodeByNodeMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure CreateNodeByNodeMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function CreateNodeByNodeMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor MoveNodeMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor MoveNodeMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure MoveNodeMessageResponse.Setnode(Index: Integer; const ANode2: Node2);
begin
  Fnode := ANode2;
  Fnode_Specified := True;
end;

function MoveNodeMessageResponse.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure MoveNodeMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function MoveNodeMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure MoveNodeMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function MoveNodeMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor CopyNodeMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CopyNodeMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure CopyNodeMessageResponse.Setnode(Index: Integer; const ANode2: Node2);
begin
  Fnode := ANode2;
  Fnode_Specified := True;
end;

function CopyNodeMessageResponse.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure CopyNodeMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function CopyNodeMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure CopyNodeMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function CopyNodeMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor DeleteNodeMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure DeleteNodeMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function DeleteNodeMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure DeleteNodeMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function DeleteNodeMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor CreateNodeMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CreateNodeMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure CreateNodeMessageResponse.Setnode(Index: Integer; const ANode2: Node2);
begin
  Fnode := ANode2;
  Fnode_Specified := True;
end;

function CreateNodeMessageResponse.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure CreateNodeMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function CreateNodeMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure CreateNodeMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function CreateNodeMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetPathForNodeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetPathForNodeResponse.SetPath(Index: Integer; const Astring: string);
begin
  FPath := Astring;
  FPath_Specified := True;
end;

function GetPathForNodeResponse.Path_Specified(Index: Integer): boolean;
begin
  Result := FPath_Specified;
end;

procedure GetPathForNodeResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetPathForNodeResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetPathForNodeResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetPathForNodeResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor RenameNodeMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure RenameNodeMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function RenameNodeMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure RenameNodeMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function RenameNodeMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor RestoreNodeMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor RestoreNodeMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure RestoreNodeMessageResponse.Setnode(Index: Integer; const ANode2: Node2);
begin
  Fnode := ANode2;
  Fnode_Specified := True;
end;

function RestoreNodeMessageResponse.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure RestoreNodeMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function RestoreNodeMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure RestoreNodeMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function RestoreNodeMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor RenameNodeMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor RenameNodeMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure RenameNodeMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function RenameNodeMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure RenameNodeMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function RenameNodeMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure RenameNodeMessageRequest.Setname_(Index: Integer; const Astring: string);
begin
  Fname_ := Astring;
  Fname__Specified := True;
end;

function RenameNodeMessageRequest.name__Specified(Index: Integer): boolean;
begin
  Result := Fname__Specified;
end;

constructor GetHubUrlMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetHubUrlMessageResponse.SetMStrHubUrl(Index: Integer; const Astring: string);
begin
  FMStrHubUrl := Astring;
  FMStrHubUrl_Specified := True;
end;

function GetHubUrlMessageResponse.MStrHubUrl_Specified(Index: Integer): boolean;
begin
  Result := FMStrHubUrl_Specified;
end;

procedure GetHubUrlMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetHubUrlMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetHubUrlMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetHubUrlMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor NodeUnlockMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor NodeUnlockMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure NodeUnlockMessageResponse.Setnode(Index: Integer; const ANode2: Node2);
begin
  Fnode := ANode2;
  Fnode_Specified := True;
end;

function NodeUnlockMessageResponse.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure NodeUnlockMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function NodeUnlockMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure NodeUnlockMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function NodeUnlockMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor NodeLockMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor NodeLockMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure NodeLockMessageResponse.Setnode(Index: Integer; const ANode2: Node2);
begin
  Fnode := ANode2;
  Fnode_Specified := True;
end;

function NodeLockMessageResponse.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure NodeLockMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function NodeLockMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure NodeLockMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function NodeLockMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor IsHasChildrenMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure IsHasChildrenMessageResponse.SetisHasChildren(Index: Integer; const ABoolean: Boolean);
begin
  FisHasChildren := ABoolean;
  FisHasChildren_Specified := True;
end;

function IsHasChildrenMessageResponse.isHasChildren_Specified(Index: Integer): boolean;
begin
  Result := FisHasChildren_Specified;
end;

procedure IsHasChildrenMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function IsHasChildrenMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure IsHasChildrenMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function IsHasChildrenMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetChildrenPageMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetChildrenPageMessageResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fnodes)-1 do
    System.SysUtils.FreeAndNil(Fnodes[I]);
  System.SetLength(Fnodes, 0);
  inherited Destroy;
end;

procedure GetChildrenPageMessageResponse.Setnodes(Index: Integer; const AArrayOfNode: ArrayOfNode);
begin
  Fnodes := AArrayOfNode;
  Fnodes_Specified := True;
end;

function GetChildrenPageMessageResponse.nodes_Specified(Index: Integer): boolean;
begin
  Result := Fnodes_Specified;
end;

procedure GetChildrenPageMessageResponse.Setcount(Index: Integer; const AInteger: Integer);
begin
  Fcount := AInteger;
  Fcount_Specified := True;
end;

function GetChildrenPageMessageResponse.count_Specified(Index: Integer): boolean;
begin
  Result := Fcount_Specified;
end;

procedure GetChildrenPageMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetChildrenPageMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetChildrenPageMessageResponse.SettotalCount(Index: Integer; const AInteger: Integer);
begin
  FtotalCount := AInteger;
  FtotalCount_Specified := True;
end;

function GetChildrenPageMessageResponse.totalCount_Specified(Index: Integer): boolean;
begin
  Result := FtotalCount_Specified;
end;

procedure GetChildrenPageMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetChildrenPageMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetNodesCountMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetNodesCountMessageResponse.Setcount(Index: Integer; const AInteger: Integer);
begin
  Fcount := AInteger;
  Fcount_Specified := True;
end;

function GetNodesCountMessageResponse.count_Specified(Index: Integer): boolean;
begin
  Result := Fcount_Specified;
end;

procedure GetNodesCountMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetNodesCountMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetNodesCountMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetNodesCountMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor CreateJobMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CreateJobMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure CreateJobMessageResponse.Setnode(Index: Integer; const ANode2: Node2);
begin
  Fnode := ANode2;
  Fnode_Specified := True;
end;

function CreateJobMessageResponse.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure CreateJobMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function CreateJobMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure CreateJobMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function CreateJobMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor AddNodeTagMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor AddNodeTagMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fm_NodeID);
  inherited Destroy;
end;

procedure AddNodeTagMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function AddNodeTagMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure AddNodeTagMessageRequest.Setm_NodeID(Index: Integer; const ANODEID2: NODEID2);
begin
  Fm_NodeID := ANODEID2;
  Fm_NodeID_Specified := True;
end;

function AddNodeTagMessageRequest.m_NodeID_Specified(Index: Integer): boolean;
begin
  Result := Fm_NodeID_Specified;
end;

procedure AddNodeTagMessageRequest.Settag(Index: Integer; const Astring: string);
begin
  Ftag := Astring;
  Ftag_Specified := True;
end;

function AddNodeTagMessageRequest.tag_Specified(Index: Integer): boolean;
begin
  Result := Ftag_Specified;
end;

constructor HeartBeatMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure HeartBeatMessageResponse.SetnVersion(Index: Integer; const AInteger: Integer);
begin
  FnVersion := AInteger;
  FnVersion_Specified := True;
end;

function HeartBeatMessageResponse.nVersion_Specified(Index: Integer): boolean;
begin
  Result := FnVersion_Specified;
end;

procedure HeartBeatMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function HeartBeatMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure HeartBeatMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function HeartBeatMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor TagsCloudMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TagsCloudMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Ftags);
  inherited Destroy;
end;

procedure TagsCloudMessageResponse.Settags(Index: Integer; const ATagsCloudObject2: TagsCloudObject2);
begin
  Ftags := ATagsCloudObject2;
  Ftags_Specified := True;
end;

function TagsCloudMessageResponse.tags_Specified(Index: Integer): boolean;
begin
  Result := Ftags_Specified;
end;

procedure TagsCloudMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function TagsCloudMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure TagsCloudMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function TagsCloudMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor RemoveNodeTagMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure RemoveNodeTagMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function RemoveNodeTagMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure RemoveNodeTagMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function RemoveNodeTagMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor AddNodeTagMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure AddNodeTagMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function AddNodeTagMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure AddNodeTagMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function AddNodeTagMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor RemoveNodeTagMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor RemoveNodeTagMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fm_NodeID);
  inherited Destroy;
end;

procedure RemoveNodeTagMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function RemoveNodeTagMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure RemoveNodeTagMessageRequest.Setm_NodeID(Index: Integer; const ANODEID2: NODEID2);
begin
  Fm_NodeID := ANODEID2;
  Fm_NodeID_Specified := True;
end;

function RemoveNodeTagMessageRequest.m_NodeID_Specified(Index: Integer): boolean;
begin
  Result := Fm_NodeID_Specified;
end;

procedure RemoveNodeTagMessageRequest.Settag(Index: Integer; const Astring: string);
begin
  Ftag := Astring;
  Ftag_Specified := True;
end;

function RemoveNodeTagMessageRequest.tag_Specified(Index: Integer): boolean;
begin
  Result := Ftag_Specified;
end;

constructor CreateSubClipMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CreateSubClipMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure CreateSubClipMessageResponse.Setnode(Index: Integer; const AClipNode2: ClipNode2);
begin
  Fnode := AClipNode2;
  Fnode_Specified := True;
end;

function CreateSubClipMessageResponse.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure CreateSubClipMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function CreateSubClipMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure CreateSubClipMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function CreateSubClipMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetNodeIDsByTypeMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetNodeIDsByTypeMessageResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FnodeIDs)-1 do
    System.SysUtils.FreeAndNil(FnodeIDs[I]);
  System.SetLength(FnodeIDs, 0);
  inherited Destroy;
end;

procedure GetNodeIDsByTypeMessageResponse.SetnodeIDs(Index: Integer; const AArrayOfNodeBase: ArrayOfNodeBase);
begin
  FnodeIDs := AArrayOfNodeBase;
  FnodeIDs_Specified := True;
end;

function GetNodeIDsByTypeMessageResponse.nodeIDs_Specified(Index: Integer): boolean;
begin
  Result := FnodeIDs_Specified;
end;

procedure GetNodeIDsByTypeMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetNodeIDsByTypeMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetNodeIDsByTypeMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetNodeIDsByTypeMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetAllNewsMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetAllNewsMessageResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FnodeIDs)-1 do
    System.SysUtils.FreeAndNil(FnodeIDs[I]);
  System.SetLength(FnodeIDs, 0);
  inherited Destroy;
end;

procedure GetAllNewsMessageResponse.SetnodeIDs(Index: Integer; const AArrayOfNodeBase: ArrayOfNodeBase);
begin
  FnodeIDs := AArrayOfNodeBase;
  FnodeIDs_Specified := True;
end;

function GetAllNewsMessageResponse.nodeIDs_Specified(Index: Integer): boolean;
begin
  Result := FnodeIDs_Specified;
end;

procedure GetAllNewsMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetAllNewsMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetAllNewsMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetAllNewsMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetExtraDataMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetExtraDataMessageResponse.SetextraData(Index: Integer; const Astring: string);
begin
  FextraData := Astring;
  FextraData_Specified := True;
end;

function GetExtraDataMessageResponse.extraData_Specified(Index: Integer): boolean;
begin
  Result := FextraData_Specified;
end;

procedure GetExtraDataMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetExtraDataMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetExtraDataMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetExtraDataMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetBreakingNewsResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetBreakingNewsResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FnodeIDs)-1 do
    System.SysUtils.FreeAndNil(FnodeIDs[I]);
  System.SetLength(FnodeIDs, 0);
  inherited Destroy;
end;

procedure GetBreakingNewsResponse.SetnodeIDs(Index: Integer; const AArrayOfNodeBase: ArrayOfNodeBase);
begin
  FnodeIDs := AArrayOfNodeBase;
  FnodeIDs_Specified := True;
end;

function GetBreakingNewsResponse.nodeIDs_Specified(Index: Integer): boolean;
begin
  Result := FnodeIDs_Specified;
end;

procedure GetBreakingNewsResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetBreakingNewsResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetBreakingNewsResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetBreakingNewsResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetNodesCountMessageResponseEx.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetNodesCountMessageResponseEx.Setcount(Index: Integer; const AInteger: Integer);
begin
  Fcount := AInteger;
  Fcount_Specified := True;
end;

function GetNodesCountMessageResponseEx.count_Specified(Index: Integer): boolean;
begin
  Result := Fcount_Specified;
end;

procedure GetNodesCountMessageResponseEx.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetNodesCountMessageResponseEx.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetNodesCountMessageResponseEx.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetNodesCountMessageResponseEx.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetMediaGroupMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetMediaGroupMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FmediaGroups);
  inherited Destroy;
end;

procedure GetMediaGroupMessageResponse.SetmediaGroups(Index: Integer; const AMediaGroupObjects2: MediaGroupObjects2);
begin
  FmediaGroups := AMediaGroupObjects2;
  FmediaGroups_Specified := True;
end;

function GetMediaGroupMessageResponse.mediaGroups_Specified(Index: Integer): boolean;
begin
  Result := FmediaGroups_Specified;
end;

procedure GetMediaGroupMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetMediaGroupMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetMediaGroupMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetMediaGroupMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor SetMetadataMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure SetMetadataMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function SetMetadataMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure SetMetadataMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function SetMetadataMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetNextJobMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetNextJobMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetNextJobMessageRequest.SetProcessorList(Index: Integer; const Astring: string);
begin
  FProcessorList := Astring;
  FProcessorList_Specified := True;
end;

function GetNextJobMessageRequest.ProcessorList_Specified(Index: Integer): boolean;
begin
  Result := FProcessorList_Specified;
end;

procedure GetNextJobMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetNextJobMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetNextJobMessageRequest.SetJobStatus(Index: Integer; const AInteger: Integer);
begin
  FJobStatus := AInteger;
  FJobStatus_Specified := True;
end;

function GetNextJobMessageRequest.JobStatus_Specified(Index: Integer): boolean;
begin
  Result := FJobStatus_Specified;
end;

procedure GetNextJobMessageRequest.SetJobStatusNew(Index: Integer; const AInteger: Integer);
begin
  FJobStatusNew := AInteger;
  FJobStatusNew_Specified := True;
end;

function GetNextJobMessageRequest.JobStatusNew_Specified(Index: Integer): boolean;
begin
  Result := FJobStatusNew_Specified;
end;

procedure GetNextJobMessageRequest.SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
begin
  FnodeFillingType := ANodeFillingType;
  FnodeFillingType_Specified := True;
end;

function GetNextJobMessageRequest.nodeFillingType_Specified(Index: Integer): boolean;
begin
  Result := FnodeFillingType_Specified;
end;

constructor GetNextJobMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetNextJobMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetNextJobMessageResponse.Setnode(Index: Integer; const AJobNode2: JobNode2);
begin
  Fnode := AJobNode2;
  Fnode_Specified := True;
end;

function GetNextJobMessageResponse.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetNextJobMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetNextJobMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetNextJobMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetNextJobMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetParentByTypesMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetParentByTypesMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetParentByTypesMessageResponse.Setnode(Index: Integer; const ANode2: Node2);
begin
  Fnode := ANode2;
  Fnode_Specified := True;
end;

function GetParentByTypesMessageResponse.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetParentByTypesMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetParentByTypesMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetParentByTypesMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetParentByTypesMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetClipsByRollMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetClipsByRollMessageResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fnodes)-1 do
    System.SysUtils.FreeAndNil(Fnodes[I]);
  System.SetLength(Fnodes, 0);
  inherited Destroy;
end;

procedure GetClipsByRollMessageResponse.Setnodes(Index: Integer; const AArrayOfNode: ArrayOfNode);
begin
  Fnodes := AArrayOfNode;
  Fnodes_Specified := True;
end;

function GetClipsByRollMessageResponse.nodes_Specified(Index: Integer): boolean;
begin
  Result := Fnodes_Specified;
end;

procedure GetClipsByRollMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetClipsByRollMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetClipsByRollMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetClipsByRollMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

procedure WCFServiceFault2.SetFaultID(Index: Integer; const Aguid: guid);
begin
  FFaultID := Aguid;
  FFaultID_Specified := True;
end;

function WCFServiceFault2.FaultID_Specified(Index: Integer): boolean;
begin
  Result := FFaultID_Specified;
end;

procedure WCFServiceFault2.SetFaultMessage(Index: Integer; const Astring: string);
begin
  FFaultMessage := Astring;
  FFaultMessage_Specified := True;
end;

function WCFServiceFault2.FaultMessage_Specified(Index: Integer): boolean;
begin
  Result := FFaultMessage_Specified;
end;

procedure WCFServiceFault.SetFaultID(Index: Integer; const Aguid: guid);
begin
  FFaultID := Aguid;
  FFaultID_Specified := True;
end;

function WCFServiceFault.FaultID_Specified(Index: Integer): boolean;
begin
  Result := FFaultID_Specified;
end;

procedure WCFServiceFault.SetFaultMessage(Index: Integer; const Astring: string);
begin
  FFaultMessage := Astring;
  FFaultMessage_Specified := True;
end;

function WCFServiceFault.FaultMessage_Specified(Index: Integer): boolean;
begin
  Result := FFaultMessage_Specified;
end;

constructor GetFileSetMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetFileSetMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FprimaryFileSet);
  System.SysUtils.FreeAndNil(FsecondaryFileSet);
  inherited Destroy;
end;

procedure GetFileSetMessageResponse.SetprimaryFileSet(Index: Integer; const AFileSetObject2: FileSetObject2);
begin
  FprimaryFileSet := AFileSetObject2;
  FprimaryFileSet_Specified := True;
end;

function GetFileSetMessageResponse.primaryFileSet_Specified(Index: Integer): boolean;
begin
  Result := FprimaryFileSet_Specified;
end;

procedure GetFileSetMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetFileSetMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetFileSetMessageResponse.SetsecondaryFileSet(Index: Integer; const AFileSetObject2: FileSetObject2);
begin
  FsecondaryFileSet := AFileSetObject2;
  FsecondaryFileSet_Specified := True;
end;

function GetFileSetMessageResponse.secondaryFileSet_Specified(Index: Integer): boolean;
begin
  Result := FsecondaryFileSet_Specified;
end;

procedure GetFileSetMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetFileSetMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetRollsByStatusMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetRollsByStatusMessageResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FnodeIDs)-1 do
    System.SysUtils.FreeAndNil(FnodeIDs[I]);
  System.SetLength(FnodeIDs, 0);
  inherited Destroy;
end;

procedure GetRollsByStatusMessageResponse.SetnodeIDs(Index: Integer; const AArrayOfNodeBase: ArrayOfNodeBase);
begin
  FnodeIDs := AArrayOfNodeBase;
  FnodeIDs_Specified := True;
end;

function GetRollsByStatusMessageResponse.nodeIDs_Specified(Index: Integer): boolean;
begin
  Result := FnodeIDs_Specified;
end;

procedure GetRollsByStatusMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetRollsByStatusMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetRollsByStatusMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetRollsByStatusMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetJobProcessorGroupMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetJobProcessorGroupMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FjobProcessorGroup);
  inherited Destroy;
end;

procedure GetJobProcessorGroupMessageResponse.SetjobProcessorGroup(Index: Integer; const AJobProcessorGroupObject2: JobProcessorGroupObject2);
begin
  FjobProcessorGroup := AJobProcessorGroupObject2;
  FjobProcessorGroup_Specified := True;
end;

function GetJobProcessorGroupMessageResponse.jobProcessorGroup_Specified(Index: Integer): boolean;
begin
  Result := FjobProcessorGroup_Specified;
end;

procedure GetJobProcessorGroupMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetJobProcessorGroupMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetJobProcessorGroupMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetJobProcessorGroupMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetJobProcessorGroupsMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetJobProcessorGroupsMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FjobProcessorGroups);
  inherited Destroy;
end;

procedure GetJobProcessorGroupsMessageResponse.SetjobProcessorGroups(Index: Integer; const AJobProcessorGroupObjects2: JobProcessorGroupObjects2);
begin
  FjobProcessorGroups := AJobProcessorGroupObjects2;
  FjobProcessorGroups_Specified := True;
end;

function GetJobProcessorGroupsMessageResponse.jobProcessorGroups_Specified(Index: Integer): boolean;
begin
  Result := FjobProcessorGroups_Specified;
end;

procedure GetJobProcessorGroupsMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetJobProcessorGroupsMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetJobProcessorGroupsMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetJobProcessorGroupsMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetClipsByMogMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetClipsByMogMessageResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fnodes)-1 do
    System.SysUtils.FreeAndNil(Fnodes[I]);
  System.SetLength(Fnodes, 0);
  inherited Destroy;
end;

procedure GetClipsByMogMessageResponse.Setnodes(Index: Integer; const AArrayOfNode: ArrayOfNode);
begin
  Fnodes := AArrayOfNode;
  Fnodes_Specified := True;
end;

function GetClipsByMogMessageResponse.nodes_Specified(Index: Integer): boolean;
begin
  Result := Fnodes_Specified;
end;

procedure GetClipsByMogMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetClipsByMogMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetClipsByMogMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetClipsByMogMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor SetPropertiesByNameMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure SetPropertiesByNameMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function SetPropertiesByNameMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure SetPropertiesByNameMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function SetPropertiesByNameMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor ExportMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor ExportMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure ExportMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function ExportMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure ExportMessageRequest.SetpluginID(Index: Integer; const Astring: string);
begin
  FpluginID := Astring;
  FpluginID_Specified := True;
end;

function ExportMessageRequest.pluginID_Specified(Index: Integer): boolean;
begin
  Result := FpluginID_Specified;
end;

procedure ExportMessageRequest.SetpluginParams(Index: Integer; const Astring: string);
begin
  FpluginParams := Astring;
  FpluginParams_Specified := True;
end;

function ExportMessageRequest.pluginParams_Specified(Index: Integer): boolean;
begin
  Result := FpluginParams_Specified;
end;

constructor GetStoryTypesMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetStoryTypesMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FstoryTypes);
  inherited Destroy;
end;

procedure GetStoryTypesMessageResponse.SetstoryTypes(Index: Integer; const AStoryTypeObjects2: StoryTypeObjects2);
begin
  FstoryTypes := AStoryTypeObjects2;
  FstoryTypes_Specified := True;
end;

function GetStoryTypesMessageResponse.storyTypes_Specified(Index: Integer): boolean;
begin
  Result := FstoryTypes_Specified;
end;

procedure GetStoryTypesMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetStoryTypesMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetStoryTypesMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetStoryTypesMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor SlaveDatabasesMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SlaveDatabasesMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fdatabases);
  inherited Destroy;
end;

procedure SlaveDatabasesMessageResponse.Setdatabases(Index: Integer; const ASlaveDatabaseObjects2: SlaveDatabaseObjects2);
begin
  Fdatabases := ASlaveDatabaseObjects2;
  Fdatabases_Specified := True;
end;

function SlaveDatabasesMessageResponse.databases_Specified(Index: Integer): boolean;
begin
  Result := Fdatabases_Specified;
end;

procedure SlaveDatabasesMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function SlaveDatabasesMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure SlaveDatabasesMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function SlaveDatabasesMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetNodesByTypeMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetNodesByTypeMessageResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fnodes)-1 do
    System.SysUtils.FreeAndNil(Fnodes[I]);
  System.SetLength(Fnodes, 0);
  inherited Destroy;
end;

procedure GetNodesByTypeMessageResponse.Setnodes(Index: Integer; const AArrayOfNode: ArrayOfNode);
begin
  Fnodes := AArrayOfNode;
  Fnodes_Specified := True;
end;

function GetNodesByTypeMessageResponse.nodes_Specified(Index: Integer): boolean;
begin
  Result := Fnodes_Specified;
end;

procedure GetNodesByTypeMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetNodesByTypeMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetNodesByTypeMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetNodesByTypeMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor ExportMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure ExportMessageResponse.SetresultXML(Index: Integer; const Astring: string);
begin
  FresultXML := Astring;
  FresultXML_Specified := True;
end;

function ExportMessageResponse.resultXML_Specified(Index: Integer): boolean;
begin
  Result := FresultXML_Specified;
end;

procedure ExportMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function ExportMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure ExportMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function ExportMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetEditorsMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetEditorsMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Feditors);
  inherited Destroy;
end;

procedure GetEditorsMessageResponse.Seteditors(Index: Integer; const AEditorObjects2: EditorObjects2);
begin
  Feditors := AEditorObjects2;
  Feditors_Specified := True;
end;

function GetEditorsMessageResponse.editors_Specified(Index: Integer): boolean;
begin
  Result := Feditors_Specified;
end;

procedure GetEditorsMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetEditorsMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetEditorsMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetEditorsMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetWorkflowStepMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetWorkflowStepMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetWorkflowStepMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetWorkflowStepMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetWorkflowStepMessageRequest.Setid(Index: Integer; const Aguid: guid);
begin
  Fid := Aguid;
  Fid_Specified := True;
end;

function GetWorkflowStepMessageRequest.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

constructor GetEditorMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetEditorMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetEditorMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetEditorMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetEditorMessageRequest.Setid(Index: Integer; const Aguid: guid);
begin
  Fid := Aguid;
  Fid_Specified := True;
end;

function GetEditorMessageRequest.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

constructor GetEditorMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetEditorMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Feditor);
  inherited Destroy;
end;

procedure GetEditorMessageResponse.Seteditor(Index: Integer; const AEditorObject2: EditorObject2);
begin
  Feditor := AEditorObject2;
  Feditor_Specified := True;
end;

function GetEditorMessageResponse.editor_Specified(Index: Integer): boolean;
begin
  Result := Feditor_Specified;
end;

procedure GetEditorMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetEditorMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetEditorMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetEditorMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetStoryTypeMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetStoryTypeMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetStoryTypeMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetStoryTypeMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetStoryTypeMessageRequest.Setid(Index: Integer; const Aguid: guid);
begin
  Fid := Aguid;
  Fid_Specified := True;
end;

function GetStoryTypeMessageRequest.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

constructor GetStoryTypeMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetStoryTypeMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FstoryType);
  inherited Destroy;
end;

procedure GetStoryTypeMessageResponse.SetstoryType(Index: Integer; const AStoryTypeObject2: StoryTypeObject2);
begin
  FstoryType := AStoryTypeObject2;
  FstoryType_Specified := True;
end;

function GetStoryTypeMessageResponse.storyType_Specified(Index: Integer): boolean;
begin
  Result := FstoryType_Specified;
end;

procedure GetStoryTypeMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetStoryTypeMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetStoryTypeMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetStoryTypeMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetWorkflowStepsMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetWorkflowStepsMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FworkflowSteps);
  inherited Destroy;
end;

procedure GetWorkflowStepsMessageResponse.SetworkflowSteps(Index: Integer; const AWorkflowStepObjects2: WorkflowStepObjects2);
begin
  FworkflowSteps := AWorkflowStepObjects2;
  FworkflowSteps_Specified := True;
end;

function GetWorkflowStepsMessageResponse.workflowSteps_Specified(Index: Integer): boolean;
begin
  Result := FworkflowSteps_Specified;
end;

procedure GetWorkflowStepsMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetWorkflowStepsMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetWorkflowStepsMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetWorkflowStepsMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetWorkflowStepMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetWorkflowStepMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FworkflowStep);
  inherited Destroy;
end;

procedure GetWorkflowStepMessageResponse.SetworkflowStep(Index: Integer; const AWorkflowStepObject2: WorkflowStepObject2);
begin
  FworkflowStep := AWorkflowStepObject2;
  FworkflowStep_Specified := True;
end;

function GetWorkflowStepMessageResponse.workflowStep_Specified(Index: Integer): boolean;
begin
  Result := FworkflowStep_Specified;
end;

procedure GetWorkflowStepMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetWorkflowStepMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetWorkflowStepMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetWorkflowStepMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor WriteLogMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure WriteLogMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function WriteLogMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure WriteLogMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function WriteLogMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor AsyncCopyNodeMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor AsyncCopyNodeMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FcommandContext);
  inherited Destroy;
end;

procedure AsyncCopyNodeMessageResponse.SetcommandContext(Index: Integer; const AAsyncCommandContext2: AsyncCommandContext2);
begin
  FcommandContext := AAsyncCommandContext2;
  FcommandContext_Specified := True;
end;

function AsyncCopyNodeMessageResponse.commandContext_Specified(Index: Integer): boolean;
begin
  Result := FcommandContext_Specified;
end;

procedure AsyncCopyNodeMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function AsyncCopyNodeMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure AsyncCopyNodeMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function AsyncCopyNodeMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetFilesPathMessageResponseEx.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetFilesPathMessageResponseEx.SetpathID(Index: Integer; const AInteger: Integer);
begin
  FpathID := AInteger;
  FpathID_Specified := True;
end;

function GetFilesPathMessageResponseEx.pathID_Specified(Index: Integer): boolean;
begin
  Result := FpathID_Specified;
end;

procedure GetFilesPathMessageResponseEx.SetfilePath(Index: Integer; const Astring: string);
begin
  FfilePath := Astring;
  FfilePath_Specified := True;
end;

function GetFilesPathMessageResponseEx.filePath_Specified(Index: Integer): boolean;
begin
  Result := FfilePath_Specified;
end;

procedure GetFilesPathMessageResponseEx.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetFilesPathMessageResponseEx.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetFilesPathMessageResponseEx.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetFilesPathMessageResponseEx.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor JobCreationInfoMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor JobCreationInfoMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Finfo);
  inherited Destroy;
end;

procedure JobCreationInfoMessageResponse.Setinfo(Index: Integer; const AJobCreationInfoObjects2: JobCreationInfoObjects2);
begin
  Finfo := AJobCreationInfoObjects2;
  Finfo_Specified := True;
end;

function JobCreationInfoMessageResponse.info_Specified(Index: Integer): boolean;
begin
  Result := Finfo_Specified;
end;

procedure JobCreationInfoMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function JobCreationInfoMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure JobCreationInfoMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function JobCreationInfoMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor NodesByFieldMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor NodesByFieldMessageResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fnodes)-1 do
    System.SysUtils.FreeAndNil(Fnodes[I]);
  System.SetLength(Fnodes, 0);
  inherited Destroy;
end;

procedure NodesByFieldMessageResponse.Setnodes(Index: Integer; const AArrayOfNode: ArrayOfNode);
begin
  Fnodes := AArrayOfNode;
  Fnodes_Specified := True;
end;

function NodesByFieldMessageResponse.nodes_Specified(Index: Integer): boolean;
begin
  Result := Fnodes_Specified;
end;

procedure NodesByFieldMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function NodesByFieldMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure NodesByFieldMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function NodesByFieldMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor NodesByFieldsMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor NodesByFieldsMessageResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fnodes)-1 do
    System.SysUtils.FreeAndNil(Fnodes[I]);
  System.SetLength(Fnodes, 0);
  inherited Destroy;
end;

procedure NodesByFieldsMessageResponse.Setnodes(Index: Integer; const AArrayOfNode: ArrayOfNode);
begin
  Fnodes := AArrayOfNode;
  Fnodes_Specified := True;
end;

function NodesByFieldsMessageResponse.nodes_Specified(Index: Integer): boolean;
begin
  Result := Fnodes_Specified;
end;

procedure NodesByFieldsMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function NodesByFieldsMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure NodesByFieldsMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function NodesByFieldsMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetAsyncCommandResultResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetAsyncCommandResultResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FcommandResult);
  inherited Destroy;
end;

procedure GetAsyncCommandResultResponse.SetcommandResult(Index: Integer; const AAsyncCommandResult2: AsyncCommandResult2);
begin
  FcommandResult := AAsyncCommandResult2;
  FcommandResult_Specified := True;
end;

function GetAsyncCommandResultResponse.commandResult_Specified(Index: Integer): boolean;
begin
  Result := FcommandResult_Specified;
end;

procedure GetAsyncCommandResultResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetAsyncCommandResultResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetAsyncCommandResultResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetAsyncCommandResultResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor ExecuteCommandsMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure ExecuteCommandsMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function ExecuteCommandsMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure ExecuteCommandsMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function ExecuteCommandsMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetFilesPathMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetFilesPathMessageResponse.SetpathID(Index: Integer; const AInteger: Integer);
begin
  FpathID := AInteger;
  FpathID_Specified := True;
end;

function GetFilesPathMessageResponse.pathID_Specified(Index: Integer): boolean;
begin
  Result := FpathID_Specified;
end;

procedure GetFilesPathMessageResponse.SetfilePath(Index: Integer; const Astring: string);
begin
  FfilePath := Astring;
  FfilePath_Specified := True;
end;

function GetFilesPathMessageResponse.filePath_Specified(Index: Integer): boolean;
begin
  Result := FfilePath_Specified;
end;

procedure GetFilesPathMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetFilesPathMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetFilesPathMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetFilesPathMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor TVFormatInfoMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TVFormatInfoMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Ftvformats);
  inherited Destroy;
end;

procedure TVFormatInfoMessageResponse.Settvformats(Index: Integer; const ATVFormatObjects2: TVFormatObjects2);
begin
  Ftvformats := ATVFormatObjects2;
  Ftvformats_Specified := True;
end;

function TVFormatInfoMessageResponse.tvformats_Specified(Index: Integer): boolean;
begin
  Result := Ftvformats_Specified;
end;

procedure TVFormatInfoMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function TVFormatInfoMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure TVFormatInfoMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function TVFormatInfoMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetMetadataMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetMetadataMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fmetadata);
  inherited Destroy;
end;

procedure GetMetadataMessageResponse.Setmetadata(Index: Integer; const AMetadataSetObject2: MetadataSetObject2);
begin
  Fmetadata := AMetadataSetObject2;
  Fmetadata_Specified := True;
end;

function GetMetadataMessageResponse.metadata_Specified(Index: Integer): boolean;
begin
  Result := Fmetadata_Specified;
end;

procedure GetMetadataMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetMetadataMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetMetadataMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetMetadataMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetJobsMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetJobsMessageResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fjobs)-1 do
    System.SysUtils.FreeAndNil(Fjobs[I]);
  System.SetLength(Fjobs, 0);
  inherited Destroy;
end;

procedure GetJobsMessageResponse.Setjobs(Index: Integer; const AArrayOfJobNode: ArrayOfJobNode);
begin
  Fjobs := AArrayOfJobNode;
  Fjobs_Specified := True;
end;

function GetJobsMessageResponse.jobs_Specified(Index: Integer): boolean;
begin
  Result := Fjobs_Specified;
end;

procedure GetJobsMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetJobsMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetJobsMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetJobsMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor SubTypeInfoMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SubTypeInfoMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fsubtypes);
  inherited Destroy;
end;

procedure SubTypeInfoMessageResponse.Setsubtypes(Index: Integer; const ASubTypeObjects2: SubTypeObjects2);
begin
  Fsubtypes := ASubTypeObjects2;
  Fsubtypes_Specified := True;
end;

function SubTypeInfoMessageResponse.subtypes_Specified(Index: Integer): boolean;
begin
  Result := Fsubtypes_Specified;
end;

procedure SubTypeInfoMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function SubTypeInfoMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure SubTypeInfoMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function SubTypeInfoMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor ColorMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor ColorMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresults);
  inherited Destroy;
end;

procedure ColorMessageResponse.SetTotal(Index: Integer; const AInteger: Integer);
begin
  FTotal := AInteger;
  FTotal_Specified := True;
end;

function ColorMessageResponse.Total_Specified(Index: Integer): boolean;
begin
  Result := FTotal_Specified;
end;

procedure ColorMessageResponse.Setresults(Index: Integer; const AColorParameterObjects2: ColorParameterObjects2);
begin
  Fresults := AColorParameterObjects2;
  Fresults_Specified := True;
end;

function ColorMessageResponse.results_Specified(Index: Integer): boolean;
begin
  Result := Fresults_Specified;
end;

procedure ColorMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function ColorMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure ColorMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function ColorMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetSessionsCountResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetSessionsCountResponse.SetTotal(Index: Integer; const AInteger: Integer);
begin
  FTotal := AInteger;
  FTotal_Specified := True;
end;

function GetSessionsCountResponse.Total_Specified(Index: Integer): boolean;
begin
  Result := FTotal_Specified;
end;

procedure GetSessionsCountResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetSessionsCountResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetSessionsCountResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetSessionsCountResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor LogTemplateMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor LogTemplateMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure LogTemplateMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function LogTemplateMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure LogTemplateMessageRequest.Setm_strName(Index: Integer; const Astring: string);
begin
  Fm_strName := Astring;
  Fm_strName_Specified := True;
end;

function LogTemplateMessageRequest.m_strName_Specified(Index: Integer): boolean;
begin
  Result := Fm_strName_Specified;
end;

constructor UserActionsMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UserActionsMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Factions);
  inherited Destroy;
end;

procedure UserActionsMessageResponse.SetTotal(Index: Integer; const AInteger: Integer);
begin
  FTotal := AInteger;
  FTotal_Specified := True;
end;

function UserActionsMessageResponse.Total_Specified(Index: Integer): boolean;
begin
  Result := FTotal_Specified;
end;

procedure UserActionsMessageResponse.Setactions(Index: Integer; const AUserActionObjects2: UserActionObjects2);
begin
  Factions := AUserActionObjects2;
  Factions_Specified := True;
end;

function UserActionsMessageResponse.actions_Specified(Index: Integer): boolean;
begin
  Result := Factions_Specified;
end;

procedure UserActionsMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function UserActionsMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure UserActionsMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function UserActionsMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor UserActionsMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UserActionsMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure UserActionsMessageRequest.SetUserName(Index: Integer; const Astring: string);
begin
  FUserName := Astring;
  FUserName_Specified := True;
end;

function UserActionsMessageRequest.UserName_Specified(Index: Integer): boolean;
begin
  Result := FUserName_Specified;
end;

procedure UserActionsMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function UserActionsMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure UserActionsMessageRequest.SetEnabled(Index: Integer; const AInteger: Integer);
begin
  FEnabled := AInteger;
  FEnabled_Specified := True;
end;

function UserActionsMessageRequest.Enabled_Specified(Index: Integer): boolean;
begin
  Result := FEnabled_Specified;
end;

constructor LogTemplateMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor LogTemplateMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresults);
  inherited Destroy;
end;

procedure LogTemplateMessageResponse.SetTotal(Index: Integer; const AInteger: Integer);
begin
  FTotal := AInteger;
  FTotal_Specified := True;
end;

function LogTemplateMessageResponse.Total_Specified(Index: Integer): boolean;
begin
  Result := FTotal_Specified;
end;

procedure LogTemplateMessageResponse.Setresults(Index: Integer; const ALogTemplateObjects2: LogTemplateObjects2);
begin
  Fresults := ALogTemplateObjects2;
  Fresults_Specified := True;
end;

function LogTemplateMessageResponse.results_Specified(Index: Integer): boolean;
begin
  Result := Fresults_Specified;
end;

procedure LogTemplateMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function LogTemplateMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure LogTemplateMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function LogTemplateMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor UpdateUnsubscribeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure UpdateUnsubscribeResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function UpdateUnsubscribeResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure UpdateUnsubscribeResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function UpdateUnsubscribeResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor UpdateSubscribeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure UpdateSubscribeResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function UpdateSubscribeResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure UpdateSubscribeResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function UpdateSubscribeResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GPMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GPMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresults);
  inherited Destroy;
end;

procedure GPMessageResponse.SetTotal(Index: Integer; const AInteger: Integer);
begin
  FTotal := AInteger;
  FTotal_Specified := True;
end;

function GPMessageResponse.Total_Specified(Index: Integer): boolean;
begin
  Result := FTotal_Specified;
end;

procedure GPMessageResponse.Setresults(Index: Integer; const AGlobalParameterObjects2: GlobalParameterObjects2);
begin
  Fresults := AGlobalParameterObjects2;
  Fresults_Specified := True;
end;

function GPMessageResponse.results_Specified(Index: Integer): boolean;
begin
  Result := Fresults_Specified;
end;

procedure GPMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GPMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GPMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GPMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GPMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GPMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GPMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GPMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GPMessageRequest.Setm_strGPName(Index: Integer; const Astring: string);
begin
  Fm_strGPName := Astring;
  Fm_strGPName_Specified := True;
end;

function GPMessageRequest.m_strGPName_Specified(Index: Integer): boolean;
begin
  Result := Fm_strGPName_Specified;
end;

constructor GetUpdatesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetUpdatesResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fupdates)-1 do
    System.SysUtils.FreeAndNil(Fupdates[I]);
  System.SetLength(Fupdates, 0);
  inherited Destroy;
end;

procedure GetUpdatesResponse.Setupdates(Index: Integer; const AArrayOfBaseUpdate: ArrayOfBaseUpdate);
begin
  Fupdates := AArrayOfBaseUpdate;
  Fupdates_Specified := True;
end;

function GetUpdatesResponse.updates_Specified(Index: Integer): boolean;
begin
  Result := Fupdates_Specified;
end;

procedure GetUpdatesResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetUpdatesResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetUpdatesResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetUpdatesResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor NodeChildrenIDsMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor NodeChildrenIDsMessageResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FnodeIDs)-1 do
    System.SysUtils.FreeAndNil(FnodeIDs[I]);
  System.SetLength(FnodeIDs, 0);
  inherited Destroy;
end;

procedure NodeChildrenIDsMessageResponse.SetnodeIDs(Index: Integer; const AArrayOfNodeBase: ArrayOfNodeBase);
begin
  FnodeIDs := AArrayOfNodeBase;
  FnodeIDs_Specified := True;
end;

function NodeChildrenIDsMessageResponse.nodeIDs_Specified(Index: Integer): boolean;
begin
  Result := FnodeIDs_Specified;
end;

procedure NodeChildrenIDsMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function NodeChildrenIDsMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure NodeChildrenIDsMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function NodeChildrenIDsMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor NodeMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor NodeMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure NodeMessageResponse.Setnode(Index: Integer; const ANode2: Node2);
begin
  Fnode := ANode2;
  Fnode_Specified := True;
end;

function NodeMessageResponse.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure NodeMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function NodeMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure NodeMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function NodeMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor NodeChildrenMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor NodeChildrenMessageResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fnodes)-1 do
    System.SysUtils.FreeAndNil(Fnodes[I]);
  System.SetLength(Fnodes, 0);
  inherited Destroy;
end;

procedure NodeChildrenMessageResponse.Setnodes(Index: Integer; const AArrayOfNode: ArrayOfNode);
begin
  Fnodes := AArrayOfNode;
  Fnodes_Specified := True;
end;

function NodeChildrenMessageResponse.nodes_Specified(Index: Integer): boolean;
begin
  Result := Fnodes_Specified;
end;

procedure NodeChildrenMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function NodeChildrenMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure NodeChildrenMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function NodeChildrenMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor DisconnectMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DisconnectMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure DisconnectMessageResponse.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function DisconnectMessageResponse.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure DisconnectMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function DisconnectMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure DisconnectMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function DisconnectMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor ConnectMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor ConnectMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure ConnectMessageResponse.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function ConnectMessageResponse.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure ConnectMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function ConnectMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure ConnectMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function ConnectMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor SearchNewsMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SearchNewsMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure SearchNewsMessageRequest.SetSearchQuery(Index: Integer; const Astring: string);
begin
  FSearchQuery := Astring;
  FSearchQuery_Specified := True;
end;

function SearchNewsMessageRequest.SearchQuery_Specified(Index: Integer): boolean;
begin
  Result := FSearchQuery_Specified;
end;

procedure SearchNewsMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function SearchNewsMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

constructor SearchNewsListMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SearchNewsListMessageResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fresults)-1 do
    System.SysUtils.FreeAndNil(Fresults[I]);
  System.SetLength(Fresults, 0);
  inherited Destroy;
end;

procedure SearchNewsListMessageResponse.SetTotal(Index: Integer; const AInteger: Integer);
begin
  FTotal := AInteger;
  FTotal_Specified := True;
end;

function SearchNewsListMessageResponse.Total_Specified(Index: Integer): boolean;
begin
  Result := FTotal_Specified;
end;

procedure SearchNewsListMessageResponse.Setresults(Index: Integer; const AArrayOfSearchNodesListResult: ArrayOfSearchNodesListResult);
begin
  Fresults := AArrayOfSearchNodesListResult;
  Fresults_Specified := True;
end;

function SearchNewsListMessageResponse.results_Specified(Index: Integer): boolean;
begin
  Result := Fresults_Specified;
end;

procedure SearchNewsListMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function SearchNewsListMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure SearchNewsListMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function SearchNewsListMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor Search2MessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor Search2MessageResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fresults)-1 do
    System.SysUtils.FreeAndNil(Fresults[I]);
  System.SetLength(Fresults, 0);
  inherited Destroy;
end;

procedure Search2MessageResponse.SetTotal(Index: Integer; const AInteger: Integer);
begin
  FTotal := AInteger;
  FTotal_Specified := True;
end;

function Search2MessageResponse.Total_Specified(Index: Integer): boolean;
begin
  Result := FTotal_Specified;
end;

procedure Search2MessageResponse.Setresults(Index: Integer; const AArrayOfSearch2Result: ArrayOfSearch2Result);
begin
  Fresults := AArrayOfSearch2Result;
  Fresults_Specified := True;
end;

function Search2MessageResponse.results_Specified(Index: Integer): boolean;
begin
  Result := Fresults_Specified;
end;

procedure Search2MessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function Search2MessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure Search2MessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function Search2MessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor SearchListMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SearchListMessageResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fresults)-1 do
    System.SysUtils.FreeAndNil(Fresults[I]);
  System.SetLength(Fresults, 0);
  inherited Destroy;
end;

procedure SearchListMessageResponse.SetTotal(Index: Integer; const AInteger: Integer);
begin
  FTotal := AInteger;
  FTotal_Specified := True;
end;

function SearchListMessageResponse.Total_Specified(Index: Integer): boolean;
begin
  Result := FTotal_Specified;
end;

procedure SearchListMessageResponse.Setresults(Index: Integer; const AArrayOfSearchListResult: ArrayOfSearchListResult);
begin
  Fresults := AArrayOfSearchListResult;
  Fresults_Specified := True;
end;

function SearchListMessageResponse.results_Specified(Index: Integer): boolean;
begin
  Result := Fresults_Specified;
end;

procedure SearchListMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function SearchListMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure SearchListMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function SearchListMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor SearchMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SearchMessageResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fresults)-1 do
    System.SysUtils.FreeAndNil(Fresults[I]);
  System.SetLength(Fresults, 0);
  inherited Destroy;
end;

procedure SearchMessageResponse.SetTotal(Index: Integer; const AInteger: Integer);
begin
  FTotal := AInteger;
  FTotal_Specified := True;
end;

function SearchMessageResponse.Total_Specified(Index: Integer): boolean;
begin
  Result := FTotal_Specified;
end;

procedure SearchMessageResponse.Setresults(Index: Integer; const AArrayOfSearchResult: ArrayOfSearchResult);
begin
  Fresults := AArrayOfSearchResult;
  Fresults_Specified := True;
end;

function SearchMessageResponse.results_Specified(Index: Integer): boolean;
begin
  Result := Fresults_Specified;
end;

procedure SearchMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function SearchMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure SearchMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function SearchMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetNodeMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetNodeMessageResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetNodeMessageResponse.Setnode(Index: Integer; const ANode2: Node2);
begin
  Fnode := ANode2;
  Fnode_Specified := True;
end;

function GetNodeMessageResponse.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetNodeMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetNodeMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetNodeMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetNodeMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor GetFilesPathMessageRequestEx.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetFilesPathMessageRequestEx.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetFilesPathMessageRequestEx.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetFilesPathMessageRequestEx.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetFilesPathMessageRequestEx.SetfileType(Index: Integer; const AMAM_FILE_TYPES: MAM_FILE_TYPES);
begin
  FfileType := AMAM_FILE_TYPES;
  FfileType_Specified := True;
end;

function GetFilesPathMessageRequestEx.fileType_Specified(Index: Integer): boolean;
begin
  Result := FfileType_Specified;
end;

procedure GetFilesPathMessageRequestEx.SetauxFileType(Index: Integer; const Astring: string);
begin
  FauxFileType := Astring;
  FauxFileType_Specified := True;
end;

function GetFilesPathMessageRequestEx.auxFileType_Specified(Index: Integer): boolean;
begin
  Result := FauxFileType_Specified;
end;

procedure GetFilesPathMessageRequestEx.Setquality(Index: Integer; const AInteger: Integer);
begin
  Fquality := AInteger;
  Fquality_Specified := True;
end;

function GetFilesPathMessageRequestEx.quality_Specified(Index: Integer): boolean;
begin
  Result := Fquality_Specified;
end;

procedure GetFilesPathMessageRequestEx.SetisUseDegradation(Index: Integer; const ABoolean: Boolean);
begin
  FisUseDegradation := ABoolean;
  FisUseDegradation_Specified := True;
end;

function GetFilesPathMessageRequestEx.isUseDegradation_Specified(Index: Integer): boolean;
begin
  Result := FisUseDegradation_Specified;
end;

procedure GetFilesPathMessageRequestEx.SetmediaGroupId(Index: Integer; const AInteger: Integer);
begin
  FmediaGroupId := AInteger;
  FmediaGroupId_Specified := True;
end;

function GetFilesPathMessageRequestEx.mediaGroupId_Specified(Index: Integer): boolean;
begin
  Result := FmediaGroupId_Specified;
end;

constructor GetFilesPathMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetFilesPathMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure GetFilesPathMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetFilesPathMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetFilesPathMessageRequest.SetfileType(Index: Integer; const AMAM_FILE_TYPES: MAM_FILE_TYPES);
begin
  FfileType := AMAM_FILE_TYPES;
  FfileType_Specified := True;
end;

function GetFilesPathMessageRequest.fileType_Specified(Index: Integer): boolean;
begin
  Result := FfileType_Specified;
end;

procedure GetFilesPathMessageRequest.SetauxFileType(Index: Integer; const Astring: string);
begin
  FauxFileType := Astring;
  FauxFileType_Specified := True;
end;

function GetFilesPathMessageRequest.auxFileType_Specified(Index: Integer): boolean;
begin
  Result := FauxFileType_Specified;
end;

procedure GetFilesPathMessageRequest.Setquality(Index: Integer; const AInteger: Integer);
begin
  Fquality := AInteger;
  Fquality_Specified := True;
end;

function GetFilesPathMessageRequest.quality_Specified(Index: Integer): boolean;
begin
  Result := Fquality_Specified;
end;

procedure GetFilesPathMessageRequest.SetisUseDegradation(Index: Integer; const ABoolean: Boolean);
begin
  FisUseDegradation := ABoolean;
  FisUseDegradation_Specified := True;
end;

function GetFilesPathMessageRequest.isUseDegradation_Specified(Index: Integer): boolean;
begin
  Result := FisUseDegradation_Specified;
end;

procedure GetFilesPathMessageRequest.SetisArchive(Index: Integer; const ABoolean: Boolean);
begin
  FisArchive := ABoolean;
  FisArchive_Specified := True;
end;

function GetFilesPathMessageRequest.isArchive_Specified(Index: Integer): boolean;
begin
  Result := FisArchive_Specified;
end;

constructor ConnectMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure ConnectMessageRequest.Setserver(Index: Integer; const Astring: string);
begin
  Fserver := Astring;
  Fserver_Specified := True;
end;

function ConnectMessageRequest.server_Specified(Index: Integer): boolean;
begin
  Result := Fserver_Specified;
end;

procedure ConnectMessageRequest.Setport(Index: Integer; const AInteger: Integer);
begin
  Fport := AInteger;
  Fport_Specified := True;
end;

function ConnectMessageRequest.port_Specified(Index: Integer): boolean;
begin
  Result := Fport_Specified;
end;

procedure ConnectMessageRequest.Setdatabase(Index: Integer; const Astring: string);
begin
  Fdatabase := Astring;
  Fdatabase_Specified := True;
end;

function ConnectMessageRequest.database_Specified(Index: Integer): boolean;
begin
  Result := Fdatabase_Specified;
end;

procedure ConnectMessageRequest.SetconnectionType(Index: Integer; const AConnectionType: ConnectionType);
begin
  FconnectionType := AConnectionType;
  FconnectionType_Specified := True;
end;

function ConnectMessageRequest.connectionType_Specified(Index: Integer): boolean;
begin
  Result := FconnectionType_Specified;
end;

procedure ConnectMessageRequest.Setusername(Index: Integer; const Astring: string);
begin
  Fusername := Astring;
  Fusername_Specified := True;
end;

function ConnectMessageRequest.username_Specified(Index: Integer): boolean;
begin
  Result := Fusername_Specified;
end;

procedure ConnectMessageRequest.Setpassword(Index: Integer; const Astring: string);
begin
  Fpassword := Astring;
  Fpassword_Specified := True;
end;

function ConnectMessageRequest.password_Specified(Index: Integer): boolean;
begin
  Result := Fpassword_Specified;
end;

procedure ConnectMessageRequest.Setapplication_(Index: Integer; const Astring: string);
begin
  Fapplication_ := Astring;
  Fapplication__Specified := True;
end;

function ConnectMessageRequest.application__Specified(Index: Integer): boolean;
begin
  Result := Fapplication__Specified;
end;

procedure ConnectMessageRequest.Setdomain(Index: Integer; const Astring: string);
begin
  Fdomain := Astring;
  Fdomain_Specified := True;
end;

function ConnectMessageRequest.domain_Specified(Index: Integer): boolean;
begin
  Result := Fdomain_Specified;
end;

procedure ConnectMessageRequest.Setwrapper(Index: Integer; const AWrapperType: WrapperType);
begin
  Fwrapper := AWrapperType;
  Fwrapper_Specified := True;
end;

function ConnectMessageRequest.wrapper_Specified(Index: Integer): boolean;
begin
  Result := Fwrapper_Specified;
end;

constructor GetParentByTypeMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetParentByTypeMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetParentByTypeMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetParentByTypeMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetParentByTypeMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function GetParentByTypeMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetParentByTypeMessageRequest.Settype_(Index: Integer; const ANODE_TYPE: NODE_TYPE);
begin
  Ftype_ := ANODE_TYPE;
  Ftype__Specified := True;
end;

function GetParentByTypeMessageRequest.type__Specified(Index: Integer): boolean;
begin
  Result := Ftype__Specified;
end;

procedure GetParentByTypeMessageRequest.Setsubtype(Index: Integer; const AInteger: Integer);
begin
  Fsubtype := AInteger;
  Fsubtype_Specified := True;
end;

function GetParentByTypeMessageRequest.subtype_Specified(Index: Integer): boolean;
begin
  Result := Fsubtype_Specified;
end;

procedure GetParentByTypeMessageRequest.SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
begin
  FnodeFillingType := ANodeFillingType;
  FnodeFillingType_Specified := True;
end;

function GetParentByTypeMessageRequest.nodeFillingType_Specified(Index: Integer): boolean;
begin
  Result := FnodeFillingType_Specified;
end;

constructor CreateNodeByNodeMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CreateNodeByNodeMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  System.SysUtils.FreeAndNil(FdstParent);
  System.SysUtils.FreeAndNil(Fproperties);
  System.SysUtils.FreeAndNil(FinsertPosition);
  inherited Destroy;
end;

procedure CreateNodeByNodeMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function CreateNodeByNodeMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure CreateNodeByNodeMessageRequest.Setnode(Index: Integer; const ANode2: Node2);
begin
  Fnode := ANode2;
  Fnode_Specified := True;
end;

function CreateNodeByNodeMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure CreateNodeByNodeMessageRequest.SetnewNodeType(Index: Integer; const ANODE_TYPE: NODE_TYPE);
begin
  FnewNodeType := ANODE_TYPE;
  FnewNodeType_Specified := True;
end;

function CreateNodeByNodeMessageRequest.newNodeType_Specified(Index: Integer): boolean;
begin
  Result := FnewNodeType_Specified;
end;

procedure CreateNodeByNodeMessageRequest.SetnewNodeSubType(Index: Integer; const AInteger: Integer);
begin
  FnewNodeSubType := AInteger;
  FnewNodeSubType_Specified := True;
end;

function CreateNodeByNodeMessageRequest.newNodeSubType_Specified(Index: Integer): boolean;
begin
  Result := FnewNodeSubType_Specified;
end;

procedure CreateNodeByNodeMessageRequest.SetdstParent(Index: Integer; const ANodeBase2: NodeBase2);
begin
  FdstParent := ANodeBase2;
  FdstParent_Specified := True;
end;

function CreateNodeByNodeMessageRequest.dstParent_Specified(Index: Integer): boolean;
begin
  Result := FdstParent_Specified;
end;

procedure CreateNodeByNodeMessageRequest.Setproperties(Index: Integer; const APropertySetObject2: PropertySetObject2);
begin
  Fproperties := APropertySetObject2;
  Fproperties_Specified := True;
end;

function CreateNodeByNodeMessageRequest.properties_Specified(Index: Integer): boolean;
begin
  Result := Fproperties_Specified;
end;

procedure CreateNodeByNodeMessageRequest.SetinsertPosition(Index: Integer; const ANodeBase2: NodeBase2);
begin
  FinsertPosition := ANodeBase2;
  FinsertPosition_Specified := True;
end;

function CreateNodeByNodeMessageRequest.insertPosition_Specified(Index: Integer): boolean;
begin
  Result := FinsertPosition_Specified;
end;

procedure CreateNodeByNodeMessageRequest.SetinsertBefore(Index: Integer; const ABoolean: Boolean);
begin
  FinsertBefore := ABoolean;
  FinsertBefore_Specified := True;
end;

function CreateNodeByNodeMessageRequest.insertBefore_Specified(Index: Integer): boolean;
begin
  Result := FinsertBefore_Specified;
end;

constructor IsHasChildrenMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor IsHasChildrenMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fparent);
  inherited Destroy;
end;

procedure IsHasChildrenMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function IsHasChildrenMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure IsHasChildrenMessageRequest.Setparent(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fparent := ANodeBase2;
  Fparent_Specified := True;
end;

function IsHasChildrenMessageRequest.parent_Specified(Index: Integer): boolean;
begin
  Result := Fparent_Specified;
end;

procedure IsHasChildrenMessageRequest.Settype_(Index: Integer; const ANODE_TYPE: NODE_TYPE);
begin
  Ftype_ := ANODE_TYPE;
  Ftype__Specified := True;
end;

function IsHasChildrenMessageRequest.type__Specified(Index: Integer): boolean;
begin
  Result := Ftype__Specified;
end;

procedure IsHasChildrenMessageRequest.Setsubtype(Index: Integer; const AInteger: Integer);
begin
  Fsubtype := AInteger;
  Fsubtype_Specified := True;
end;

function IsHasChildrenMessageRequest.subtype_Specified(Index: Integer): boolean;
begin
  Result := Fsubtype_Specified;
end;

constructor GetNodeIDsByTypeMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetNodeIDsByTypeMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetNodeIDsByTypeMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetNodeIDsByTypeMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetNodeIDsByTypeMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function GetNodeIDsByTypeMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetNodeIDsByTypeMessageRequest.SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
begin
  FrequestType := AGET_NODE_REQUEST_TYPE;
  FrequestType_Specified := True;
end;

function GetNodeIDsByTypeMessageRequest.requestType_Specified(Index: Integer): boolean;
begin
  Result := FrequestType_Specified;
end;

procedure GetNodeIDsByTypeMessageRequest.SetType_(Index: Integer; const ANODE_TYPE: NODE_TYPE);
begin
  FType_ := ANODE_TYPE;
  FType__Specified := True;
end;

function GetNodeIDsByTypeMessageRequest.Type__Specified(Index: Integer): boolean;
begin
  Result := FType__Specified;
end;

procedure GetNodeIDsByTypeMessageRequest.SetSubType(Index: Integer; const AInteger: Integer);
begin
  FSubType := AInteger;
  FSubType_Specified := True;
end;

function GetNodeIDsByTypeMessageRequest.SubType_Specified(Index: Integer): boolean;
begin
  Result := FSubType_Specified;
end;

constructor GetNodesCountMessageRequestEx.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetNodesCountMessageRequestEx.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetNodesCountMessageRequestEx.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetNodesCountMessageRequestEx.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetNodesCountMessageRequestEx.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function GetNodesCountMessageRequestEx.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetNodesCountMessageRequestEx.SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
begin
  FrequestType := AGET_NODE_REQUEST_TYPE;
  FrequestType_Specified := True;
end;

function GetNodesCountMessageRequestEx.requestType_Specified(Index: Integer): boolean;
begin
  Result := FrequestType_Specified;
end;

procedure GetNodesCountMessageRequestEx.Settype_(Index: Integer; const ANODE_TYPE: NODE_TYPE);
begin
  Ftype_ := ANODE_TYPE;
  Ftype__Specified := True;
end;

function GetNodesCountMessageRequestEx.type__Specified(Index: Integer): boolean;
begin
  Result := Ftype__Specified;
end;

procedure GetNodesCountMessageRequestEx.Setsubtype(Index: Integer; const AInteger: Integer);
begin
  Fsubtype := AInteger;
  Fsubtype_Specified := True;
end;

function GetNodesCountMessageRequestEx.subtype_Specified(Index: Integer): boolean;
begin
  Result := Fsubtype_Specified;
end;

constructor GetNodesByTypeMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetNodesByTypeMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetNodesByTypeMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetNodesByTypeMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetNodesByTypeMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function GetNodesByTypeMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetNodesByTypeMessageRequest.SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
begin
  FrequestType := AGET_NODE_REQUEST_TYPE;
  FrequestType_Specified := True;
end;

function GetNodesByTypeMessageRequest.requestType_Specified(Index: Integer): boolean;
begin
  Result := FrequestType_Specified;
end;

procedure GetNodesByTypeMessageRequest.SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
begin
  FnodeFillingType := ANodeFillingType;
  FnodeFillingType_Specified := True;
end;

function GetNodesByTypeMessageRequest.nodeFillingType_Specified(Index: Integer): boolean;
begin
  Result := FnodeFillingType_Specified;
end;

procedure GetNodesByTypeMessageRequest.SetType_(Index: Integer; const ANODE_TYPE: NODE_TYPE);
begin
  FType_ := ANODE_TYPE;
  FType__Specified := True;
end;

function GetNodesByTypeMessageRequest.Type__Specified(Index: Integer): boolean;
begin
  Result := FType__Specified;
end;

procedure GetNodesByTypeMessageRequest.SetSubType(Index: Integer; const AInteger: Integer);
begin
  FSubType := AInteger;
  FSubType_Specified := True;
end;

function GetNodesByTypeMessageRequest.SubType_Specified(Index: Integer): boolean;
begin
  Result := FSubType_Specified;
end;

constructor NodesByFieldsMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor NodesByFieldsMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fproperties);
  inherited Destroy;
end;

procedure NodesByFieldsMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function NodesByFieldsMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure NodesByFieldsMessageRequest.Settype_(Index: Integer; const ANODE_TYPE: NODE_TYPE);
begin
  Ftype_ := ANODE_TYPE;
  Ftype__Specified := True;
end;

function NodesByFieldsMessageRequest.type__Specified(Index: Integer): boolean;
begin
  Result := Ftype__Specified;
end;

procedure NodesByFieldsMessageRequest.Setproperties(Index: Integer; const APropertySetObject2: PropertySetObject2);
begin
  Fproperties := APropertySetObject2;
  Fproperties_Specified := True;
end;

function NodesByFieldsMessageRequest.properties_Specified(Index: Integer): boolean;
begin
  Result := Fproperties_Specified;
end;

procedure NodesByFieldsMessageRequest.SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
begin
  FrequestType := AGET_NODE_REQUEST_TYPE;
  FrequestType_Specified := True;
end;

function NodesByFieldsMessageRequest.requestType_Specified(Index: Integer): boolean;
begin
  Result := FrequestType_Specified;
end;

procedure NodesByFieldsMessageRequest.SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
begin
  FnodeFillingType := ANodeFillingType;
  FnodeFillingType_Specified := True;
end;

function NodesByFieldsMessageRequest.nodeFillingType_Specified(Index: Integer): boolean;
begin
  Result := FnodeFillingType_Specified;
end;

procedure NodesByFieldsMessageRequest.Setsubtype(Index: Integer; const AInteger: Integer);
begin
  Fsubtype := AInteger;
  Fsubtype_Specified := True;
end;

function NodesByFieldsMessageRequest.subtype_Specified(Index: Integer): boolean;
begin
  Result := Fsubtype_Specified;
end;

constructor DescriptorsMessageRequestEx.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DescriptorsMessageRequestEx.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure DescriptorsMessageRequestEx.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function DescriptorsMessageRequestEx.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure DescriptorsMessageRequestEx.SetnodeType(Index: Integer; const ANODE_TYPE: NODE_TYPE);
begin
  FnodeType := ANODE_TYPE;
  FnodeType_Specified := True;
end;

function DescriptorsMessageRequestEx.nodeType_Specified(Index: Integer): boolean;
begin
  Result := FnodeType_Specified;
end;

procedure DescriptorsMessageRequestEx.SetnodeSubType(Index: Integer; const AInteger: Integer);
begin
  FnodeSubType := AInteger;
  FnodeSubType_Specified := True;
end;

function DescriptorsMessageRequestEx.nodeSubType_Specified(Index: Integer): boolean;
begin
  Result := FnodeSubType_Specified;
end;

procedure DescriptorsMessageRequestEx.SetisGrouped(Index: Integer; const ABoolean: Boolean);
begin
  FisGrouped := ABoolean;
  FisGrouped_Specified := True;
end;

function DescriptorsMessageRequestEx.isGrouped_Specified(Index: Integer): boolean;
begin
  Result := FisGrouped_Specified;
end;

procedure DescriptorsMessageRequestEx.Setmask1(Index: Integer; const ACardinal: Cardinal);
begin
  Fmask1 := ACardinal;
  Fmask1_Specified := True;
end;

function DescriptorsMessageRequestEx.mask1_Specified(Index: Integer): boolean;
begin
  Result := Fmask1_Specified;
end;

procedure DescriptorsMessageRequestEx.Setmask2(Index: Integer; const ACardinal: Cardinal);
begin
  Fmask2 := ACardinal;
  Fmask2_Specified := True;
end;

function DescriptorsMessageRequestEx.mask2_Specified(Index: Integer): boolean;
begin
  Result := Fmask2_Specified;
end;

procedure DescriptorsMessageRequestEx.Settemplate(Index: Integer; const Aguid: guid);
begin
  Ftemplate := Aguid;
  Ftemplate_Specified := True;
end;

function DescriptorsMessageRequestEx.template_Specified(Index: Integer): boolean;
begin
  Result := Ftemplate_Specified;
end;

procedure DescriptorsMessageRequestEx.SetisAdditionalDesc(Index: Integer; const ABoolean: Boolean);
begin
  FisAdditionalDesc := ABoolean;
  FisAdditionalDesc_Specified := True;
end;

function DescriptorsMessageRequestEx.isAdditionalDesc_Specified(Index: Integer): boolean;
begin
  Result := FisAdditionalDesc_Specified;
end;

constructor NodesByFieldMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor NodesByFieldMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fproperty_);
  System.SysUtils.FreeAndNil(Fparent);
  inherited Destroy;
end;

procedure NodesByFieldMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function NodesByFieldMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure NodesByFieldMessageRequest.Settype_(Index: Integer; const ANODE_TYPE: NODE_TYPE);
begin
  Ftype_ := ANODE_TYPE;
  Ftype__Specified := True;
end;

function NodesByFieldMessageRequest.type__Specified(Index: Integer): boolean;
begin
  Result := Ftype__Specified;
end;

procedure NodesByFieldMessageRequest.Setsubtype(Index: Integer; const AInteger: Integer);
begin
  Fsubtype := AInteger;
  Fsubtype_Specified := True;
end;

function NodesByFieldMessageRequest.subtype_Specified(Index: Integer): boolean;
begin
  Result := Fsubtype_Specified;
end;

procedure NodesByFieldMessageRequest.Setproperty_(Index: Integer; const APropertyObject2: PropertyObject2);
begin
  Fproperty_ := APropertyObject2;
  Fproperty__Specified := True;
end;

function NodesByFieldMessageRequest.property__Specified(Index: Integer): boolean;
begin
  Result := Fproperty__Specified;
end;

procedure NodesByFieldMessageRequest.SetrequestType(Index: Integer; const AGET_NODE_REQUEST_TYPE: GET_NODE_REQUEST_TYPE);
begin
  FrequestType := AGET_NODE_REQUEST_TYPE;
  FrequestType_Specified := True;
end;

function NodesByFieldMessageRequest.requestType_Specified(Index: Integer): boolean;
begin
  Result := FrequestType_Specified;
end;

procedure NodesByFieldMessageRequest.SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
begin
  FnodeFillingType := ANodeFillingType;
  FnodeFillingType_Specified := True;
end;

function NodesByFieldMessageRequest.nodeFillingType_Specified(Index: Integer): boolean;
begin
  Result := FnodeFillingType_Specified;
end;

procedure NodesByFieldMessageRequest.Setparent(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fparent := ANodeBase2;
  Fparent_Specified := True;
end;

function NodesByFieldMessageRequest.parent_Specified(Index: Integer): boolean;
begin
  Result := Fparent_Specified;
end;

procedure NodesByFieldMessageRequest.Setlevel(Index: Integer; const AInteger: Integer);
begin
  Flevel := AInteger;
  Flevel_Specified := True;
end;

function NodesByFieldMessageRequest.level_Specified(Index: Integer): boolean;
begin
  Result := Flevel_Specified;
end;

procedure NodesByFieldMessageRequest.SetsearchType(Index: Integer; const AInteger: Integer);
begin
  FsearchType := AInteger;
  FsearchType_Specified := True;
end;

function NodesByFieldMessageRequest.searchType_Specified(Index: Integer): boolean;
begin
  Result := FsearchType_Specified;
end;

constructor DescriptorsMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DescriptorsMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  inherited Destroy;
end;

procedure DescriptorsMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function DescriptorsMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure DescriptorsMessageRequest.SetnodeType(Index: Integer; const ANODE_TYPE: NODE_TYPE);
begin
  FnodeType := ANODE_TYPE;
  FnodeType_Specified := True;
end;

function DescriptorsMessageRequest.nodeType_Specified(Index: Integer): boolean;
begin
  Result := FnodeType_Specified;
end;

procedure DescriptorsMessageRequest.SetnodeSubType(Index: Integer; const AInteger: Integer);
begin
  FnodeSubType := AInteger;
  FnodeSubType_Specified := True;
end;

function DescriptorsMessageRequest.nodeSubType_Specified(Index: Integer): boolean;
begin
  Result := FnodeSubType_Specified;
end;

procedure DescriptorsMessageRequest.SetisGrouped(Index: Integer; const ABoolean: Boolean);
begin
  FisGrouped := ABoolean;
  FisGrouped_Specified := True;
end;

function DescriptorsMessageRequest.isGrouped_Specified(Index: Integer): boolean;
begin
  Result := FisGrouped_Specified;
end;

procedure DescriptorsMessageRequest.Setmask1(Index: Integer; const ACardinal: Cardinal);
begin
  Fmask1 := ACardinal;
  Fmask1_Specified := True;
end;

function DescriptorsMessageRequest.mask1_Specified(Index: Integer): boolean;
begin
  Result := Fmask1_Specified;
end;

procedure DescriptorsMessageRequest.Setmask2(Index: Integer; const ACardinal: Cardinal);
begin
  Fmask2 := ACardinal;
  Fmask2_Specified := True;
end;

function DescriptorsMessageRequest.mask2_Specified(Index: Integer): boolean;
begin
  Result := Fmask2_Specified;
end;

procedure DescriptorsMessageRequest.Settemplate(Index: Integer; const Aguid: guid);
begin
  Ftemplate := Aguid;
  Ftemplate_Specified := True;
end;

function DescriptorsMessageRequest.template_Specified(Index: Integer): boolean;
begin
  Result := Ftemplate_Specified;
end;

constructor GetParentByTypesMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetParentByTypesMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetParentByTypesMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetParentByTypesMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetParentByTypesMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function GetParentByTypesMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetParentByTypesMessageRequest.Settypes(Index: Integer; const AArrayOfNODE_TYPE: ArrayOfNODE_TYPE);
begin
  Ftypes := AArrayOfNODE_TYPE;
  Ftypes_Specified := True;
end;

function GetParentByTypesMessageRequest.types_Specified(Index: Integer): boolean;
begin
  Result := Ftypes_Specified;
end;

procedure GetParentByTypesMessageRequest.SetnodeFillingType(Index: Integer; const ANodeFillingType: NodeFillingType);
begin
  FnodeFillingType := ANodeFillingType;
  FnodeFillingType_Specified := True;
end;

function GetParentByTypesMessageRequest.nodeFillingType_Specified(Index: Integer): boolean;
begin
  Result := FnodeFillingType_Specified;
end;

constructor GetJobsMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetJobsMessageRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure GetJobsMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function GetJobsMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure GetJobsMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function GetJobsMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure GetJobsMessageRequest.Setfilter(Index: Integer; const AArrayOfJobStatus: ArrayOfJobStatus);
begin
  Ffilter := AArrayOfJobStatus;
  Ffilter_Specified := True;
end;

function GetJobsMessageRequest.filter_Specified(Index: Integer): boolean;
begin
  Result := Ffilter_Specified;
end;

constructor DescriptorsMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DescriptorsMessageResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fdescriptors)-1 do
    System.SysUtils.FreeAndNil(Fdescriptors[I]);
  System.SetLength(Fdescriptors, 0);
  inherited Destroy;
end;

procedure DescriptorsMessageResponse.Setdescriptors(Index: Integer; const AArrayOfDescriptorBase: ArrayOfDescriptorBase);
begin
  Fdescriptors := AArrayOfDescriptorBase;
  Fdescriptors_Specified := True;
end;

function DescriptorsMessageResponse.descriptors_Specified(Index: Integer): boolean;
begin
  Result := Fdescriptors_Specified;
end;

procedure DescriptorsMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function DescriptorsMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure DescriptorsMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function DescriptorsMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

destructor DescriptorBase2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fchildren)-1 do
    System.SysUtils.FreeAndNil(Fchildren[I]);
  System.SetLength(Fchildren, 0);
  System.SysUtils.FreeAndNil(FID);
  inherited Destroy;
end;

destructor Presets2.Destroy;
begin
  System.SysUtils.FreeAndNil(FDescriptorID);
  inherited Destroy;
end;

destructor NodeBase2.Destroy;
begin
  System.SysUtils.FreeAndNil(F_id);
  inherited Destroy;
end;

destructor Node2.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcreation);
  System.SysUtils.FreeAndNil(FmetadataSet);
  System.SysUtils.FreeAndNil(Fmodification);
  System.SysUtils.FreeAndNil(FparentID);
  System.SysUtils.FreeAndNil(FpredecessorID);
  inherited Destroy;
end;

destructor GraphicNode2.Destroy;
begin
  System.SysUtils.FreeAndNil(FMix);
  inherited Destroy;
end;

destructor TitlerNode2.Destroy;
begin
  System.SysUtils.FreeAndNil(FMix);
  inherited Destroy;
end;

destructor EmptyClipNode2.Destroy;
begin
  System.SysUtils.FreeAndNil(FMix);
  inherited Destroy;
end;

destructor AudioTrackNode2.Destroy;
begin
  System.SysUtils.FreeAndNil(FAudioOutputId);
  inherited Destroy;
end;

destructor EffectNode2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FKeyframes)-1 do
    System.SysUtils.FreeAndNil(FKeyframes[I]);
  System.SetLength(FKeyframes, 0);
  inherited Destroy;
end;

destructor DayTemplateNode2.Destroy;
begin
  System.SysUtils.FreeAndNil(FDate);
  inherited Destroy;
end;

destructor ScriptClipNode2.Destroy;
begin
  System.SysUtils.FreeAndNil(FLinkedNode);
  inherited Destroy;
end;

destructor JobSubjectNode2.Destroy;
begin
  System.SysUtils.FreeAndNil(FRefNode);
  inherited Destroy;
end;

destructor RefNode2.Destroy;
begin
  System.SysUtils.FreeAndNil(FRef);
  inherited Destroy;
end;

destructor MetadataSetObject2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fmetadata)-1 do
    System.SysUtils.FreeAndNil(Fmetadata[I]);
  System.SetLength(Fmetadata, 0);
  inherited Destroy;
end;

constructor EnumExportPluginsMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure EnumExportPluginsMessageResponse.Setplugins(Index: Integer; const AArrayOfstring: ArrayOfstring);
begin
  Fplugins := AArrayOfstring;
  Fplugins_Specified := True;
end;

function EnumExportPluginsMessageResponse.plugins_Specified(Index: Integer): boolean;
begin
  Result := Fplugins_Specified;
end;

procedure EnumExportPluginsMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function EnumExportPluginsMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure EnumExportPluginsMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function EnumExportPluginsMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor SubTypeRelationsParentsMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure SubTypeRelationsParentsMessageResponse.Setsubtypes(Index: Integer; const AArrayOfint: ArrayOfint);
begin
  Fsubtypes := AArrayOfint;
  Fsubtypes_Specified := True;
end;

function SubTypeRelationsParentsMessageResponse.subtypes_Specified(Index: Integer): boolean;
begin
  Result := Fsubtypes_Specified;
end;

procedure SubTypeRelationsParentsMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function SubTypeRelationsParentsMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure SubTypeRelationsParentsMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function SubTypeRelationsParentsMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

constructor SubTypeRelationsMessageResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure SubTypeRelationsMessageResponse.Setsubtypes(Index: Integer; const AArrayOfint: ArrayOfint);
begin
  Fsubtypes := AArrayOfint;
  Fsubtypes_Specified := True;
end;

function SubTypeRelationsMessageResponse.subtypes_Specified(Index: Integer): boolean;
begin
  Result := Fsubtypes_Specified;
end;

procedure SubTypeRelationsMessageResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function SubTypeRelationsMessageResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure SubTypeRelationsMessageResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function SubTypeRelationsMessageResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

destructor KeyValueOfJOB_FOLDER_TYPEJobCreationInfoObject_SRNRwcyb.Destroy;
begin
  System.SysUtils.FreeAndNil(FValue);
  inherited Destroy;
end;

destructor MogClipFields2.Destroy;
begin
  System.SysUtils.FreeAndNil(FfileSet);
  System.SysUtils.FreeAndNil(FsecondaryFileSet);
  inherited Destroy;
end;

destructor MultiClipNode2.Destroy;
begin
  System.SysUtils.FreeAndNil(FMix);
  inherited Destroy;
end;

destructor ClipNode2.Destroy;
begin
  System.SysUtils.FreeAndNil(FMix);
  System.SysUtils.FreeAndNil(Fmog);
  System.SysUtils.FreeAndNil(FmogFields);
  inherited Destroy;
end;

destructor MogNode2.Destroy;
begin
  System.SysUtils.FreeAndNil(FfileSet);
  System.SysUtils.FreeAndNil(FsecondaryFileSet);
  inherited Destroy;
end;

destructor FileSetObject2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ffiles)-1 do
    System.SysUtils.FreeAndNil(Ffiles[I]);
  System.SetLength(Ffiles, 0);
  System.SysUtils.FreeAndNil(FID);
  inherited Destroy;
end;

destructor MpegProfile_TVFormatObjects2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fprofiles)-1 do
    System.SysUtils.FreeAndNil(Fprofiles[I]);
  System.SetLength(Fprofiles, 0);
  inherited Destroy;
end;

destructor MpegProfileSetObject2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fprofiles)-1 do
    System.SysUtils.FreeAndNil(Fprofiles[I]);
  System.SetLength(Fprofiles, 0);
  inherited Destroy;
end;

destructor MetadataTemplateSetObject2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ftemplates)-1 do
    System.SysUtils.FreeAndNil(Ftemplates[I]);
  System.SetLength(Ftemplates, 0);
  inherited Destroy;
end;

destructor WorkflowStepObjects2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FworkflowSteps)-1 do
    System.SysUtils.FreeAndNil(FworkflowSteps[I]);
  System.SetLength(FworkflowSteps, 0);
  inherited Destroy;
end;

destructor EditorObjects2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Feditors)-1 do
    System.SysUtils.FreeAndNil(Feditors[I]);
  System.SetLength(Feditors, 0);
  inherited Destroy;
end;

destructor PresenterObjects2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fpresenters)-1 do
    System.SysUtils.FreeAndNil(Fpresenters[I]);
  System.SetLength(Fpresenters, 0);
  inherited Destroy;
end;

destructor UserActionObjects2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Factions)-1 do
    System.SysUtils.FreeAndNil(Factions[I]);
  System.SetLength(Factions, 0);
  inherited Destroy;
end;

destructor ColorParameterObjects2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fparameters)-1 do
    System.SysUtils.FreeAndNil(Fparameters[I]);
  System.SetLength(Fparameters, 0);
  inherited Destroy;
end;

destructor LogTemplateObjects2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ftemplates)-1 do
    System.SysUtils.FreeAndNil(Ftemplates[I]);
  System.SetLength(Ftemplates, 0);
  inherited Destroy;
end;

destructor PropertySetObject2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fproperties)-1 do
    System.SysUtils.FreeAndNil(Fproperties[I]);
  System.SetLength(Fproperties, 0);
  inherited Destroy;
end;

destructor MappingTypeObjects2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fmappings)-1 do
    System.SysUtils.FreeAndNil(Fmappings[I]);
  System.SetLength(Fmappings, 0);
  inherited Destroy;
end;

destructor TagsCloudObject2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ftags)-1 do
    System.SysUtils.FreeAndNil(Ftags[I]);
  System.SetLength(Ftags, 0);
  inherited Destroy;
end;

destructor MosObjects2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fobjects)-1 do
    System.SysUtils.FreeAndNil(Fobjects[I]);
  System.SetLength(Fobjects, 0);
  inherited Destroy;
end;

constructor GetAsyncCommandsResultResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetAsyncCommandsResultResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FcommandsResult)-1 do
    System.SysUtils.FreeAndNil(FcommandsResult[I]);
  System.SetLength(FcommandsResult, 0);
  inherited Destroy;
end;

procedure GetAsyncCommandsResultResponse.SetcommandsResult(Index: Integer; const AArrayOfAsyncCommandResult: ArrayOfAsyncCommandResult);
begin
  FcommandsResult := AArrayOfAsyncCommandResult;
  FcommandsResult_Specified := True;
end;

function GetAsyncCommandsResultResponse.commandsResult_Specified(Index: Integer): boolean;
begin
  Result := FcommandsResult_Specified;
end;

procedure GetAsyncCommandsResultResponse.SetretCode(Index: Integer; const AInteger: Integer);
begin
  FretCode := AInteger;
  FretCode_Specified := True;
end;

function GetAsyncCommandsResultResponse.retCode_Specified(Index: Integer): boolean;
begin
  Result := FretCode_Specified;
end;

procedure GetAsyncCommandsResultResponse.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function GetAsyncCommandsResultResponse.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

destructor AsyncCommandResult2.Destroy;
begin
  System.SysUtils.FreeAndNil(FcommandContext);
  inherited Destroy;
end;

constructor SetPropertiesByNameMessageRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetPropertiesByNameMessageRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fproperties)-1 do
    System.SysUtils.FreeAndNil(Fproperties[I]);
  System.SetLength(Fproperties, 0);
  System.SysUtils.FreeAndNil(Fcontext);
  System.SysUtils.FreeAndNil(Fnode);
  inherited Destroy;
end;

procedure SetPropertiesByNameMessageRequest.Setcontext(Index: Integer; const AConnectContext2: ConnectContext2);
begin
  Fcontext := AConnectContext2;
  Fcontext_Specified := True;
end;

function SetPropertiesByNameMessageRequest.context_Specified(Index: Integer): boolean;
begin
  Result := Fcontext_Specified;
end;

procedure SetPropertiesByNameMessageRequest.Setnode(Index: Integer; const ANodeBase2: NodeBase2);
begin
  Fnode := ANodeBase2;
  Fnode_Specified := True;
end;

function SetPropertiesByNameMessageRequest.node_Specified(Index: Integer): boolean;
begin
  Result := Fnode_Specified;
end;

procedure SetPropertiesByNameMessageRequest.Setproperties(Index: Integer; const AArrayOfPropertyObjectByName: ArrayOfPropertyObjectByName);
begin
  Fproperties := AArrayOfPropertyObjectByName;
  Fproperties_Specified := True;
end;

function SetPropertiesByNameMessageRequest.properties_Specified(Index: Integer): boolean;
begin
  Result := Fproperties_Specified;
end;

destructor JobProcessorGroupObjects2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FjobProcessorGroup)-1 do
    System.SysUtils.FreeAndNil(FjobProcessorGroup[I]);
  System.SetLength(FjobProcessorGroup, 0);
  inherited Destroy;
end;

destructor JobCreationInfoObjects2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fobjects)-1 do
    System.SysUtils.FreeAndNil(Fobjects[I]);
  System.SetLength(Fobjects, 0);
  inherited Destroy;
end;

destructor MediaGroupObjects2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FmediaGroup)-1 do
    System.SysUtils.FreeAndNil(FmediaGroup[I]);
  System.SetLength(FmediaGroup, 0);
  inherited Destroy;
end;

destructor CommandsChain2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(F_commands)-1 do
    System.SysUtils.FreeAndNil(F_commands[I]);
  System.SetLength(F_commands, 0);
  inherited Destroy;
end;

destructor SlaveDatabaseObjects2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fdatabases)-1 do
    System.SysUtils.FreeAndNil(Fdatabases[I]);
  System.SetLength(Fdatabases, 0);
  inherited Destroy;
end;

destructor StoryTypeObjects2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FstoryTypes)-1 do
    System.SysUtils.FreeAndNil(FstoryTypes[I]);
  System.SetLength(FstoryTypes, 0);
  inherited Destroy;
end;

destructor RemoveTagCommand2.Destroy;
begin
  System.SysUtils.FreeAndNil(F_nodeID);
  inherited Destroy;
end;

destructor LockNodeCommand2.Destroy;
begin
  System.SysUtils.FreeAndNil(F_node);
  inherited Destroy;
end;

destructor CreateJobCommand2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(F_subjectNodes)-1 do
    System.SysUtils.FreeAndNil(F_subjectNodes[I]);
  System.SetLength(F_subjectNodes, 0);
  System.SysUtils.FreeAndNil(F_node);
  inherited Destroy;
end;

destructor AddTagCommand2.Destroy;
begin
  System.SysUtils.FreeAndNil(F_nodeID);
  inherited Destroy;
end;

destructor UnlockNodeCommand2.Destroy;
begin
  System.SysUtils.FreeAndNil(F_node);
  inherited Destroy;
end;

destructor CopyNodeCommand2.Destroy;
begin
  System.SysUtils.FreeAndNil(F_dstParent);
  System.SysUtils.FreeAndNil(F_insertPosition);
  System.SysUtils.FreeAndNil(F_newNodeID);
  System.SysUtils.FreeAndNil(F_node);
  inherited Destroy;
end;

destructor SetPropertiesCommand2.Destroy;
begin
  System.SysUtils.FreeAndNil(F_node);
  System.SysUtils.FreeAndNil(F_properties);
  inherited Destroy;
end;

destructor CreateNodeByNodeCommand2.Destroy;
begin
  System.SysUtils.FreeAndNil(F_dstParent);
  System.SysUtils.FreeAndNil(F_insertPosition);
  System.SysUtils.FreeAndNil(F_node);
  System.SysUtils.FreeAndNil(F_properties);
  inherited Destroy;
end;

destructor MoveNodeCommand2.Destroy;
begin
  System.SysUtils.FreeAndNil(F_dstParent);
  System.SysUtils.FreeAndNil(F_insertPosition);
  System.SysUtils.FreeAndNil(F_node);
  inherited Destroy;
end;

destructor SetPropertyCommand2.Destroy;
begin
  System.SysUtils.FreeAndNil(F_node);
  System.SysUtils.FreeAndNil(F_property);
  inherited Destroy;
end;

destructor DeleteNodeCommand2.Destroy;
begin
  System.SysUtils.FreeAndNil(F_node);
  inherited Destroy;
end;

destructor CreateNodeCommand2.Destroy;
begin
  System.SysUtils.FreeAndNil(F_insertPosition);
  System.SysUtils.FreeAndNil(F_node);
  inherited Destroy;
end;

destructor RenameNodeCommand2.Destroy;
begin
  System.SysUtils.FreeAndNil(F_node);
  inherited Destroy;
end;

destructor RestoreNodeCommand2.Destroy;
begin
  System.SysUtils.FreeAndNil(F_node);
  inherited Destroy;
end;

procedure RegisterTypeProc0;
begin
  RemClassRegistry.RegisterXSClass(GetRecentNodesMessageRequest, 'http://tempuri.org/', 'GetRecentNodesMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetRecentNodesMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SearchMessageRequest, 'http://tempuri.org/', 'SearchMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(SearchMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SearchListMessageRequest, 'http://tempuri.org/', 'SearchListMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(SearchListMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SearchPagerListMessageRequest, 'http://tempuri.org/', 'SearchPagerListMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(SearchPagerListMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(Search2MessageRequest, 'http://tempuri.org/', 'Search2MessageRequest');
  RemClassRegistry.RegisterSerializeOptions(Search2MessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DisconnectMessageRequest, 'http://tempuri.org/', 'DisconnectMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(DisconnectMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(BaseMessageRequest, 'http://tempuri.org/', 'BaseMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(BaseMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpdateUnsubscribeRequest, 'http://tempuri.org/', 'UpdateUnsubscribeRequest');
  RemClassRegistry.RegisterSerializeOptions(UpdateUnsubscribeRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetSessionsCountRequest, 'http://tempuri.org/', 'GetSessionsCountRequest');
  RemClassRegistry.RegisterSerializeOptions(GetSessionsCountRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpdateSubscribeRequest, 'http://tempuri.org/', 'UpdateSubscribeRequest');
  RemClassRegistry.RegisterSerializeOptions(UpdateSubscribeRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(TVFormatInfoMessageRequest, 'http://tempuri.org/', 'TVFormatInfoMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(TVFormatInfoMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetMetadataMessageRequest, 'http://tempuri.org/', 'GetMetadataMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetMetadataMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetAsyncCommandResultRequest, 'http://tempuri.org/', 'GetAsyncCommandResultRequest');
  RemClassRegistry.RegisterSerializeOptions(GetAsyncCommandResultRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetAsyncCommandsResultRequest, 'http://tempuri.org/', 'GetAsyncCommandsResultRequest');
  RemClassRegistry.RegisterSerializeOptions(GetAsyncCommandsResultRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ExecuteCommandsMessageRequest, 'http://tempuri.org/', 'ExecuteCommandsMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(ExecuteCommandsMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(LAYERTYPE), 'http://schemas.datacontract.org/2004/07/CinegyCommon', 'LAYERTYPE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SEQUENCE_TYPE), 'http://schemas.datacontract.org/2004/07/CinegyCommon', 'SEQUENCE_TYPE');
  RemClassRegistry.RegisterXSClass(WriteLogMessageRequest, 'http://tempuri.org/', 'WriteLogMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(WriteLogMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(JobCreationInfoMessageRequest, 'http://tempuri.org/', 'JobCreationInfoMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(JobCreationInfoMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetWorkflowStepsMessageRequest, 'http://tempuri.org/', 'GetWorkflowStepsMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetWorkflowStepsMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetEditorsMessageRequest, 'http://tempuri.org/', 'GetEditorsMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetEditorsMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SlaveDatabasesMessageRequest, 'http://tempuri.org/', 'SlaveDatabasesMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(SlaveDatabasesMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetStoryTypesMessageRequest, 'http://tempuri.org/', 'GetStoryTypesMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetStoryTypesMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(EnumExportPluginsMessageRequest, 'http://tempuri.org/', 'EnumExportPluginsMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(EnumExportPluginsMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetMediaGroupMessageRequest, 'http://tempuri.org/', 'GetMediaGroupMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetMediaGroupMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfNODEID), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'ArrayOfNODEID');
  RemClassRegistry.RegisterXSClass(GetJobProcessorGroupsMessageRequest, 'http://tempuri.org/', 'GetJobProcessorGroupsMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetJobProcessorGroupsMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(DESCRIPTOR_EXTRA_TYPE), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'DESCRIPTOR_EXTRA_TYPE');
  RemClassRegistry.RegisterXSClass(GetFileSetMessageRequest, 'http://tempuri.org/', 'GetFileSetMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetFileSetMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(DESCRIPTOR_TYPE), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'DESCRIPTOR_TYPE');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DESCRIPTOR_TYPE), 'System_', 'SYSTEM');
  RemClassRegistry.RegisterXSClass(SetMetadataMessageRequest, 'http://tempuri.org/', 'SetMetadataMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(SetMetadataMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(PROPERTY_NUM), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'PROPERTY_NUM');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PROPERTY_NUM), 'NAME_', 'NAME');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PROPERTY_NUM), 'IN_', 'IN');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PROPERTY_NUM), 'OUT_', 'OUT');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DESCRIPTOR_VALUE_TYPE), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'DESCRIPTOR_VALUE_TYPE');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DESCRIPTOR_VALUE_TYPE), 'STRING_', 'STRING');
  RemClassRegistry.RegisterXSClass(GetExtraDataMessageRequest, 'http://tempuri.org/', 'GetExtraDataMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetExtraDataMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetPathForNodeRequest, 'http://tempuri.org/', 'GetPathForNodeRequest');
  RemClassRegistry.RegisterSerializeOptions(GetPathForNodeRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeleteNodeMessageRequest, 'http://tempuri.org/', 'DeleteNodeMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(DeleteNodeMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(RestoreNodeMessageRequest, 'http://tempuri.org/', 'RestoreNodeMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(RestoreNodeMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetPropertyMessageRequest, 'http://tempuri.org/', 'SetPropertyMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SetPropertyMessageRequest), 'property_', '[ExtName="property"]');
  RemClassRegistry.RegisterSerializeOptions(SetPropertyMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetPropertiesMessageRequest, 'http://tempuri.org/', 'SetPropertiesMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(SetPropertiesMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(MpegProfilesMessageRequest, 'http://tempuri.org/', 'MpegProfilesMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(MpegProfilesMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetMetadataTemplatesMessageRequest, 'http://tempuri.org/', 'GetMetadataTemplatesMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetMetadataTemplatesMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetPresentersMessageRequest, 'http://tempuri.org/', 'GetPresentersMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetPresentersMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(MosObjectsMessageRequest, 'http://tempuri.org/', 'MosObjectsMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(MosObjectsMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ConnectionInfoMessageRequest, 'http://tempuri.org/', 'ConnectionInfoMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(ConnectionInfoMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetMappingTypesMessageRequest, 'http://tempuri.org/', 'GetMappingTypesMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetMappingTypesMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfNode), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfNode');
  RemClassRegistry.RegisterXSClass(SearchResult2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SearchResult2', 'SearchResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfSearchResult), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfSearchResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfNodeBase), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfNodeBase');
  RemClassRegistry.RegisterXSClass(ReorderNodesMessageRequest, 'http://tempuri.org/', 'ReorderNodesMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ReorderNodesMessageRequest), 'nodes', '[ArrayItemName="NodeBase"]');
  RemClassRegistry.RegisterSerializeOptions(ReorderNodesMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfMetadataObject), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfMetadataObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfKeyframe), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfKeyframe');
  RemClassRegistry.RegisterXSClass(PropertyObjectBase2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'PropertyObjectBase2', 'PropertyObjectBase');
  RemClassRegistry.RegisterXSClass(PropertyObjectBase, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'PropertyObjectBase');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfGlobalParameter), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfGlobalParameter');
  RemClassRegistry.RegisterXSClass(GlobalParameterObjects2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'GlobalParameterObjects2', 'GlobalParameterObjects');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GlobalParameterObjects2), 'parameters', '[ArrayItemName="GlobalParameter"]');
  RemClassRegistry.RegisterXSClass(GlobalParameterObjects, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'GlobalParameterObjects');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfSearchListResult), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfSearchListResult');
  RemClassRegistry.RegisterXSClass(SearchNodesListResult2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SearchNodesListResult2', 'SearchNodesListResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfSearchNodesListResult), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfSearchNodesListResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfSearch2Result), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfSearch2Result');
  RemClassRegistry.RegisterXSClass(Search2Result2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'Search2Result2', 'Search2Result');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfBaseUpdate), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfBaseUpdate');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfJobNode), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfJobNode');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfSubTypeObject), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfSubTypeObject');
  RemClassRegistry.RegisterXSClass(SubTypeObjects2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SubTypeObjects2', 'SubTypeObjects');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SubTypeObjects2), 'SubTypes', '[ArrayItemName="SubTypeObject"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTVFormatObject), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfTVFormatObject');
  RemClassRegistry.RegisterXSClass(TVFormatObjects2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'TVFormatObjects2', 'TVFormatObjects');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(TVFormatObjects2), 'TVFormats', '[ArrayItemName="TVFormatObject"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(UpdateActions), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'UpdateActions');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TVFORMAT), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'TVFORMAT');
  RemClassRegistry.RegisterXSInfo(TypeInfo(OrderField), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'OrderField');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(OrderField), 'NAME_', 'NAME');
  RemClassRegistry.RegisterXSInfo(TypeInfo(GP_TYPE), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'GP_TYPE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(BildType), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'BildType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(BildType), 'DEFAULT_', 'DEFAULT');
  RemClassRegistry.RegisterXSClass(SubTypeInfoMessageRequest, 'http://tempuri.org/', 'SubTypeInfoMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(SubTypeInfoMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(LockType), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'LockType');
  RemClassRegistry.RegisterXSClass(NodeUnlockMessageRequest, 'http://tempuri.org/', 'NodeUnlockMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(NodeUnlockMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(NodeLockMessageRequest, 'http://tempuri.org/', 'NodeLockMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(NodeLockMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(NodeFillingType), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'NodeFillingType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(GET_NODE_REQUEST_TYPE), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'GET_NODE_REQUEST_TYPE');
  RemClassRegistry.RegisterXSClass(GetNodesCountMessageRequest, 'http://tempuri.org/', 'GetNodesCountMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetNodesCountMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetClipsByRollMessageRequest, 'http://tempuri.org/', 'GetClipsByRollMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetClipsByRollMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetClipsByMogMessageRequest, 'http://tempuri.org/', 'GetClipsByMogMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetClipsByMogMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(NodeIDMessageRequest, 'http://tempuri.org/', 'NodeIDMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(NodeIDMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetChildrenMessageRequest, 'http://tempuri.org/', 'GetChildrenMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetChildrenMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNodeMessageRequest, 'http://tempuri.org/', 'GetNodeMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetNodeMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetChildrenMessageRequestEx, 'http://tempuri.org/', 'GetChildrenMessageRequestEx');
  RemClassRegistry.RegisterSerializeOptions(GetChildrenMessageRequestEx, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNodeMessageRequestEx, 'http://tempuri.org/', 'GetNodeMessageRequestEx');
  RemClassRegistry.RegisterSerializeOptions(GetNodeMessageRequestEx, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ProfileType), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'ProfileType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CreationStatus), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'CreationStatus');
  RemClassRegistry.RegisterXSInfo(TypeInfo(WrapperType), 'http://schemas.datacontract.org/2004/07/CASInternalObjects', 'WrapperType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ExperationStatus), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'ExperationStatus');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SpecialNodes), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'SpecialNodes');
  RemClassRegistry.RegisterXSInfo(TypeInfo(MappingType), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'MappingType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MappingType), 'Export_', 'Export');
  RemClassRegistry.RegisterXSInfo(TypeInfo(MpegProfileType), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'MpegProfileType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MpegProfileType), 'Export_', 'Export');
  RemClassRegistry.RegisterXSInfo(TypeInfo(MetadataTemplateType), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'MetadataTemplateType');
  RemClassRegistry.RegisterXSClass(BaseUpdate2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'BaseUpdate2', 'BaseUpdate');
  RemClassRegistry.RegisterXSClass(MetadataUpdate2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MetadataUpdate2', 'MetadataUpdate');
  RemClassRegistry.RegisterXSClass(MetadataUpdate, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MetadataUpdate');
  RemClassRegistry.RegisterXSClass(OrderUpdate2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OrderUpdate2', 'OrderUpdate');
  RemClassRegistry.RegisterXSClass(OrderUpdate, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OrderUpdate');
end;

procedure RegisterTypeProc1;
begin
  RemClassRegistry.RegisterXSClass(ChildrenDeletedUpdate2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ChildrenDeletedUpdate2', 'ChildrenDeletedUpdate');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ChildrenDeletedUpdate2), 'children', '[ArrayItemName="NODEID"]');
  RemClassRegistry.RegisterXSClass(FieldUpdate2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'FieldUpdate2', 'FieldUpdate');
  RemClassRegistry.RegisterXSClass(ThumbnailUpdate2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ThumbnailUpdate2', 'ThumbnailUpdate');
  RemClassRegistry.RegisterXSClass(ThumbnailUpdate, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ThumbnailUpdate');
  RemClassRegistry.RegisterXSClass(GlobalParametrUpdate2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'GlobalParametrUpdate2', 'GlobalParametrUpdate');
  RemClassRegistry.RegisterXSClass(GlobalParametrUpdate, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'GlobalParametrUpdate');
  RemClassRegistry.RegisterXSClass(RollUnlockUpdate2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'RollUnlockUpdate2', 'RollUnlockUpdate');
  RemClassRegistry.RegisterXSClass(RollUnlockUpdate, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'RollUnlockUpdate');
  RemClassRegistry.RegisterXSClass(UnlockUpdate2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'UnlockUpdate2', 'UnlockUpdate');
  RemClassRegistry.RegisterXSClass(UnlockUpdate, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'UnlockUpdate');
  RemClassRegistry.RegisterXSClass(NewsAddedUpdate2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'NewsAddedUpdate2', 'NewsAddedUpdate');
  RemClassRegistry.RegisterXSClass(NewsAddedUpdate, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'NewsAddedUpdate');
  RemClassRegistry.RegisterXSClass(ChildrenInsertedUpdate2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ChildrenInsertedUpdate2', 'ChildrenInsertedUpdate');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ChildrenInsertedUpdate2), 'children', '[ArrayItemName="NODEID"]');
  RemClassRegistry.RegisterXSClass(JoinMogsMessageRequest, 'http://tempuri.org/', 'JoinMogsMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(JoinMogsMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CopyNodeMessageRequest, 'http://tempuri.org/', 'CopyNodeMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(CopyNodeMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(MoveNodeMessageRequest, 'http://tempuri.org/', 'MoveNodeMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(MoveNodeMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateJobMessageRequest, 'http://tempuri.org/', 'CreateJobMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CreateJobMessageRequest), 'subjectNodes', '[ArrayItemName="Node"]');
  RemClassRegistry.RegisterSerializeOptions(CreateJobMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateSubClipMessageRequest, 'http://tempuri.org/', 'CreateSubClipMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(CreateSubClipMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(AsyncCopyNodeMessageRequest, 'http://tempuri.org/', 'AsyncCopyNodeMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(AsyncCopyNodeMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SplitMogMessageRequest, 'http://tempuri.org/', 'SplitMogMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(SplitMogMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(Keyframe2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'Keyframe2', 'Keyframe');
  RemClassRegistry.RegisterXSClass(SearchListResult2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SearchListResult2', 'SearchListResult');
  RemClassRegistry.RegisterXSClass(ChangeDeleteUpdate2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ChangeDeleteUpdate2', 'ChangeDeleteUpdate');
  RemClassRegistry.RegisterXSClass(ChangeDeleteUpdate, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ChangeDeleteUpdate');
  RemClassRegistry.RegisterXSClass(GetChildrenPageMessageRequest, 'http://tempuri.org/', 'GetChildrenPageMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetChildrenPageMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(HeartBeatMessageRequest, 'http://tempuri.org/', 'HeartBeatMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(HeartBeatMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(TagsCloudMessageRequest, 'http://tempuri.org/', 'TagsCloudMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(TagsCloudMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetAllNewsMessageRequest, 'http://tempuri.org/', 'GetAllNewsMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetAllNewsMessageRequest), 'nodes', '[ArrayItemName="NodeBase"]');
  RemClassRegistry.RegisterSerializeOptions(GetAllNewsMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetBreakingNewsRequest, 'http://tempuri.org/', 'GetBreakingNewsRequest');
  RemClassRegistry.RegisterSerializeOptions(GetBreakingNewsRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetRollsByStatusMessageRequest, 'http://tempuri.org/', 'GetRollsByStatusMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetRollsByStatusMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetJobProcessorGroupMessageRequest, 'http://tempuri.org/', 'GetJobProcessorGroupMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetJobProcessorGroupMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SubTypeRelationsMessageRequest, 'http://tempuri.org/', 'SubTypeRelationsMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(SubTypeRelationsMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SubTypeRelationsParentsMessageRequest, 'http://tempuri.org/', 'SubTypeRelationsParentsMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(SubTypeRelationsParentsMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ColorMessageRequest, 'http://tempuri.org/', 'ColorMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(ColorMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetUpdatesRequest, 'http://tempuri.org/', 'GetUpdatesRequest');
  RemClassRegistry.RegisterSerializeOptions(GetUpdatesRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(PredefinedPropertyObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'PredefinedPropertyObject2', 'PredefinedPropertyObject');
  RemClassRegistry.RegisterXSClass(PropertyObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'PropertyObject2', 'PropertyObject');
  RemClassRegistry.RegisterXSClass(PropertyObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'PropertyObject');
  RemClassRegistry.RegisterXSClass(GetSpecialNodeMessageRequest, 'http://tempuri.org/', 'GetSpecialNodeMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetSpecialNodeMessageRequest), 'type_', '[ExtName="type"]');
  RemClassRegistry.RegisterSerializeOptions(GetSpecialNodeMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateNodeMessageRequest, 'http://tempuri.org/', 'CreateNodeMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(CreateNodeMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(guid), 'http://schemas.microsoft.com/2003/10/Serialization/', 'guid');
  RemClassRegistry.RegisterXSInfo(TypeInfo(UserAccess), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'UserAccess');
  RemClassRegistry.RegisterXSClass(SubTypeObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SubTypeObject2', 'SubTypeObject');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SubTypeObject2), 'Name_', '[ExtName="Name"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SubTypeObject2), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterXSClass(TVFormatObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'TVFormatObject2', 'TVFormatObject');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(TVFormatObject2), 'Name_', '[ExtName="Name"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(TVFormatObject2), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterXSClass(Search2Parameters2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'Search2Parameters2', 'Search2Parameters');
  RemClassRegistry.RegisterXSClass(GetRecentNodesParameters2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'GetRecentNodesParameters2', 'GetRecentNodesParameters');
  RemClassRegistry.RegisterXSClass(SearchPagerParameters2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SearchPagerParameters2', 'SearchPagerParameters');
  RemClassRegistry.RegisterXSClass(GlobalParameter2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'GlobalParameter2', 'GlobalParameter');
  RemClassRegistry.RegisterXSClass(GlobalParameter, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'GlobalParameter');
  RemClassRegistry.RegisterXSClass(LockUpdate2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'LockUpdate2', 'LockUpdate');
  RemClassRegistry.RegisterXSClass(LockUpdate, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'LockUpdate');
  RemClassRegistry.RegisterXSClass(RenameUpdate2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'RenameUpdate2', 'RenameUpdate');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(RenameUpdate2), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(MetadataObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MetadataObject2', 'MetadataObject');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MetadataObject2), 'type_', '[ExtName="type"]');
  RemClassRegistry.RegisterXSClass(SearchParameters2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SearchParameters2', 'SearchParameters');
  RemClassRegistry.RegisterXSClass(GetMappingTypeMessageRequest, 'http://tempuri.org/', 'GetMappingTypeMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetMappingTypeMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetMappingTypeMessageResponse, 'http://tempuri.org/', 'GetMappingTypeMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetMappingTypeMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeleteMappingMessageResponse, 'http://tempuri.org/', 'DeleteMappingMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(DeleteMappingMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetMappingMessageResponse, 'http://tempuri.org/', 'SetMappingMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(SetMappingMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeleteMappingMessageRequest, 'http://tempuri.org/', 'DeleteMappingMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DeleteMappingMessageRequest), 'type_', '[ExtName="type"]');
  RemClassRegistry.RegisterSerializeOptions(DeleteMappingMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeleteMappingTypeMessageResponse, 'http://tempuri.org/', 'DeleteMappingTypeMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(DeleteMappingTypeMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeleteMappingTypeMessageRequest, 'http://tempuri.org/', 'DeleteMappingTypeMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(DeleteMappingTypeMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetMappingTypeMessageRequest, 'http://tempuri.org/', 'SetMappingTypeMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SetMappingTypeMessageRequest), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterSerializeOptions(SetMappingTypeMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetMappingTypeMessageResponse, 'http://tempuri.org/', 'SetMappingTypeMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(SetMappingTypeMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(PluginDescriptorMessageRequest, 'http://tempuri.org/', 'PluginDescriptorMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(PluginDescriptorMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(PluginDescriptorMessageResponse, 'http://tempuri.org/', 'PluginDescriptorMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PluginDescriptorMessageResponse), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterSerializeOptions(PluginDescriptorMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ConnectionInfoMessageResponse, 'http://tempuri.org/', 'ConnectionInfoMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(ConnectionInfoMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetProfileMessageResponse, 'http://tempuri.org/', 'GetProfileMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetProfileMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetMappingMessageResponse, 'http://tempuri.org/', 'GetMappingMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetMappingMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetMappingMessageRequest, 'http://tempuri.org/', 'SetMappingMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SetMappingMessageRequest), 'type_', '[ExtName="type"]');
  RemClassRegistry.RegisterSerializeOptions(SetMappingMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetMappingMessageRequest, 'http://tempuri.org/', 'GetMappingMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetMappingMessageRequest), 'type_', '[ExtName="type"]');
  RemClassRegistry.RegisterSerializeOptions(GetMappingMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(MosObjectsMessageResponse, 'http://tempuri.org/', 'MosObjectsMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(MosObjectsMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetMappingTypesMessageResponse, 'http://tempuri.org/', 'GetMappingTypesMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetMappingTypesMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SplitMogMessageResponse, 'http://tempuri.org/', 'SplitMogMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(SplitMogMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ReorderNodesMessageResponse, 'http://tempuri.org/', 'ReorderNodesMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(ReorderNodesMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetPresentersMessageResponse, 'http://tempuri.org/', 'GetPresentersMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetPresentersMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetPresenterMessageResponse, 'http://tempuri.org/', 'GetPresenterMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetPresenterMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(JoinMogsMessageResponse, 'http://tempuri.org/', 'JoinMogsMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(JoinMogsMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetPresenterMessageRequest, 'http://tempuri.org/', 'GetPresenterMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetPresenterMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetParentByTypeMessageResponse, 'http://tempuri.org/', 'GetParentByTypeMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetParentByTypeMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetSpecialNodeMessageResponse, 'http://tempuri.org/', 'GetSpecialNodeMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetSpecialNodeMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(MpegProfilesMessageResponse, 'http://tempuri.org/', 'MpegProfilesMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(MpegProfilesMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetUserProfileMessageResponse, 'http://tempuri.org/', 'SetUserProfileMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(SetUserProfileMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetMetadataTemplatesMessageResponse, 'http://tempuri.org/', 'GetMetadataTemplatesMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetMetadataTemplatesMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetUserProfileMessageRequest, 'http://tempuri.org/', 'SetUserProfileMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(SetUserProfileMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetProfileMessageRequest, 'http://tempuri.org/', 'GetProfileMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetProfileMessageRequest), 'type_', '[ExtName="type"]');
  RemClassRegistry.RegisterSerializeOptions(GetProfileMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetPropertiesMessageResponse, 'http://tempuri.org/', 'SetPropertiesMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(SetPropertiesMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetPropertyMessageResponse, 'http://tempuri.org/', 'SetPropertyMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(SetPropertyMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateNodeByNodeMessageResponse, 'http://tempuri.org/', 'CreateNodeByNodeMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(CreateNodeByNodeMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(MoveNodeMessageResponse, 'http://tempuri.org/', 'MoveNodeMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(MoveNodeMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CopyNodeMessageResponse, 'http://tempuri.org/', 'CopyNodeMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(CopyNodeMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeleteNodeMessageResponse, 'http://tempuri.org/', 'DeleteNodeMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(DeleteNodeMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateNodeMessageResponse, 'http://tempuri.org/', 'CreateNodeMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(CreateNodeMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetPathForNodeResponse, 'http://tempuri.org/', 'GetPathForNodeResponse');
  RemClassRegistry.RegisterSerializeOptions(GetPathForNodeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(RenameNodeMessageResponse, 'http://tempuri.org/', 'RenameNodeMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(RenameNodeMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(RestoreNodeMessageResponse, 'http://tempuri.org/', 'RestoreNodeMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(RestoreNodeMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(RenameNodeMessageRequest, 'http://tempuri.org/', 'RenameNodeMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(RenameNodeMessageRequest), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterSerializeOptions(RenameNodeMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetHubUrlMessageResponse, 'http://tempuri.org/', 'GetHubUrlMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetHubUrlMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(NodeUnlockMessageResponse, 'http://tempuri.org/', 'NodeUnlockMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(NodeUnlockMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(NodeLockMessageResponse, 'http://tempuri.org/', 'NodeLockMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(NodeLockMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(IsHasChildrenMessageResponse, 'http://tempuri.org/', 'IsHasChildrenMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(IsHasChildrenMessageResponse, [xoLiteralParam]);
end;

procedure RegisterTypeProc2;
begin
  RemClassRegistry.RegisterXSClass(GetChildrenPageMessageResponse, 'http://tempuri.org/', 'GetChildrenPageMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetChildrenPageMessageResponse), 'nodes', '[ArrayItemName="Node"]');
  RemClassRegistry.RegisterSerializeOptions(GetChildrenPageMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNodesCountMessageResponse, 'http://tempuri.org/', 'GetNodesCountMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetNodesCountMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateJobMessageResponse, 'http://tempuri.org/', 'CreateJobMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(CreateJobMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(AddNodeTagMessageRequest, 'http://tempuri.org/', 'AddNodeTagMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(AddNodeTagMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(HeartBeatMessageResponse, 'http://tempuri.org/', 'HeartBeatMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(HeartBeatMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(TagsCloudMessageResponse, 'http://tempuri.org/', 'TagsCloudMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(TagsCloudMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(RemoveNodeTagMessageResponse, 'http://tempuri.org/', 'RemoveNodeTagMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(RemoveNodeTagMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(AddNodeTagMessageResponse, 'http://tempuri.org/', 'AddNodeTagMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(AddNodeTagMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(RemoveNodeTagMessageRequest, 'http://tempuri.org/', 'RemoveNodeTagMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(RemoveNodeTagMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateSubClipMessageResponse, 'http://tempuri.org/', 'CreateSubClipMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(CreateSubClipMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNodeIDsByTypeMessageResponse, 'http://tempuri.org/', 'GetNodeIDsByTypeMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetNodeIDsByTypeMessageResponse), 'nodeIDs', '[ArrayItemName="NodeBase"]');
  RemClassRegistry.RegisterSerializeOptions(GetNodeIDsByTypeMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetAllNewsMessageResponse, 'http://tempuri.org/', 'GetAllNewsMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetAllNewsMessageResponse), 'nodeIDs', '[ArrayItemName="NodeBase"]');
  RemClassRegistry.RegisterSerializeOptions(GetAllNewsMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(NewsFlags), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'NewsFlags');
  RemClassRegistry.RegisterXSClass(GetExtraDataMessageResponse, 'http://tempuri.org/', 'GetExtraDataMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetExtraDataMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetBreakingNewsResponse, 'http://tempuri.org/', 'GetBreakingNewsResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetBreakingNewsResponse), 'nodeIDs', '[ArrayItemName="NodeBase"]');
  RemClassRegistry.RegisterSerializeOptions(GetBreakingNewsResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNodesCountMessageResponseEx, 'http://tempuri.org/', 'GetNodesCountMessageResponseEx');
  RemClassRegistry.RegisterSerializeOptions(GetNodesCountMessageResponseEx, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetMediaGroupMessageResponse, 'http://tempuri.org/', 'GetMediaGroupMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetMediaGroupMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetMetadataMessageResponse, 'http://tempuri.org/', 'SetMetadataMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(SetMetadataMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNextJobMessageRequest, 'http://tempuri.org/', 'GetNextJobMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetNextJobMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNextJobMessageResponse, 'http://tempuri.org/', 'GetNextJobMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetNextJobMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetParentByTypesMessageResponse, 'http://tempuri.org/', 'GetParentByTypesMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetParentByTypesMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetClipsByRollMessageResponse, 'http://tempuri.org/', 'GetClipsByRollMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetClipsByRollMessageResponse), 'nodes', '[ArrayItemName="Node"]');
  RemClassRegistry.RegisterSerializeOptions(GetClipsByRollMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(WCFServiceFault2, 'http://schemas.datacontract.org/2004/07/CinegyServer', 'WCFServiceFault2', 'WCFServiceFault');
  RemClassRegistry.RegisterXSClass(WCFServiceFault, 'http://schemas.datacontract.org/2004/07/CinegyServer', 'WCFServiceFault');
  RemClassRegistry.RegisterXSClass(GetFileSetMessageResponse, 'http://tempuri.org/', 'GetFileSetMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetFileSetMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetRollsByStatusMessageResponse, 'http://tempuri.org/', 'GetRollsByStatusMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetRollsByStatusMessageResponse), 'nodeIDs', '[ArrayItemName="NodeBase"]');
  RemClassRegistry.RegisterSerializeOptions(GetRollsByStatusMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetJobProcessorGroupMessageResponse, 'http://tempuri.org/', 'GetJobProcessorGroupMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetJobProcessorGroupMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetJobProcessorGroupsMessageResponse, 'http://tempuri.org/', 'GetJobProcessorGroupsMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetJobProcessorGroupsMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetClipsByMogMessageResponse, 'http://tempuri.org/', 'GetClipsByMogMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetClipsByMogMessageResponse), 'nodes', '[ArrayItemName="Node"]');
  RemClassRegistry.RegisterSerializeOptions(GetClipsByMogMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetPropertiesByNameMessageResponse, 'http://tempuri.org/', 'SetPropertiesByNameMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(SetPropertiesByNameMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ExportMessageRequest, 'http://tempuri.org/', 'ExportMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(ExportMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetStoryTypesMessageResponse, 'http://tempuri.org/', 'GetStoryTypesMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetStoryTypesMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SlaveDatabasesMessageResponse, 'http://tempuri.org/', 'SlaveDatabasesMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(SlaveDatabasesMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNodesByTypeMessageResponse, 'http://tempuri.org/', 'GetNodesByTypeMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetNodesByTypeMessageResponse), 'nodes', '[ArrayItemName="Node"]');
  RemClassRegistry.RegisterSerializeOptions(GetNodesByTypeMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ExportMessageResponse, 'http://tempuri.org/', 'ExportMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(ExportMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetEditorsMessageResponse, 'http://tempuri.org/', 'GetEditorsMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetEditorsMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetWorkflowStepMessageRequest, 'http://tempuri.org/', 'GetWorkflowStepMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetWorkflowStepMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetEditorMessageRequest, 'http://tempuri.org/', 'GetEditorMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetEditorMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetEditorMessageResponse, 'http://tempuri.org/', 'GetEditorMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetEditorMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetStoryTypeMessageRequest, 'http://tempuri.org/', 'GetStoryTypeMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetStoryTypeMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetStoryTypeMessageResponse, 'http://tempuri.org/', 'GetStoryTypeMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetStoryTypeMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetWorkflowStepsMessageResponse, 'http://tempuri.org/', 'GetWorkflowStepsMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetWorkflowStepsMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetWorkflowStepMessageResponse, 'http://tempuri.org/', 'GetWorkflowStepMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetWorkflowStepMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(WriteLogMessageResponse, 'http://tempuri.org/', 'WriteLogMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(WriteLogMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(AsyncCopyNodeMessageResponse, 'http://tempuri.org/', 'AsyncCopyNodeMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(AsyncCopyNodeMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetFilesPathMessageResponseEx, 'http://tempuri.org/', 'GetFilesPathMessageResponseEx');
  RemClassRegistry.RegisterSerializeOptions(GetFilesPathMessageResponseEx, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(JobCreationInfoMessageResponse, 'http://tempuri.org/', 'JobCreationInfoMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(JobCreationInfoMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(NodesByFieldMessageResponse, 'http://tempuri.org/', 'NodesByFieldMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(NodesByFieldMessageResponse), 'nodes', '[ArrayItemName="Node"]');
  RemClassRegistry.RegisterSerializeOptions(NodesByFieldMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(NodesByFieldsMessageResponse, 'http://tempuri.org/', 'NodesByFieldsMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(NodesByFieldsMessageResponse), 'nodes', '[ArrayItemName="Node"]');
  RemClassRegistry.RegisterSerializeOptions(NodesByFieldsMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetAsyncCommandResultResponse, 'http://tempuri.org/', 'GetAsyncCommandResultResponse');
  RemClassRegistry.RegisterSerializeOptions(GetAsyncCommandResultResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ExecuteCommandsMessageResponse, 'http://tempuri.org/', 'ExecuteCommandsMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(ExecuteCommandsMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetFilesPathMessageResponse, 'http://tempuri.org/', 'GetFilesPathMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetFilesPathMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(TVFormatInfoMessageResponse, 'http://tempuri.org/', 'TVFormatInfoMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(TVFormatInfoMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetMetadataMessageResponse, 'http://tempuri.org/', 'GetMetadataMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetMetadataMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetJobsMessageResponse, 'http://tempuri.org/', 'GetJobsMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetJobsMessageResponse), 'jobs', '[ArrayItemName="JobNode"]');
  RemClassRegistry.RegisterSerializeOptions(GetJobsMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SubTypeInfoMessageResponse, 'http://tempuri.org/', 'SubTypeInfoMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(SubTypeInfoMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ColorMessageResponse, 'http://tempuri.org/', 'ColorMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(ColorMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetSessionsCountResponse, 'http://tempuri.org/', 'GetSessionsCountResponse');
  RemClassRegistry.RegisterSerializeOptions(GetSessionsCountResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(LogTemplateMessageRequest, 'http://tempuri.org/', 'LogTemplateMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(LogTemplateMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UserActionsMessageResponse, 'http://tempuri.org/', 'UserActionsMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(UserActionsMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UserActionsMessageRequest, 'http://tempuri.org/', 'UserActionsMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(UserActionsMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(LogTemplateMessageResponse, 'http://tempuri.org/', 'LogTemplateMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(LogTemplateMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpdateUnsubscribeResponse, 'http://tempuri.org/', 'UpdateUnsubscribeResponse');
  RemClassRegistry.RegisterSerializeOptions(UpdateUnsubscribeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpdateSubscribeResponse, 'http://tempuri.org/', 'UpdateSubscribeResponse');
  RemClassRegistry.RegisterSerializeOptions(UpdateSubscribeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GPMessageResponse, 'http://tempuri.org/', 'GPMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GPMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GPMessageRequest, 'http://tempuri.org/', 'GPMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GPMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetUpdatesResponse, 'http://tempuri.org/', 'GetUpdatesResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetUpdatesResponse), 'updates', '[ArrayItemName="BaseUpdate"]');
  RemClassRegistry.RegisterSerializeOptions(GetUpdatesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(NodeChildrenIDsMessageResponse, 'http://tempuri.org/', 'NodeChildrenIDsMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(NodeChildrenIDsMessageResponse), 'nodeIDs', '[ArrayItemName="NodeBase"]');
  RemClassRegistry.RegisterSerializeOptions(NodeChildrenIDsMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(NodeMessageResponse, 'http://tempuri.org/', 'NodeMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(NodeMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(NodeChildrenMessageResponse, 'http://tempuri.org/', 'NodeChildrenMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(NodeChildrenMessageResponse), 'nodes', '[ArrayItemName="Node"]');
  RemClassRegistry.RegisterSerializeOptions(NodeChildrenMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DisconnectMessageResponse, 'http://tempuri.org/', 'DisconnectMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(DisconnectMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ConnectMessageResponse, 'http://tempuri.org/', 'ConnectMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(ConnectMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SearchNewsMessageRequest, 'http://tempuri.org/', 'SearchNewsMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(SearchNewsMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SearchNewsListMessageResponse, 'http://tempuri.org/', 'SearchNewsListMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SearchNewsListMessageResponse), 'results', '[ArrayItemName="SearchNodesListResult"]');
  RemClassRegistry.RegisterSerializeOptions(SearchNewsListMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(Search2MessageResponse, 'http://tempuri.org/', 'Search2MessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Search2MessageResponse), 'results', '[ArrayItemName="Search2Result"]');
  RemClassRegistry.RegisterSerializeOptions(Search2MessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SearchListMessageResponse, 'http://tempuri.org/', 'SearchListMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SearchListMessageResponse), 'results', '[ArrayItemName="SearchListResult"]');
  RemClassRegistry.RegisterSerializeOptions(SearchListMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SearchMessageResponse, 'http://tempuri.org/', 'SearchMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SearchMessageResponse), 'results', '[ArrayItemName="SearchResult"]');
  RemClassRegistry.RegisterSerializeOptions(SearchMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNodeMessageResponse, 'http://tempuri.org/', 'GetNodeMessageResponse');
  RemClassRegistry.RegisterSerializeOptions(GetNodeMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ConnectContext2, 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'ConnectContext2', 'ConnectContext');
  RemClassRegistry.RegisterXSClass(ConnectContext, 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'ConnectContext');
  RemClassRegistry.RegisterXSInfo(TypeInfo(MAM_FILE_TYPES), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'MAM_FILE_TYPES');
  RemClassRegistry.RegisterXSClass(GetFilesPathMessageRequestEx, 'http://tempuri.org/', 'GetFilesPathMessageRequestEx');
  RemClassRegistry.RegisterSerializeOptions(GetFilesPathMessageRequestEx, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetFilesPathMessageRequest, 'http://tempuri.org/', 'GetFilesPathMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(GetFilesPathMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ConnectionType), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'ConnectionType');
  RemClassRegistry.RegisterXSClass(ConnectMessageRequest, 'http://tempuri.org/', 'ConnectMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ConnectMessageRequest), 'application_', '[ExtName="application"]');
  RemClassRegistry.RegisterSerializeOptions(ConnectMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(JOB_FOLDER_TYPE), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'JOB_FOLDER_TYPE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(FileSetType), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'FileSetType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(NODE_TYPE), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'NODE_TYPE');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(NODE_TYPE), 'LABEL_', 'LABEL');
  RemClassRegistry.RegisterXSClass(GetParentByTypeMessageRequest, 'http://tempuri.org/', 'GetParentByTypeMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetParentByTypeMessageRequest), 'type_', '[ExtName="type"]');
  RemClassRegistry.RegisterSerializeOptions(GetParentByTypeMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateNodeByNodeMessageRequest, 'http://tempuri.org/', 'CreateNodeByNodeMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(CreateNodeByNodeMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(IsHasChildrenMessageRequest, 'http://tempuri.org/', 'IsHasChildrenMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IsHasChildrenMessageRequest), 'type_', '[ExtName="type"]');
  RemClassRegistry.RegisterSerializeOptions(IsHasChildrenMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNodeIDsByTypeMessageRequest, 'http://tempuri.org/', 'GetNodeIDsByTypeMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetNodeIDsByTypeMessageRequest), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterSerializeOptions(GetNodeIDsByTypeMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNodesCountMessageRequestEx, 'http://tempuri.org/', 'GetNodesCountMessageRequestEx');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetNodesCountMessageRequestEx), 'type_', '[ExtName="type"]');
  RemClassRegistry.RegisterSerializeOptions(GetNodesCountMessageRequestEx, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNodesByTypeMessageRequest, 'http://tempuri.org/', 'GetNodesByTypeMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetNodesByTypeMessageRequest), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterSerializeOptions(GetNodesByTypeMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(NodesByFieldsMessageRequest, 'http://tempuri.org/', 'NodesByFieldsMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(NodesByFieldsMessageRequest), 'type_', '[ExtName="type"]');
  RemClassRegistry.RegisterSerializeOptions(NodesByFieldsMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DescriptorsMessageRequestEx, 'http://tempuri.org/', 'DescriptorsMessageRequestEx');
  RemClassRegistry.RegisterSerializeOptions(DescriptorsMessageRequestEx, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(NodesByFieldMessageRequest, 'http://tempuri.org/', 'NodesByFieldMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(NodesByFieldMessageRequest), 'type_', '[ExtName="type"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(NodesByFieldMessageRequest), 'property_', '[ExtName="property"]');
  RemClassRegistry.RegisterSerializeOptions(NodesByFieldMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DescriptorsMessageRequest, 'http://tempuri.org/', 'DescriptorsMessageRequest');
  RemClassRegistry.RegisterSerializeOptions(DescriptorsMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(NODEID2, 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'NODEID2', 'NODEID');
  RemClassRegistry.RegisterXSClass(NODEID, 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'NODEID');
end;

procedure RegisterTypeProc3;
begin
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfNODE_TYPE), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'ArrayOfNODE_TYPE');
  RemClassRegistry.RegisterXSClass(GetParentByTypesMessageRequest, 'http://tempuri.org/', 'GetParentByTypesMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetParentByTypesMessageRequest), 'types', '[ArrayItemName="NODE_TYPE"]');
  RemClassRegistry.RegisterSerializeOptions(GetParentByTypesMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(JobStatus), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'JobStatus');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfJobStatus), 'http://schemas.datacontract.org/2004/07/CASCommonObjects', 'ArrayOfJobStatus');
  RemClassRegistry.RegisterXSClass(GetJobsMessageRequest, 'http://tempuri.org/', 'GetJobsMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetJobsMessageRequest), 'filter', '[ArrayItemName="JobStatus"]');
  RemClassRegistry.RegisterSerializeOptions(GetJobsMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDescriptorBase), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfDescriptorBase');
  RemClassRegistry.RegisterXSClass(DescriptorsMessageResponse, 'http://tempuri.org/', 'DescriptorsMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DescriptorsMessageResponse), 'descriptors', '[ArrayItemName="DescriptorBase"]');
  RemClassRegistry.RegisterSerializeOptions(DescriptorsMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DescriptorBase2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'DescriptorBase2', 'DescriptorBase');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DescriptorBase2), 'Name_', '[ExtName="Name"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DescriptorBase2), 'children', '[ArrayItemName="DescriptorBase"]');
  RemClassRegistry.RegisterXSClass(Presets2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'Presets2', 'Presets');
  RemClassRegistry.RegisterXSClass(Descriptor2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'Descriptor2', 'Descriptor');
  RemClassRegistry.RegisterXSClass(DescriptorGroup2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'DescriptorGroup2', 'DescriptorGroup');
  RemClassRegistry.RegisterXSInfo(TypeInfo(VIDEO_TRACK), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'VIDEO_TRACK');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SCRIPT_TRACK), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SCRIPT_TRACK');
  RemClassRegistry.RegisterXSInfo(TypeInfo(AudioTrackType), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'AudioTrackType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(AUDIO_TRACK), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'AUDIO_TRACK');
  RemClassRegistry.RegisterXSClass(NodeBase2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'NodeBase2', 'NodeBase');
  RemClassRegistry.RegisterXSClass(Node2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'Node2', 'Node');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Node2), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(GraphicNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'GraphicNode2', 'GraphicNode');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GraphicNode2), 'In_', '[ExtName="In"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GraphicNode2), 'Out_', '[ExtName="Out"]');
  RemClassRegistry.RegisterXSClass(TitlerNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'TitlerNode2', 'TitlerNode');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(TitlerNode2), 'In_', '[ExtName="In"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(TitlerNode2), 'Out_', '[ExtName="Out"]');
  RemClassRegistry.RegisterXSClass(EmptyClipNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'EmptyClipNode2', 'EmptyClipNode');
  RemClassRegistry.RegisterXSClass(LabelNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'LabelNode2', 'LabelNode');
  RemClassRegistry.RegisterXSClass(DocumentNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'DocumentNode2', 'DocumentNode');
  RemClassRegistry.RegisterXSClass(TrackNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'TrackNode2', 'TrackNode');
  RemClassRegistry.RegisterXSClass(ScriptTrackNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ScriptTrackNode2', 'ScriptTrackNode');
  RemClassRegistry.RegisterXSClass(AudioTrackNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'AudioTrackNode2', 'AudioTrackNode');
  RemClassRegistry.RegisterXSClass(VideoTrackNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'VideoTrackNode2', 'VideoTrackNode');
  RemClassRegistry.RegisterXSClass(LayerNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'LayerNode2', 'LayerNode');
  RemClassRegistry.RegisterXSClass(EffectNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'EffectNode2', 'EffectNode');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(EffectNode2), 'Keyframes', '[ArrayItemName="Keyframe"]');
  RemClassRegistry.RegisterXSClass(SearchQueryNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SearchQueryNode2', 'SearchQueryNode');
  RemClassRegistry.RegisterXSClass(MosNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MosNode2', 'MosNode');
  RemClassRegistry.RegisterXSClass(StoryRundownNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'StoryRundownNode2', 'StoryRundownNode');
  RemClassRegistry.RegisterXSClass(TextFeedNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'TextFeedNode2', 'TextFeedNode');
  RemClassRegistry.RegisterXSClass(RundownNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'RundownNode2', 'RundownNode');
  RemClassRegistry.RegisterXSClass(DayTemplateNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'DayTemplateNode2', 'DayTemplateNode');
  RemClassRegistry.RegisterXSClass(OradCommonNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradCommonNode2', 'OradCommonNode');
  RemClassRegistry.RegisterXSClass(OradDdrItemNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradDdrItemNode2', 'OradDdrItemNode');
  RemClassRegistry.RegisterXSClass(OradAudioItemNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradAudioItemNode2', 'OradAudioItemNode');
  RemClassRegistry.RegisterXSClass(OradRundownNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradRundownNode2', 'OradRundownNode');
  RemClassRegistry.RegisterXSClass(OradExternalItemNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradExternalItemNode2', 'OradExternalItemNode');
  RemClassRegistry.RegisterXSClass(OradTickerItemNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradTickerItemNode2', 'OradTickerItemNode');
  RemClassRegistry.RegisterXSClass(OradTickerNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradTickerNode2', 'OradTickerNode');
  RemClassRegistry.RegisterXSClass(OradPageNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradPageNode2', 'OradPageNode');
  RemClassRegistry.RegisterXSClass(OradGraphicItemNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradGraphicItemNode2', 'OradGraphicItemNode');
  RemClassRegistry.RegisterXSClass(OradDatasetNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradDatasetNode2', 'OradDatasetNode');
  RemClassRegistry.RegisterXSClass(OradSceneNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradSceneNode2', 'OradSceneNode');
  RemClassRegistry.RegisterXSClass(Orad3DPlayNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'Orad3DPlayNode2', 'Orad3DPlayNode');
  RemClassRegistry.RegisterXSClass(OradTransitionNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradTransitionNode2', 'OradTransitionNode');
  RemClassRegistry.RegisterXSClass(OradDatalinkNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradDatalinkNode2', 'OradDatalinkNode');
  RemClassRegistry.RegisterXSClass(OradDataqueryNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradDataqueryNode2', 'OradDataqueryNode');
  RemClassRegistry.RegisterXSClass(ExtEventNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ExtEventNode2', 'ExtEventNode');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ExtEventNode2), 'In_', '[ExtName="In"]');
  RemClassRegistry.RegisterXSClass(EffectExNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'EffectExNode2', 'EffectExNode');
  RemClassRegistry.RegisterXSClass(JobDropFolderNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'JobDropFolderNode2', 'JobDropFolderNode');
  RemClassRegistry.RegisterXSClass(JobNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'JobNode2', 'JobNode');
  RemClassRegistry.RegisterXSClass(LiveClipNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'LiveClipNode2', 'LiveClipNode');
  RemClassRegistry.RegisterXSClass(ScriptClipNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ScriptClipNode2', 'ScriptClipNode');
  RemClassRegistry.RegisterXSClass(JobSubjectNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'JobSubjectNode2', 'JobSubjectNode');
  RemClassRegistry.RegisterXSClass(RefNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'RefNode2', 'RefNode');
  RemClassRegistry.RegisterXSClass(ClipBinNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ClipBinNode2', 'ClipBinNode');
  RemClassRegistry.RegisterXSClass(MetadataSetObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MetadataSetObject2', 'MetadataSetObject');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MetadataSetObject2), 'metadata', '[ArrayItemName="MetadataObject"]');
  RemClassRegistry.RegisterXSClass(JobCreationInfoObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'JobCreationInfoObject2', 'JobCreationInfoObject');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(JobCreationInfoObject2), 'PossibleNodesTypes', '[ArrayItemName="NODE_TYPE"]');
  RemClassRegistry.RegisterXSClass(JobCreationInfoObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'JobCreationInfoObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfstring), 'http://schemas.microsoft.com/2003/10/Serialization/Arrays', 'ArrayOfstring');
  RemClassRegistry.RegisterXSClass(EnumExportPluginsMessageResponse, 'http://tempuri.org/', 'EnumExportPluginsMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(EnumExportPluginsMessageResponse), 'plugins', '[ArrayItemName="string"]');
  RemClassRegistry.RegisterSerializeOptions(EnumExportPluginsMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfint), 'http://schemas.microsoft.com/2003/10/Serialization/Arrays', 'ArrayOfint');
  RemClassRegistry.RegisterXSClass(SubTypeRelationsParentsMessageResponse, 'http://tempuri.org/', 'SubTypeRelationsParentsMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SubTypeRelationsParentsMessageResponse), 'subtypes', '[ArrayItemName="int"]');
  RemClassRegistry.RegisterSerializeOptions(SubTypeRelationsParentsMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SubTypeRelationsMessageResponse, 'http://tempuri.org/', 'SubTypeRelationsMessageResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SubTypeRelationsMessageResponse), 'subtypes', '[ArrayItemName="int"]');
  RemClassRegistry.RegisterSerializeOptions(SubTypeRelationsMessageResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(KeyValueOfJOB_FOLDER_TYPEJobCreationInfoObject_SRNRwcyb, 'http://schemas.microsoft.com/2003/10/Serialization/Arrays', 'KeyValueOfJOB_FOLDER_TYPEJobCreationInfoObject_SRNRwcyb');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfKeyValueOfJOB_FOLDER_TYPEJobCreationInfoObject_SRNRwcyb), 'http://schemas.microsoft.com/2003/10/Serialization/Arrays', 'ArrayOfKeyValueOfJOB_FOLDER_TYPEJobCreationInfoObject_SRNRwcyb');
  RemClassRegistry.RegisterXSClass(BinNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'BinNode2', 'BinNode');
  RemClassRegistry.RegisterXSClass(MogClipFields2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MogClipFields2', 'MogClipFields');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MogClipFields2), 'uses_', '[ExtName="uses"]');
  RemClassRegistry.RegisterXSClass(MixObjext2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MixObjext2', 'MixObjext');
  RemClassRegistry.RegisterXSClass(SequenceNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SequenceNode2', 'SequenceNode');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SequenceNode2), 'In_', '[ExtName="In"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SequenceNode2), 'Out_', '[ExtName="Out"]');
  RemClassRegistry.RegisterXSClass(MultiClipNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MultiClipNode2', 'MultiClipNode');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MultiClipNode2), 'In_', '[ExtName="In"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MultiClipNode2), 'Out_', '[ExtName="Out"]');
  RemClassRegistry.RegisterXSClass(ClipNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ClipNode2', 'ClipNode');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ClipNode2), 'In_', '[ExtName="In"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ClipNode2), 'Out_', '[ExtName="Out"]');
  RemClassRegistry.RegisterXSClass(MogNode2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MogNode2', 'MogNode');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MogNode2), 'uses_', '[ExtName="uses"]');
  RemClassRegistry.RegisterXSClass(FileDescObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'FileDescObject2', 'FileDescObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfFileDescObject), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfFileDescObject');
  RemClassRegistry.RegisterXSClass(FileSetObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'FileSetObject2', 'FileSetObject');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(FileSetObject2), 'files', '[ArrayItemName="FileDescObject"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(FileSetObject2), 'type_', '[ExtName="type"]');
  RemClassRegistry.RegisterXSClass(EffectNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'EffectNode');
  RemClassRegistry.RegisterXSClass(TitlerNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'TitlerNode');
  RemClassRegistry.RegisterXSClass(EffectExNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'EffectExNode');
  RemClassRegistry.RegisterXSClass(Keyframe, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'Keyframe');
  RemClassRegistry.RegisterXSClass(GraphicNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'GraphicNode');
  RemClassRegistry.RegisterXSClass(ScriptTrackNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ScriptTrackNode');
  RemClassRegistry.RegisterXSClass(AudioTrackNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'AudioTrackNode');
  RemClassRegistry.RegisterXSClass(LabelNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'LabelNode');
  RemClassRegistry.RegisterXSClass(EmptyClipNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'EmptyClipNode');
  RemClassRegistry.RegisterXSClass(JobDropFolderNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'JobDropFolderNode');
  RemClassRegistry.RegisterXSClass(StoryRundownNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'StoryRundownNode');
  RemClassRegistry.RegisterXSClass(ExtEventNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ExtEventNode');
  RemClassRegistry.RegisterXSClass(SearchQueryNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SearchQueryNode');
  RemClassRegistry.RegisterXSClass(TextFeedNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'TextFeedNode');
  RemClassRegistry.RegisterXSClass(ScriptClipNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ScriptClipNode');
  RemClassRegistry.RegisterXSClass(JobSubjectNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'JobSubjectNode');
  RemClassRegistry.RegisterXSClass(JobNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'JobNode');
  RemClassRegistry.RegisterXSClass(LiveClipNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'LiveClipNode');
  RemClassRegistry.RegisterXSClass(RefNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'RefNode');
  RemClassRegistry.RegisterXSClass(ClipNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ClipNode');
  RemClassRegistry.RegisterXSClass(FileDescObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'FileDescObject');
  RemClassRegistry.RegisterXSClass(MogClipFields, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MogClipFields');
end;

procedure RegisterTypeProc4;
begin
  RemClassRegistry.RegisterXSClass(MixObjext, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MixObjext');
  RemClassRegistry.RegisterXSClass(FileSetObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'FileSetObject');
  RemClassRegistry.RegisterXSClass(ClipBinNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ClipBinNode');
  RemClassRegistry.RegisterXSClass(NodeBase, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'NodeBase');
  RemClassRegistry.RegisterXSClass(MogNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MogNode');
  RemClassRegistry.RegisterXSClass(BinNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'BinNode');
  RemClassRegistry.RegisterXSClass(MultiClipNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MultiClipNode');
  RemClassRegistry.RegisterXSClass(LayerNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'LayerNode');
  RemClassRegistry.RegisterXSClass(DescriptorGroup, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'DescriptorGroup');
  RemClassRegistry.RegisterXSClass(VideoTrackNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'VideoTrackNode');
  RemClassRegistry.RegisterXSClass(TrackNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'TrackNode');
  RemClassRegistry.RegisterXSClass(Descriptor, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'Descriptor');
  RemClassRegistry.RegisterXSClass(DocumentNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'DocumentNode');
  RemClassRegistry.RegisterXSClass(SequenceNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SequenceNode');
  RemClassRegistry.RegisterXSClass(DescriptorBase, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'DescriptorBase');
  RemClassRegistry.RegisterXSClass(Presets, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'Presets');
  RemClassRegistry.RegisterXSClass(SearchNodesListResult, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SearchNodesListResult');
  RemClassRegistry.RegisterXSClass(Search2Parameters, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'Search2Parameters');
  RemClassRegistry.RegisterXSClass(SearchPagerParameters, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SearchPagerParameters');
  RemClassRegistry.RegisterXSClass(SearchListResult, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SearchListResult');
  RemClassRegistry.RegisterXSClass(Search2Result, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'Search2Result');
  RemClassRegistry.RegisterXSClass(SearchParameters, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SearchParameters');
  RemClassRegistry.RegisterXSClass(MetadataObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MetadataObject');
  RemClassRegistry.RegisterXSClass(GetRecentNodesParameters, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'GetRecentNodesParameters');
  RemClassRegistry.RegisterXSClass(SearchResult, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SearchResult');
  RemClassRegistry.RegisterXSClass(SubTypeObjects, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SubTypeObjects');
  RemClassRegistry.RegisterXSClass(RenameUpdate, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'RenameUpdate');
  RemClassRegistry.RegisterXSClass(ChildrenDeletedUpdate, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ChildrenDeletedUpdate');
  RemClassRegistry.RegisterXSClass(PredefinedPropertyObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'PredefinedPropertyObject');
  RemClassRegistry.RegisterXSClass(FieldUpdate, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'FieldUpdate');
  RemClassRegistry.RegisterXSClass(ChildrenInsertedUpdate, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ChildrenInsertedUpdate');
  RemClassRegistry.RegisterXSClass(TVFormatObjects, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'TVFormatObjects');
  RemClassRegistry.RegisterXSClass(SubTypeObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SubTypeObject');
  RemClassRegistry.RegisterXSClass(BaseUpdate, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'BaseUpdate');
  RemClassRegistry.RegisterXSClass(TVFormatObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'TVFormatObject');
  RemClassRegistry.RegisterXSClass(OradPageNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradPageNode');
  RemClassRegistry.RegisterXSClass(OradDataqueryNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradDataqueryNode');
  RemClassRegistry.RegisterXSClass(OradDatasetNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradDatasetNode');
  RemClassRegistry.RegisterXSClass(OradTickerNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradTickerNode');
  RemClassRegistry.RegisterXSClass(OradDatalinkNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradDatalinkNode');
  RemClassRegistry.RegisterXSClass(RundownNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'RundownNode');
  RemClassRegistry.RegisterXSClass(MosNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MosNode');
  RemClassRegistry.RegisterXSClass(OradCommonNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradCommonNode');
  RemClassRegistry.RegisterXSClass(DayTemplateNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'DayTemplateNode');
  RemClassRegistry.RegisterXSClass(OradGraphicItemNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradGraphicItemNode');
  RemClassRegistry.RegisterXSClass(OradTransitionNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradTransitionNode');
  RemClassRegistry.RegisterXSClass(OradSceneNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradSceneNode');
  RemClassRegistry.RegisterXSClass(MetadataSetObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MetadataSetObject');
  RemClassRegistry.RegisterXSClass(Orad3DPlayNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'Orad3DPlayNode');
  RemClassRegistry.RegisterXSClass(OradRundownNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradRundownNode');
  RemClassRegistry.RegisterXSClass(OradAudioItemNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradAudioItemNode');
  RemClassRegistry.RegisterXSClass(OradTickerItemNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradTickerItemNode');
  RemClassRegistry.RegisterXSClass(OradExternalItemNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradExternalItemNode');
  RemClassRegistry.RegisterXSClass(OradDdrItemNode, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'OradDdrItemNode');
  RemClassRegistry.RegisterXSClass(Node, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'Node');
  RemClassRegistry.RegisterXSClass(MpegProfileObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MpegProfileObject2', 'MpegProfileObject');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MpegProfileObject2), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MpegProfileObject2), 'type_', '[ExtName="type"]');
  RemClassRegistry.RegisterXSClass(MpegProfileObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MpegProfileObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfMpegProfileObject), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfMpegProfileObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfMpegProfile_TVFormatObject), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfMpegProfile_TVFormatObject');
  RemClassRegistry.RegisterXSClass(MpegProfile_TVFormatObjects2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MpegProfile_TVFormatObjects2', 'MpegProfile_TVFormatObjects');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MpegProfile_TVFormatObjects2), 'profiles', '[ArrayItemName="MpegProfile_TVFormatObject"]');
  RemClassRegistry.RegisterXSClass(MpegProfile_TVFormatObjects, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MpegProfile_TVFormatObjects');
  RemClassRegistry.RegisterXSClass(MpegProfileSetObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MpegProfileSetObject2', 'MpegProfileSetObject');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MpegProfileSetObject2), 'profiles', '[ArrayItemName="MpegProfileObject"]');
  RemClassRegistry.RegisterXSClass(MpegProfileSetObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MpegProfileSetObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfMappingTypeObject), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfMappingTypeObject');
  RemClassRegistry.RegisterXSClass(MetadataTemplate2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MetadataTemplate2', 'MetadataTemplate');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MetadataTemplate2), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MetadataTemplate2), 'type_', '[ExtName="type"]');
  RemClassRegistry.RegisterXSClass(MetadataTemplate, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MetadataTemplate');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfMetadataTemplate), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfMetadataTemplate');
  RemClassRegistry.RegisterXSClass(MetadataTemplateSetObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MetadataTemplateSetObject2', 'MetadataTemplateSetObject');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MetadataTemplateSetObject2), 'templates', '[ArrayItemName="MetadataTemplate"]');
  RemClassRegistry.RegisterXSClass(MetadataTemplateSetObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MetadataTemplateSetObject');
  RemClassRegistry.RegisterXSClass(MpegProfile_TVFormatObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MpegProfile_TVFormatObject2', 'MpegProfile_TVFormatObject');
  RemClassRegistry.RegisterXSClass(MpegProfile_TVFormatObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MpegProfile_TVFormatObject');
  RemClassRegistry.RegisterXSClass(WorkflowStepObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'WorkflowStepObject2', 'WorkflowStepObject');
  RemClassRegistry.RegisterXSClass(WorkflowStepObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'WorkflowStepObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfEditorObject), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfEditorObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfWorkflowStepObject), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfWorkflowStepObject');
  RemClassRegistry.RegisterXSClass(WorkflowStepObjects2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'WorkflowStepObjects2', 'WorkflowStepObjects');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(WorkflowStepObjects2), 'workflowSteps', '[ArrayItemName="WorkflowStepObject"]');
  RemClassRegistry.RegisterXSClass(WorkflowStepObjects, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'WorkflowStepObjects');
  RemClassRegistry.RegisterXSClass(EditorObjects2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'EditorObjects2', 'EditorObjects');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(EditorObjects2), 'editors', '[ArrayItemName="EditorObject"]');
  RemClassRegistry.RegisterXSClass(EditorObjects, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'EditorObjects');
  RemClassRegistry.RegisterXSClass(PresenterObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'PresenterObject2', 'PresenterObject');
  RemClassRegistry.RegisterXSClass(PresenterObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'PresenterObject');
  RemClassRegistry.RegisterXSClass(EditorObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'EditorObject2', 'EditorObject');
  RemClassRegistry.RegisterXSClass(EditorObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'EditorObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfPresenterObject), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfPresenterObject');
  RemClassRegistry.RegisterXSClass(PresenterObjects2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'PresenterObjects2', 'PresenterObjects');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PresenterObjects2), 'presenters', '[ArrayItemName="PresenterObject"]');
  RemClassRegistry.RegisterXSClass(PresenterObjects, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'PresenterObjects');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfUserAction), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfUserAction');
  RemClassRegistry.RegisterXSClass(UserActionObjects2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'UserActionObjects2', 'UserActionObjects');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(UserActionObjects2), 'actions', '[ArrayItemName="UserAction"]');
  RemClassRegistry.RegisterXSClass(UserActionObjects, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'UserActionObjects');
  RemClassRegistry.RegisterXSClass(UserAction2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'UserAction2', 'UserAction');
  RemClassRegistry.RegisterXSClass(UserAction, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'UserAction');
  RemClassRegistry.RegisterXSClass(LogTemplate2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'LogTemplate2', 'LogTemplate');
  RemClassRegistry.RegisterXSClass(LogTemplate, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'LogTemplate');
  RemClassRegistry.RegisterXSClass(ColorParameter2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ColorParameter2', 'ColorParameter');
  RemClassRegistry.RegisterXSClass(ColorParameter, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ColorParameter');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfColorParameter), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfColorParameter');
  RemClassRegistry.RegisterXSClass(ColorParameterObjects2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ColorParameterObjects2', 'ColorParameterObjects');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ColorParameterObjects2), 'parameters', '[ArrayItemName="ColorParameter"]');
  RemClassRegistry.RegisterXSClass(ColorParameterObjects, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ColorParameterObjects');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfLogTemplate), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfLogTemplate');
  RemClassRegistry.RegisterXSClass(LogTemplateObjects2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'LogTemplateObjects2', 'LogTemplateObjects');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(LogTemplateObjects2), 'templates', '[ArrayItemName="LogTemplate"]');
end;

procedure RegisterTypeProc5;
begin
  RemClassRegistry.RegisterXSClass(LogTemplateObjects, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'LogTemplateObjects');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfPropertyObjectBase), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfPropertyObjectBase');
  RemClassRegistry.RegisterXSClass(PropertySetObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'PropertySetObject2', 'PropertySetObject');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PropertySetObject2), 'properties', '[ArrayItemName="PropertyObjectBase"]');
  RemClassRegistry.RegisterXSClass(PropertySetObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'PropertySetObject');
  RemClassRegistry.RegisterXSClass(MappingObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MappingObject2', 'MappingObject');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MappingObject2), 'type_', '[ExtName="type"]');
  RemClassRegistry.RegisterXSClass(MappingObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MappingObject');
  RemClassRegistry.RegisterXSClass(MosObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MosObject2', 'MosObject');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MosObject2), 'type_', '[ExtName="type"]');
  RemClassRegistry.RegisterXSClass(MosObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MosObject');
  RemClassRegistry.RegisterXSClass(MappingTypeObjects2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MappingTypeObjects2', 'MappingTypeObjects');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MappingTypeObjects2), 'mappings', '[ArrayItemName="MappingTypeObject"]');
  RemClassRegistry.RegisterXSClass(MappingTypeObjects, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MappingTypeObjects');
  RemClassRegistry.RegisterXSClass(MappingTypeObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MappingTypeObject2', 'MappingTypeObject');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MappingTypeObject2), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(MappingTypeObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MappingTypeObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfMosObject), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfMosObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTag), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfTag');
  RemClassRegistry.RegisterXSClass(TagsCloudObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'TagsCloudObject2', 'TagsCloudObject');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(TagsCloudObject2), 'tags', '[ArrayItemName="Tag"]');
  RemClassRegistry.RegisterXSClass(TagsCloudObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'TagsCloudObject');
  RemClassRegistry.RegisterXSClass(MosObjects2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MosObjects2', 'MosObjects');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MosObjects2), 'objects', '[ArrayItemName="MosObject"]');
  RemClassRegistry.RegisterXSClass(MosObjects, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MosObjects');
  RemClassRegistry.RegisterXSClass(Tag2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'Tag2', 'Tag');
  RemClassRegistry.RegisterXSClass(Tag, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'Tag');
  RemClassRegistry.RegisterXSClass(AsyncCommandContext2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'AsyncCommandContext2', 'AsyncCommandContext');
  RemClassRegistry.RegisterXSClass(AsyncCommandContext, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'AsyncCommandContext');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAsyncCommandResult), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfAsyncCommandResult');
  RemClassRegistry.RegisterXSClass(GetAsyncCommandsResultResponse, 'http://tempuri.org/', 'GetAsyncCommandsResultResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetAsyncCommandsResultResponse), 'commandsResult', '[ArrayItemName="AsyncCommandResult"]');
  RemClassRegistry.RegisterSerializeOptions(GetAsyncCommandsResultResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ASYNC_COMMAND_STATUS), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ASYNC_COMMAND_STATUS');
  RemClassRegistry.RegisterXSClass(AsyncCommandResult2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'AsyncCommandResult2', 'AsyncCommandResult');
  RemClassRegistry.RegisterXSClass(AsyncCommandResult, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'AsyncCommandResult');
  RemClassRegistry.RegisterXSClass(LogData2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'LogData2', 'LogData');
  RemClassRegistry.RegisterXSClass(LogData, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'LogData');
  RemClassRegistry.RegisterXSClass(JobProcessorGroupObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'JobProcessorGroupObject2', 'JobProcessorGroupObject');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(JobProcessorGroupObject2), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(JobProcessorGroupObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'JobProcessorGroupObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfJobProcessorGroupObject), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfJobProcessorGroupObject');
  RemClassRegistry.RegisterXSClass(PropertyObjectByName2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'PropertyObjectByName2', 'PropertyObjectByName');
  RemClassRegistry.RegisterXSClass(PropertyObjectByName, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'PropertyObjectByName');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfPropertyObjectByName), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfPropertyObjectByName');
  RemClassRegistry.RegisterXSClass(SetPropertiesByNameMessageRequest, 'http://tempuri.org/', 'SetPropertiesByNameMessageRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SetPropertiesByNameMessageRequest), 'properties', '[ArrayItemName="PropertyObjectByName"]');
  RemClassRegistry.RegisterSerializeOptions(SetPropertiesByNameMessageRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(JobProcessorGroupObjects2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'JobProcessorGroupObjects2', 'JobProcessorGroupObjects');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(JobProcessorGroupObjects2), 'jobProcessorGroup', '[ArrayItemName="JobProcessorGroupObject"]');
  RemClassRegistry.RegisterXSClass(JobProcessorGroupObjects, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'JobProcessorGroupObjects');
  RemClassRegistry.RegisterXSClass(JobCreationInfoObjects2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'JobCreationInfoObjects2', 'JobCreationInfoObjects');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(JobCreationInfoObjects2), 'objects', '[ArrayItemName="KeyValueOfJOB_FOLDER_TYPEJobCreationInfoObject_SRNRwcyb"]');
  RemClassRegistry.RegisterXSClass(JobCreationInfoObjects, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'JobCreationInfoObjects');
  RemClassRegistry.RegisterXSClass(MediaGroupObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MediaGroupObject2', 'MediaGroupObject');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MediaGroupObject2), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(MediaGroupObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MediaGroupObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfMediaGroupObject), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfMediaGroupObject');
  RemClassRegistry.RegisterXSClass(MediaGroupObjects2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MediaGroupObjects2', 'MediaGroupObjects');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MediaGroupObjects2), 'mediaGroup', '[ArrayItemName="MediaGroupObject"]');
  RemClassRegistry.RegisterXSClass(MediaGroupObjects, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MediaGroupObjects');
  RemClassRegistry.RegisterXSClass(SlaveDatabaseObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SlaveDatabaseObject2', 'SlaveDatabaseObject');
  RemClassRegistry.RegisterXSClass(SlaveDatabaseObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SlaveDatabaseObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfBaseCommand), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfBaseCommand');
  RemClassRegistry.RegisterXSClass(CommandsChain2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'CommandsChain2', 'CommandsChain');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CommandsChain2), '_commands', '[ArrayItemName="BaseCommand"]');
  RemClassRegistry.RegisterXSClass(CommandsChain, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'CommandsChain');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfSlaveDatabaseObject), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfSlaveDatabaseObject');
  RemClassRegistry.RegisterXSClass(StoryTypeObject2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'StoryTypeObject2', 'StoryTypeObject');
  RemClassRegistry.RegisterXSClass(StoryTypeObject, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'StoryTypeObject');
  RemClassRegistry.RegisterXSClass(SlaveDatabaseObjects2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SlaveDatabaseObjects2', 'SlaveDatabaseObjects');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SlaveDatabaseObjects2), 'databases', '[ArrayItemName="SlaveDatabaseObject"]');
  RemClassRegistry.RegisterXSClass(SlaveDatabaseObjects, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SlaveDatabaseObjects');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfStoryTypeObject), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'ArrayOfStoryTypeObject');
  RemClassRegistry.RegisterXSClass(StoryTypeObjects2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'StoryTypeObjects2', 'StoryTypeObjects');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(StoryTypeObjects2), 'storyTypes', '[ArrayItemName="StoryTypeObject"]');
  RemClassRegistry.RegisterXSClass(StoryTypeObjects, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'StoryTypeObjects');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CommandType), 'http://schemas.datacontract.org/2004/07/MessageContracts', 'CommandType');
  RemClassRegistry.RegisterXSClass(BaseCommand2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'BaseCommand2', 'BaseCommand');
  RemClassRegistry.RegisterXSClass(BaseCommand, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'BaseCommand');
  RemClassRegistry.RegisterXSClass(RemoveTagCommand2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'RemoveTagCommand2', 'RemoveTagCommand');
  RemClassRegistry.RegisterXSClass(RemoveTagCommand, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'RemoveTagCommand');
  RemClassRegistry.RegisterXSClass(LockNodeCommand2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'LockNodeCommand2', 'LockNodeCommand');
  RemClassRegistry.RegisterXSClass(LockNodeCommand, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'LockNodeCommand');
  RemClassRegistry.RegisterXSClass(CreateJobCommand2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'CreateJobCommand2', 'CreateJobCommand');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CreateJobCommand2), '_subjectNodes', '[ArrayItemName="Node"]');
  RemClassRegistry.RegisterXSClass(CreateJobCommand, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'CreateJobCommand');
  RemClassRegistry.RegisterXSClass(AddTagCommand2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'AddTagCommand2', 'AddTagCommand');
  RemClassRegistry.RegisterXSClass(AddTagCommand, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'AddTagCommand');
  RemClassRegistry.RegisterXSClass(UnlockNodeCommand2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'UnlockNodeCommand2', 'UnlockNodeCommand');
  RemClassRegistry.RegisterXSClass(UnlockNodeCommand, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'UnlockNodeCommand');
  RemClassRegistry.RegisterXSClass(CopyNodeCommand2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'CopyNodeCommand2', 'CopyNodeCommand');
  RemClassRegistry.RegisterXSClass(CopyNodeCommand, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'CopyNodeCommand');
  RemClassRegistry.RegisterXSClass(SetPropertiesCommand2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SetPropertiesCommand2', 'SetPropertiesCommand');
  RemClassRegistry.RegisterXSClass(SetPropertiesCommand, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SetPropertiesCommand');
  RemClassRegistry.RegisterXSClass(CreateNodeByNodeCommand2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'CreateNodeByNodeCommand2', 'CreateNodeByNodeCommand');
  RemClassRegistry.RegisterXSClass(CreateNodeByNodeCommand, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'CreateNodeByNodeCommand');
  RemClassRegistry.RegisterXSClass(MoveNodeCommand2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MoveNodeCommand2', 'MoveNodeCommand');
  RemClassRegistry.RegisterXSClass(MoveNodeCommand, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'MoveNodeCommand');
  RemClassRegistry.RegisterXSClass(SetPropertyCommand2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SetPropertyCommand2', 'SetPropertyCommand');
  RemClassRegistry.RegisterXSClass(SetPropertyCommand, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'SetPropertyCommand');
  RemClassRegistry.RegisterXSClass(DeleteNodeCommand2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'DeleteNodeCommand2', 'DeleteNodeCommand');
  RemClassRegistry.RegisterXSClass(DeleteNodeCommand, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'DeleteNodeCommand');
  RemClassRegistry.RegisterXSClass(CreateNodeCommand2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'CreateNodeCommand2', 'CreateNodeCommand');
  RemClassRegistry.RegisterXSClass(CreateNodeCommand, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'CreateNodeCommand');
  RemClassRegistry.RegisterXSClass(RenameNodeCommand2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'RenameNodeCommand2', 'RenameNodeCommand');
  RemClassRegistry.RegisterXSClass(RenameNodeCommand, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'RenameNodeCommand');
  RemClassRegistry.RegisterXSClass(RestoreNodeCommand2, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'RestoreNodeCommand2', 'RestoreNodeCommand');
  RemClassRegistry.RegisterXSClass(RestoreNodeCommand, 'http://schemas.datacontract.org/2004/07/MessageContracts', 'RestoreNodeCommand');
end;

procedure RegisterTypeProc6;
begin
end;

initialization
  { ICinegyDataAccessService }
  InvRegistry.RegisterInterface(TypeInfo(ICinegyDataAccessService), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ICinegyDataAccessService), 'http://tempuri.org/ICinegyDataAccessService/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ICinegyDataAccessService), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(ICinegyDataAccessService), ioLiteral);
  { ICinegyDataAccessService.Export_ }
  InvRegistry.RegisterMethodInfo(TypeInfo(ICinegyDataAccessService), 'Export_', 'Export', '');
  { ICinegyDataAccessServiceCompressed }
  InvRegistry.RegisterInterface(TypeInfo(ICinegyDataAccessServiceCompressed), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ICinegyDataAccessServiceCompressed), 'http://tempuri.org/ICinegyDataAccessService/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ICinegyDataAccessServiceCompressed), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(ICinegyDataAccessServiceCompressed), ioLiteral);
  InvRegistry.RegisterInvokeOptions(TypeInfo(ICinegyDataAccessServiceCompressed), ioSOAP12);
  { ICinegyDataAccessServiceCompressed.Export_ }
  InvRegistry.RegisterMethodInfo(TypeInfo(ICinegyDataAccessServiceCompressed), 'Export_', 'Export', '');
  RegisterTypeProc0;
  RegisterTypeProc1;
  RegisterTypeProc2;
  RegisterTypeProc3;
  RegisterTypeProc4;
  RegisterTypeProc5;

end.