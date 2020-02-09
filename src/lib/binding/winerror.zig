pub const FACILITY_NULL = 0;
pub const FACILITY_RPC = 1;
pub const FACILITY_DISPATCH = 2;
pub const FACILITY_STORAGE = 3;
pub const FACILITY_ITF = 4;
pub const FACILITY_WIN32 = 7;
pub const FACILITY_WINDOWS = 8;
pub const FACILITY_SSPI = 9;
pub const FACILITY_SECURITY = 9;
pub const FACILITY_CONTROL = 10;
pub const FACILITY_CERT = 11;
pub const FACILITY_INTERNET = 12;
pub const FACILITY_MEDIASERVER = 13;
pub const FACILITY_MSMQ = 14;
pub const FACILITY_SETUPAPI = 15;
pub const FACILITY_SCARD = 16;
pub const FACILITY_COMPLUS = 17;
pub const FACILITY_AAF = 18;
pub const FACILITY_URT = 19;
pub const FACILITY_ACS = 20;
pub const FACILITY_DPLAY = 21;
pub const FACILITY_UMI = 22;
pub const FACILITY_SXS = 23;
pub const FACILITY_WINDOWS_CE = 24;
pub const FACILITY_HTTP = 25;
pub const FACILITY_USERMODE_COMMONLOG = 26;
pub const FACILITY_WER = 27;
pub const FACILITY_USERMODE_FILTER_MANAGER = 31;
pub const FACILITY_BACKGROUNDCOPY = 32;
pub const FACILITY_CONFIGURATION = 33;
pub const FACILITY_WIA = 33;
pub const FACILITY_STATE_MANAGEMENT = 34;
pub const FACILITY_METADIRECTORY = 35;
pub const FACILITY_WINDOWSUPDATE = 36;
pub const FACILITY_DIRECTORYSERVICE = 37;
pub const FACILITY_GRAPHICS = 38;
pub const FACILITY_SHELL = 39;
pub const FACILITY_NAP = 39;
pub const FACILITY_TPM_SERVICES = 40;
pub const FACILITY_TPM_SOFTWARE = 41;
pub const FACILITY_UI = 42;
pub const FACILITY_XAML = 43;
pub const FACILITY_ACTION_QUEUE = 44;
pub const FACILITY_PLA = 48;
pub const FACILITY_WINDOWS_SETUP = 48;
pub const FACILITY_FVE = 49;
pub const FACILITY_FWP = 50;
pub const FACILITY_WINRM = 51;
pub const FACILITY_NDIS = 52;
pub const FACILITY_USERMODE_HYPERVISOR = 53;
pub const FACILITY_CMI = 54;
pub const FACILITY_USERMODE_VIRTUALIZATION = 55;
pub const FACILITY_USERMODE_VOLMGR = 56;
pub const FACILITY_BCD = 57;
pub const FACILITY_USERMODE_VHD = 58;
pub const FACILITY_USERMODE_HNS = 59;
pub const FACILITY_SDIAG = 60;
pub const FACILITY_WEBSERVICES = 61;
pub const FACILITY_WINPE = 61;
pub const FACILITY_WPN = 62;
pub const FACILITY_WINDOWS_STORE = 63;
pub const FACILITY_INPUT = 64;
pub const FACILITY_EAP = 66;
pub const FACILITY_WINDOWS_DEFENDER = 80;
pub const FACILITY_OPC = 81;
pub const FACILITY_XPS = 82;
pub const FACILITY_MBN = 84;
pub const FACILITY_POWERSHELL = 84;
pub const FACILITY_RAS = 83;
pub const FACILITY_P2P_INT = 98;
pub const FACILITY_P2P = 99;
pub const FACILITY_DAF = 100;
pub const FACILITY_BLUETOOTH_ATT = 101;
pub const FACILITY_AUDIO = 102;
pub const FACILITY_STATEREPOSITORY = 103;
pub const FACILITY_VISUALCPP = 109;
pub const FACILITY_SCRIPT = 112;
pub const FACILITY_PARSE = 113;
pub const FACILITY_BLB = 120;
pub const FACILITY_BLB_CLI = 121;
pub const FACILITY_WSBAPP = 122;
pub const FACILITY_BLBUI = 128;
pub const FACILITY_USN = 129;
pub const FACILITY_USERMODE_VOLSNAP = 130;
pub const FACILITY_TIERING = 131;
pub const FACILITY_WSB_ONLINE = 133;
pub const FACILITY_ONLINE_ID = 134;
pub const FACILITY_DEVICE_UPDATE_AGENT = 135;
pub const FACILITY_DLS = 153;
pub const FACILITY_DELIVERY_OPTIMIZATION = 208;
pub const FACILITY_USERMODE_SPACES = 231;
pub const FACILITY_USER_MODE_SECURITY_CORE = 232;
pub const FACILITY_USERMODE_LICENSING = 234;
pub const FACILITY_SOS = 160;
pub const FACILITY_DEBUGGERS = 176;
pub const FACILITY_SPP = 256;
pub const FACILITY_RESTORE = 256;
pub const FACILITY_DMSERVER = 256;
pub const FACILITY_DEPLOYMENT_SERVICES_SERVER = 257;
pub const FACILITY_DEPLOYMENT_SERVICES_IMAGING = 258;
pub const FACILITY_DEPLOYMENT_SERVICES_MANAGEMENT = 259;
pub const FACILITY_DEPLOYMENT_SERVICES_UTIL = 260;
pub const FACILITY_DEPLOYMENT_SERVICES_BINLSVC = 261;
pub const FACILITY_DEPLOYMENT_SERVICES_PXE = 263;
pub const FACILITY_DEPLOYMENT_SERVICES_TFTP = 264;
pub const FACILITY_DEPLOYMENT_SERVICES_TRANSPORT_MANAGEMENT = 272;
pub const FACILITY_DEPLOYMENT_SERVICES_DRIVER_PROVISIONING = 278;
pub const FACILITY_DEPLOYMENT_SERVICES_MULTICAST_SERVER = 289;
pub const FACILITY_DEPLOYMENT_SERVICES_MULTICAST_CLIENT = 290;
pub const FACILITY_DEPLOYMENT_SERVICES_CONTENT_PROVIDER = 293;
pub const FACILITY_LINGUISTIC_SERVICES = 305;
pub const FACILITY_AUDIOSTREAMING = 1094;
pub const FACILITY_ACCELERATOR = 1536;
pub const FACILITY_WMAAECMA = 1996;
pub const FACILITY_DIRECTMUSIC = 2168;
pub const FACILITY_DIRECT3D10 = 2169;
pub const FACILITY_DXGI = 2170;
pub const FACILITY_DXGI_DDI = 2171;
pub const FACILITY_DIRECT3D11 = 2172;
pub const FACILITY_DIRECT3D11_DEBUG = 2173;
pub const FACILITY_DIRECT3D12 = 2174;
pub const FACILITY_DIRECT3D12_DEBUG = 2175;
pub const FACILITY_LEAP = 2184;
pub const FACILITY_AUDCLNT = 2185;
pub const FACILITY_WINCODEC_DWRITE_DWM = 2200;
pub const FACILITY_DIRECT2D = 2201;
pub const FACILITY_DEFRAG = 2304;
pub const FACILITY_USERMODE_SDBUS = 2305;
pub const FACILITY_JSCRIPT = 2306;
pub const FACILITY_PIDGENX = 2561;
pub const FACILITY_EAS = 85;
pub const FACILITY_WEB = 885;
pub const FACILITY_WEB_SOCKET = 886;
pub const FACILITY_MOBILE = 1793;
pub const FACILITY_SQLITE = 1967;
pub const FACILITY_UTC = 1989;
pub const FACILITY_WEP = 2049;
pub const FACILITY_SYNCENGINE = 2050;
pub const FACILITY_XBOX = 2339;
pub const FACILITY_PIX = 2748;

// The operation completed successfully.
pub const ERROR_SUCCESS = 0;
pub const NO_ERROR = 0;
pub const SEC_E_OK = 0;
pub const DS_S_SUCCESS = NO_ERROR;
pub const DNS_ERROR_RCODE_NO_ERROR = NO_ERROR;  

// Incorrect function.
pub const ERROR_INVALID_FUNCTION = 1;

// The system cannot find the file specified.
pub const ERROR_FILE_NOT_FOUND = 2;

// The system cannot find the path specified.
pub const ERROR_PATH_NOT_FOUND = 3;

// The system cannot open the file.
pub const ERROR_TOO_MANY_OPEN_FILES = 4;

// Access is denied.
pub const ERROR_ACCESS_DENIED = 5;

// The handle is invalid.
pub const ERROR_INVALID_HANDLE = 6;

// The storage control blocks were destroyed.
pub const ERROR_ARENA_TRASHED = 7;

// Not enough storage is available to process this command.
pub const ERROR_NOT_ENOUGH_MEMORY = 8;

// The storage control block address is invalid.
pub const ERROR_INVALID_BLOCK = 9;

// The environment is incorrect.
pub const ERROR_BAD_ENVIRONMENT = 10;

// An attempt was made to load a program with an incorrect format.
pub const ERROR_BAD_FORMAT = 11;

// The access code is invalid.
pub const ERROR_INVALID_ACCESS = 12;

// The data is invalid.
pub const ERROR_INVALID_DATA = 13;

// Not enough storage is available to complete this operation.
pub const ERROR_OUTOFMEMORY = 14;

// The system cannot find the drive specified.
pub const ERROR_INVALID_DRIVE = 15;

// The directory cannot be removed.
pub const ERROR_CURRENT_DIRECTORY = 16;

// The system cannot move the file to a different disk drive.
pub const ERROR_NOT_SAME_DEVICE = 17;

// There are no more files.
pub const ERROR_NO_MORE_FILES = 18;

// The media is write protected.
pub const ERROR_WRITE_PROTECT = 19;

// The system cannot find the device specified.
pub const ERROR_BAD_UNIT = 20;

// The device is not ready.
pub const ERROR_NOT_READY = 21;

// The device does not recognize the command.
pub const ERROR_BAD_COMMAND = 22;

// Data error (cyclic redundancy check).
pub const ERROR_CRC = 23;

// The program issued a command but the command length is incorrect.
pub const ERROR_BAD_LENGTH = 24;

// The drive cannot locate a specific area or track on the disk.
pub const ERROR_SEEK = 25;

// The specified disk or diskette cannot be accessed.
pub const ERROR_NOT_DOS_DISK = 26;

// The drive cannot find the sector requested.
pub const ERROR_SECTOR_NOT_FOUND = 27;

// The printer is out of paper.
pub const ERROR_OUT_OF_PAPER = 28;

// The system cannot write to the specified device.
pub const ERROR_WRITE_FAULT = 29;

// The system cannot read from the specified device.
pub const ERROR_READ_FAULT = 30;

// A device attached to the system is not functioning.
pub const ERROR_GEN_FAILURE = 31;

// The process cannot access the file because it is being used by another process.
pub const ERROR_SHARING_VIOLATION = 32;

// The process cannot access the file because another process has locked a portion of the file.
pub const ERROR_LOCK_VIOLATION = 33;

// Insert %2 (Volume Serial Number: %3) into drive %1.
pub const ERROR_WRONG_DISK = 34;

// Too many files opened for sharing.
pub const ERROR_SHARING_BUFFER_EXCEEDED = 36;

// Reached the end of the file.
pub const ERROR_HANDLE_EOF = 38;

// The disk is full.
pub const ERROR_HANDLE_DISK_FULL = 39;

// The request is not supported.
pub const ERROR_NOT_SUPPORTED = 50;

// Windows cannot find the network path. Verify that the network path is correct and the destination computer is not busy or turned off. If Windows still cannot find the network path, contact your network administrator.
pub const ERROR_REM_NOT_LIST = 51;

// You were not connected because a duplicate name exists on the network. If joining a domain, go to System in Control Panel to change the computer name and try again. If joining a workgroup, choose another workgroup name.
pub const ERROR_DUP_NAME = 52;

// The network path was not found.
pub const ERROR_BAD_NETPATH = 53;

// The network is busy.
pub const ERROR_NETWORK_BUSY = 54;

// The specified network resource or device is no longer available.
pub const ERROR_DEV_NOT_EXIST = 55;

// The network BIOS command limit has been reached.
pub const ERROR_TOO_MANY_CMDS = 56;

// A network adapter hardware error occurred.
pub const ERROR_ADAP_HDW_ERR = 57;

// The specified server cannot perform the requested operation.
pub const ERROR_BAD_NET_RESP = 58;

// An unexpected network error occurred.
pub const ERROR_UNEXP_NET_ERR = 59;

// The remote adapter is not compatible.
pub const ERROR_BAD_REM_ADAP = 60;

// The printer queue is full.
pub const ERROR_PRINTQ_FULL = 61;

// Space to store the file waiting to be printed is not available on the server.
pub const ERROR_NO_SPOOL_SPACE = 62;

// Your file waiting to be printed was deleted.
pub const ERROR_PRINT_CANCELLED = 63;

// The specified network name is no longer available.
pub const ERROR_NETNAME_DELETED = 64;

// Network access is denied.
pub const ERROR_NETWORK_ACCESS_DENIED = 65;

// The network resource type is not correct.
pub const ERROR_BAD_DEV_TYPE = 66;

// The network name cannot be found.
pub const ERROR_BAD_NET_NAME = 67;

// The name limit for the local computer network adapter card was exceeded.
pub const ERROR_TOO_MANY_NAMES = 68;

// The network BIOS session limit was exceeded.
pub const ERROR_TOO_MANY_SESS = 69;

// The remote server has been paused or is in the process of being started.
pub const ERROR_SHARING_PAUSED = 70;

// No more connections can be made to this remote computer at this time because there are already as many connections as the computer can accept.
pub const ERROR_REQ_NOT_ACCEP = 71;

// The specified printer or disk device has been paused.
pub const ERROR_REDIR_PAUSED = 72;

// The file exists.
pub const ERROR_FILE_EXISTS = 80;

// The directory or file cannot be created.
pub const ERROR_CANNOT_MAKE = 82;

// Fail on INT 24.
pub const ERROR_FAIL_I24 = 83;

// Storage to process this request is not available.
pub const ERROR_OUT_OF_STRUCTURES = 84;

// The local device name is already in use.
pub const ERROR_ALREADY_ASSIGNED = 85;

// The specified network password is not correct.
pub const ERROR_INVALID_PASSWORD = 86;

// The parameter is incorrect.
pub const ERROR_INVALID_PARAMETER = 87;

// A write fault occurred on the network.
pub const ERROR_NET_WRITE_FAULT = 88;

// The system cannot start another process at this time.
pub const ERROR_NO_PROC_SLOTS = 89;

// Cannot create another system semaphore.
pub const ERROR_TOO_MANY_SEMAPHORES = 100;

// The exclusive semaphore is owned by another process.
pub const ERROR_EXCL_SEM_ALREADY_OWNED = 101;

// The semaphore is set and cannot be closed.
pub const ERROR_SEM_IS_SET = 102;

// The semaphore cannot be set again.
pub const ERROR_TOO_MANY_SEM_REQUESTS = 103;

// Cannot request exclusive semaphores at interrupt time.
pub const ERROR_INVALID_AT_INTERRUPT_TIME = 104;

// The previous ownership of this semaphore has ended.
pub const ERROR_SEM_OWNER_DIED = 105;

// Insert the diskette for drive %1.
pub const ERROR_SEM_USER_LIMIT = 106;

// The program stopped because an alternate diskette was not inserted.
pub const ERROR_DISK_CHANGE = 107;

// The disk is in use or locked by another process.
pub const ERROR_DRIVE_LOCKED = 108;

// The pipe has been ended.
pub const ERROR_BROKEN_PIPE = 109;

// The system cannot open the device or file specified.
pub const ERROR_OPEN_FAILED = 110;

// The file name is too long.
pub const ERROR_BUFFER_OVERFLOW = 111;

// There is not enough space on the disk.
pub const ERROR_DISK_FULL = 112;

// No more internal file identifiers available.
pub const ERROR_NO_MORE_SEARCH_HANDLES = 113;

// The target internal file identifier is incorrect.
pub const ERROR_INVALID_TARGET_HANDLE = 114;

// The IOCTL call made by the application program is not correct.
pub const ERROR_INVALID_CATEGORY = 117;

// The verify-on-write switch parameter value is not correct.
pub const ERROR_INVALID_VERIFY_SWITCH = 118;

// The system does not support the command requested.
pub const ERROR_BAD_DRIVER_LEVEL = 119;

// This function is not supported on this system.
pub const ERROR_CALL_NOT_IMPLEMENTED = 120;

// The semaphore timeout period has expired.
pub const ERROR_SEM_TIMEOUT = 121;

// The data area passed to a system call is too small.
pub const ERROR_INSUFFICIENT_BUFFER = 122;

// The filename, directory name, or volume label syntax is incorrect.
pub const ERROR_INVALID_NAME = 123;

// The system call level is not correct.
pub const ERROR_INVALID_LEVEL = 124;

// The disk has no volume label.
pub const ERROR_NO_VOLUME_LABEL = 125;

// The specified module could not be found.
pub const ERROR_MOD_NOT_FOUND = 126;

// The specified procedure could not be found.
pub const ERROR_PROC_NOT_FOUND = 127;

// There are no child processes to wait for.
pub const ERROR_WAIT_NO_CHILDREN = 128;

// The %1 application cannot be run in Win32 mode.
pub const ERROR_CHILD_NOT_COMPLETE = 129;

// Attempt to use a file handle to an open disk partition for an operation other than raw disk I/O.
pub const ERROR_DIRECT_ACCESS_HANDLE = 130;

// An attempt was made to move the file pointer before the beginning of the file.
pub const ERROR_NEGATIVE_SEEK = 131;

// The file pointer cannot be set on the specified device or file.
pub const ERROR_SEEK_ON_DEVICE = 132;

// A JOIN or SUBST command cannot be used for a drive that contains previously joined drives.
pub const ERROR_IS_JOIN_TARGET = 133;

// An attempt was made to use a JOIN or SUBST command on a drive that has already been joined.
pub const ERROR_IS_JOINED = 134;

// An attempt was made to use a JOIN or SUBST command on a drive that has already been substituted.
pub const ERROR_IS_SUBSTED = 135;

// The system tried to delete the JOIN of a drive that is not joined.
pub const ERROR_NOT_JOINED = 136;

// The system tried to delete the substitution of a drive that is not substituted.
pub const ERROR_NOT_SUBSTED = 137;

// The system tried to join a drive to a directory on a joined drive.
pub const ERROR_JOIN_TO_JOIN = 138;

// The system tried to substitute a drive to a directory on a substituted drive.
pub const ERROR_SUBST_TO_SUBST = 139;

// The system tried to join a drive to a directory on a substituted drive.
pub const ERROR_JOIN_TO_SUBST = 140;

// The system tried to SUBST a drive to a directory on a joined drive.
pub const ERROR_SUBST_TO_JOIN = 141;

// The system cannot perform a JOIN or SUBST at this time.
pub const ERROR_BUSY_DRIVE = 142;

// The system cannot join or substitute a drive to or for a directory on the same drive.
pub const ERROR_SAME_DRIVE = 143;

// The directory is not a subdirectory of the root directory.
pub const ERROR_DIR_NOT_ROOT = 144;

// The directory is not empty.
pub const ERROR_DIR_NOT_EMPTY = 145;

// The path specified is being used in a substitute.
pub const ERROR_IS_SUBST_PATH = 146;

// Not enough resources are available to process this command.
pub const ERROR_IS_JOIN_PATH = 147;

// The path specified cannot be used at this time.
pub const ERROR_PATH_BUSY = 148;

// An attempt was made to join or substitute a drive for which a directory on the drive is the target of a previous substitute.
pub const ERROR_IS_SUBST_TARGET = 149;

// System trace information was not specified in your CONFIG.SYS file, or tracing is disallowed.
pub const ERROR_SYSTEM_TRACE = 150;

// The number of specified semaphore events for DosMuxSemWait is not correct.
pub const ERROR_INVALID_EVENT_COUNT = 151;

// DosMuxSemWait did not execute; too many semaphores are already set.
pub const ERROR_TOO_MANY_MUXWAITERS = 152;

// The DosMuxSemWait list is not correct.
pub const ERROR_INVALID_LIST_FORMAT = 153;

// The volume label you entered exceeds the label character limit of the target file system.
pub const ERROR_LABEL_TOO_LONG = 154;

// Cannot create another thread.
pub const ERROR_TOO_MANY_TCBS = 155;

// The recipient process has refused the signal.
pub const ERROR_SIGNAL_REFUSED = 156;

// The segment is already discarded and cannot be locked.
pub const ERROR_DISCARDED = 157;

// The segment is already unlocked.
pub const ERROR_NOT_LOCKED = 158;

// The address for the thread ID is not correct.
pub const ERROR_BAD_THREADID_ADDR = 159;

// One or more arguments are not correct.
pub const ERROR_BAD_ARGUMENTS = 160;

// The specified path is invalid.
pub const ERROR_BAD_PATHNAME = 161;

// A signal is already pending.
pub const ERROR_SIGNAL_PENDING = 162;

// No more threads can be created in the system.
pub const ERROR_MAX_THRDS_REACHED = 164;

// Unable to lock a region of a file.
pub const ERROR_LOCK_FAILED = 167;

// The requested resource is in use.
pub const ERROR_BUSY = 170;

// Device's command support detection is in progress.
pub const ERROR_DEVICE_SUPPORT_IN_PROGRESS = 171;

// A lock request was not outstanding for the supplied cancel region.
pub const ERROR_CANCEL_VIOLATION = 173;

// The file system does not support atomic changes to the lock type.
pub const ERROR_ATOMIC_LOCKS_NOT_SUPPORTED = 174;

// The system detected a segment number that was not correct.
pub const ERROR_INVALID_SEGMENT_NUMBER = 180;

// The operating system cannot run %1.
pub const ERROR_INVALID_ORDINAL = 182;

// Cannot create a file when that file already exists.
pub const ERROR_ALREADY_EXISTS = 183;

// The flag passed is not correct.
pub const ERROR_INVALID_FLAG_NUMBER = 186;

// The specified system semaphore name was not found.
pub const ERROR_SEM_NOT_FOUND = 187;

// The operating system cannot run %1.
pub const ERROR_INVALID_STARTING_CODESEG = 188;

// The operating system cannot run %1.
pub const ERROR_INVALID_STACKSEG = 189;

// The operating system cannot run %1.
pub const ERROR_INVALID_MODULETYPE = 190;

// Cannot run %1 in Win32 mode.
pub const ERROR_INVALID_EXE_SIGNATURE = 191;

// The operating system cannot run %1.
pub const ERROR_EXE_MARKED_INVALID = 192;

// %1 is not a valid Win32 application.
pub const ERROR_BAD_EXE_FORMAT = 193;

// The operating system cannot run %1.
pub const ERROR_ITERATED_DATA_EXCEEDS_64k = 194;

// The operating system cannot run %1.
pub const ERROR_INVALID_MINALLOCSIZE = 195;

// The operating system cannot run this application program.
pub const ERROR_DYNLINK_FROM_INVALID_RING = 196;

// The operating system is not presently configured to run this application.
pub const ERROR_IOPL_NOT_ENABLED = 197;

// The operating system cannot run %1.
pub const ERROR_INVALID_SEGDPL = 198;

// The operating system cannot run this application program.
pub const ERROR_AUTODATASEG_EXCEEDS_64k = 199;

// The code segment cannot be greater than or equal to 64K.
pub const ERROR_RING2SEG_MUST_BE_MOVABLE = 200;

// The operating system cannot run %1.
pub const ERROR_RELOC_CHAIN_XEEDS_SEGLIM = 201;

// The operating system cannot run %1.
pub const ERROR_INFLOOP_IN_RELOC_CHAIN = 202;

// The system could not find the environment option that was entered.
pub const ERROR_ENVVAR_NOT_FOUND = 203;

// No process in the command subtree has a signal handler.
pub const ERROR_NO_SIGNAL_SENT = 205;

// The filename or extension is too long.
pub const ERROR_FILENAME_EXCED_RANGE = 206;

// The ring 2 stack is in use.
pub const ERROR_RING2_STACK_IN_USE = 207;

// The global filename characters, * or ?, are entered incorrectly or too many global filename characters are specified.
pub const ERROR_META_EXPANSION_TOO_LONG = 208;

// The signal being posted is not correct.
pub const ERROR_INVALID_SIGNAL_NUMBER = 209;

// The signal handler cannot be set.
pub const ERROR_THREAD_1_INACTIVE = 210;

// The segment is locked and cannot be reallocated.
pub const ERROR_LOCKED = 212;

// Too many dynamic-link modules are attached to this program or dynamic-link module.
pub const ERROR_TOO_MANY_MODULES = 214;

// Cannot nest calls to LoadModule.
pub const ERROR_NESTING_NOT_ALLOWED = 215;

// This version of %1 is not compatible with the version of Windows you're running. Check your computer's system information and then contact the software publisher.
pub const ERROR_EXE_MACHINE_TYPE_MISMATCH = 216;

// The image file %1 is signed, unable to modify.
pub const ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY = 217;

// The image file %1 is strong signed, unable to modify.
pub const ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY = 218;

// This file is checked out or locked for editing by another user.
pub const ERROR_FILE_CHECKED_OUT = 220;

// The file must be checked out before saving changes.
pub const ERROR_CHECKOUT_REQUIRED = 221;

// The file type being saved or retrieved has been blocked.
pub const ERROR_BAD_FILE_TYPE = 222;

// The file size exceeds the limit allowed and cannot be saved.
pub const ERROR_FILE_TOO_LARGE = 223;

// Access Denied. Before opening files in this location, you must first add the web site to your trusted sites list, browse to the web site, and select the option to login automatically.
pub const ERROR_FORMS_AUTH_REQUIRED = 224;

// Operation did not complete successfully because the file contains a virus or potentially unwanted software.
pub const ERROR_VIRUS_INFECTED = 225;

// This file contains a virus or potentially unwanted software and cannot be opened. Due to the nature of this virus or potentially unwanted software, the file has been removed from this location.
pub const ERROR_VIRUS_DELETED = 226;

// The pipe is local.
pub const ERROR_PIPE_LOCAL = 229;

// The pipe state is invalid.
pub const ERROR_BAD_PIPE = 230;

// All pipe instances are busy.
pub const ERROR_PIPE_BUSY = 231;

// The pipe is being closed.
pub const ERROR_NO_DATA = 232;

// No process is on the other end of the pipe.
pub const ERROR_PIPE_NOT_CONNECTED = 233;

// More data is available.
pub const ERROR_MORE_DATA = 234;

// The action requested resulted in no work being done. Error-style clean-up has been performed.
pub const ERROR_NO_WORK_DONE = 235;

// The session was canceled.
pub const ERROR_VC_DISCONNECTED = 240;

// The specified extended attribute name was invalid.
pub const ERROR_INVALID_EA_NAME = 254;

// The extended attributes are inconsistent.
pub const ERROR_EA_LIST_INCONSISTENT = 255;

// The wait operation timed out.
pub const WAIT_TIMEOUT = 258;

// No more data is available.
pub const ERROR_NO_MORE_ITEMS = 259;

// The copy functions cannot be used.
pub const ERROR_CANNOT_COPY = 266;

// The directory name is invalid.
pub const ERROR_DIRECTORY = 267;

// The extended attributes did not fit in the buffer.
pub const ERROR_EAS_DIDNT_FIT = 275;

// The extended attribute file on the mounted file system is corrupt.
pub const ERROR_EA_FILE_CORRUPT = 276;

// The extended attribute table file is full.
pub const ERROR_EA_TABLE_FULL = 277;

// The specified extended attribute handle is invalid.
pub const ERROR_INVALID_EA_HANDLE = 278;

// The mounted file system does not support extended attributes.
pub const ERROR_EAS_NOT_SUPPORTED = 282;

// Attempt to release mutex not owned by caller.
pub const ERROR_NOT_OWNER = 288;

// Too many posts were made to a semaphore.
pub const ERROR_TOO_MANY_POSTS = 298;

// Only part of a ReadProcessMemory or WriteProcessMemory request was completed.
pub const ERROR_PARTIAL_COPY = 299;

// The oplock request is denied.
pub const ERROR_OPLOCK_NOT_GRANTED = 300;

// An invalid oplock acknowledgment was received by the system.
pub const ERROR_INVALID_OPLOCK_PROTOCOL = 301;

// The volume is too fragmented to complete this operation.
pub const ERROR_DISK_TOO_FRAGMENTED = 302;

// The file cannot be opened because it is in the process of being deleted.
pub const ERROR_DELETE_PENDING = 303;

// Short name settings may not be changed on this volume due to the global registry setting.
pub const ERROR_INCOMPATIBLE_WITH_GLOBAL_SHORT_NAME_REGISTRY_SETTING = 304;

// Short names are not enabled on this volume.
pub const ERROR_SHORT_NAMES_NOT_ENABLED_ON_VOLUME = 305;

// Please run CHKDSK on the volume.
pub const ERROR_SECURITY_STREAM_IS_INCONSISTENT = 306;

// A requested file lock operation cannot be processed due to an invalid byte range.
pub const ERROR_INVALID_LOCK_RANGE = 307;

// The subsystem needed to support the image type is not present.
pub const ERROR_IMAGE_SUBSYSTEM_NOT_PRESENT = 308;

// The specified file already has a notification GUID associated with it.
pub const ERROR_NOTIFICATION_GUID_ALREADY_DEFINED = 309;

// An invalid exception handler routine has been detected.
pub const ERROR_INVALID_EXCEPTION_HANDLER = 310;

// Duplicate privileges were specified for the token.
pub const ERROR_DUPLICATE_PRIVILEGES = 311;

// No ranges for the specified operation were able to be processed.
pub const ERROR_NO_RANGES_PROCESSED = 312;

// Operation is not allowed on a file system internal file.
pub const ERROR_NOT_ALLOWED_ON_SYSTEM_FILE = 313;

// The physical resources of this disk have been exhausted.
pub const ERROR_DISK_RESOURCES_EXHAUSTED = 314;

// The token representing the data is invalid.
pub const ERROR_INVALID_TOKEN = 315;

// The device does not support the command feature.
pub const ERROR_DEVICE_FEATURE_NOT_SUPPORTED = 316;

// The system cannot find message text for message number 0x%1 in the message file for %2.
pub const ERROR_MR_MID_NOT_FOUND = 317;

// The scope specified was not found.
pub const ERROR_SCOPE_NOT_FOUND = 318;

// The Central Access Policy specified is not defined on the target machine.
pub const ERROR_UNDEFINED_SCOPE = 319;

// The Central Access Policy obtained from Active Directory is invalid.
pub const ERROR_INVALID_CAP = 320;

// The device is unreachable.
pub const ERROR_DEVICE_UNREACHABLE = 321;

// The target device has insufficient resources to complete the operation.
pub const ERROR_DEVICE_NO_RESOURCES = 322;

// A data integrity checksum error occurred. Data in the file stream is corrupt.
pub const ERROR_DATA_CHECKSUM_ERROR = 323;

// An attempt was made to modify both a KERNEL and normal Extended Attribute (EA) in the same operation.
pub const ERROR_INTERMIXED_KERNEL_EA_OPERATION = 324;

// Device does not support file-level TRIM.
pub const ERROR_FILE_LEVEL_TRIM_NOT_SUPPORTED = 326;

// The command specified a data offset that does not align to the device's granularity/alignment.
pub const ERROR_OFFSET_ALIGNMENT_VIOLATION = 327;

// The command specified an invalid field in its parameter list.
pub const ERROR_INVALID_FIELD_IN_PARAMETER_LIST = 328;

// An operation is currently in progress with the device.
pub const ERROR_OPERATION_IN_PROGRESS = 329;

// An attempt was made to send down the command via an invalid path to the target device.
pub const ERROR_BAD_DEVICE_PATH = 330;

// The command specified a number of descriptors that exceeded the maximum supported by the device.
pub const ERROR_TOO_MANY_DESCRIPTORS = 331;

// Scrub is disabled on the specified file.
pub const ERROR_SCRUB_DATA_DISABLED = 332;

// The storage device does not provide redundancy.
pub const ERROR_NOT_REDUNDANT_STORAGE = 333;

// An operation is not supported on a resident file.
pub const ERROR_RESIDENT_FILE_NOT_SUPPORTED = 334;

// An operation is not supported on a compressed file.
pub const ERROR_COMPRESSED_FILE_NOT_SUPPORTED = 335;

// An operation is not supported on a directory.
pub const ERROR_DIRECTORY_NOT_SUPPORTED = 336;

// The specified copy of the requested data could not be read.
pub const ERROR_NOT_READ_FROM_COPY = 337;

// The specified data could not be written to any of the copies.
pub const ERROR_FT_WRITE_FAILURE = 338;

// One or more copies of data on this device may be out of sync. No writes may be performed until a data integrity scan is completed.
pub const ERROR_FT_DI_SCAN_REQUIRED = 339;

// The supplied kernel information version is invalid.
pub const ERROR_INVALID_KERNEL_INFO_VERSION = 340;

// The supplied PEP information version is invalid.
pub const ERROR_INVALID_PEP_INFO_VERSION = 341;

// This object is not externally backed by any provider.
pub const ERROR_OBJECT_NOT_EXTERNALLY_BACKED = 342;

// The external backing provider is not recognized.
pub const ERROR_EXTERNAL_BACKING_PROVIDER_UNKNOWN = 343;

// Compressing this object would not save space.
pub const ERROR_COMPRESSION_NOT_BENEFICIAL = 344;

// The request failed due to a storage topology ID mismatch.
pub const ERROR_STORAGE_TOPOLOGY_ID_MISMATCH = 345;

// The operation was blocked by parental controls.
pub const ERROR_BLOCKED_BY_PARENTAL_CONTROLS = 346;

// A file system block being referenced has already reached the maximum reference count and can't be referenced any further.
pub const ERROR_BLOCK_TOO_MANY_REFERENCES = 347;

// The requested operation failed because the file stream is marked to disallow writes.
pub const ERROR_MARKED_TO_DISALLOW_WRITES = 348;

// The requested operation failed with an architecture-specific failure code.
pub const ERROR_ENCLAVE_FAILURE = 349;

// No action was taken as a system reboot is required.
pub const ERROR_FAIL_NOACTION_REBOOT = 350;

// The shutdown operation failed.
pub const ERROR_FAIL_SHUTDOWN = 351;

// The restart operation failed.
pub const ERROR_FAIL_RESTART = 352;

// The maximum number of sessions has been reached.
pub const ERROR_MAX_SESSIONS_REACHED = 353;

// Windows Information Protection policy does not allow access to this network resource.
pub const ERROR_NETWORK_ACCESS_DENIED_EDP = 354;

// The device hint name buffer is too small to receive the remaining name.
pub const ERROR_DEVICE_HINT_NAME_BUFFER_TOO_SMALL = 355;

// The requested operation was blocked by Windows Information Protection policy. For more information, contact your system administrator.
pub const ERROR_EDP_POLICY_DENIES_OPERATION = 356;

// The requested operation cannot be performed because hardware or software configuration of the device does not comply with Windows Information Protection under Lock policy. Please, verify that user PIN has been created. For more information, contact your system administrator.
pub const ERROR_EDP_DPL_POLICY_CANT_BE_SATISFIED = 357;

// The cloud sync root metadata is corrupted.
pub const ERROR_CLOUD_FILE_SYNC_ROOT_METADATA_CORRUPT = 358;

// The device is in maintenance mode.
pub const ERROR_DEVICE_IN_MAINTENANCE = 359;

// This operation is not supported on a DAX volume.
pub const ERROR_NOT_SUPPORTED_ON_DAX = 360;

// The volume has active DAX mappings.
pub const ERROR_DAX_MAPPING_EXISTS = 361;

// The cloud file provider is not running.
pub const ERROR_CLOUD_FILE_PROVIDER_NOT_RUNNING = 362;

// The cloud file metadata is corrupt and unreadable.
pub const ERROR_CLOUD_FILE_METADATA_CORRUPT = 363;

// The cloud file metadata is too large.
pub const ERROR_CLOUD_FILE_METADATA_TOO_LARGE = 364;

// The cloud file property is too large.
pub const ERROR_CLOUD_FILE_PROPERTY_BLOB_TOO_LARGE = 365;

// The cloud file property is possibly corrupt. The on-disk checksum does not match the computed checksum.
pub const ERROR_CLOUD_FILE_PROPERTY_BLOB_CHECKSUM_MISMATCH = 366;

// The process creation has been blocked.
pub const ERROR_CHILD_PROCESS_BLOCKED = 367;

// The storage device has lost data or persistence.
pub const ERROR_STORAGE_LOST_DATA_PERSISTENCE = 368;

// The provider that supports file system virtualization is temporarily unavailable.
pub const ERROR_FILE_SYSTEM_VIRTUALIZATION_UNAVAILABLE = 369;

// The metadata for file system virtualization is corrupt and unreadable.
pub const ERROR_FILE_SYSTEM_VIRTUALIZATION_METADATA_CORRUPT = 370;

// The provider that supports file system virtualization is too busy to complete this operation.
pub const ERROR_FILE_SYSTEM_VIRTUALIZATION_BUSY = 371;

// The provider that supports file system virtualization is unknown.
pub const ERROR_FILE_SYSTEM_VIRTUALIZATION_PROVIDER_UNKNOWN = 372;

// GDI handles were potentially leaked by the application.
pub const ERROR_GDI_HANDLE_LEAK = 373;

// The maximum number of cloud file properties has been reached.
pub const ERROR_CLOUD_FILE_TOO_MANY_PROPERTY_BLOBS = 374;

// The version of the cloud file property store is not supported.
pub const ERROR_CLOUD_FILE_PROPERTY_VERSION_NOT_SUPPORTED = 375;

// The file is not a cloud file.
pub const ERROR_NOT_A_CLOUD_FILE = 376;

// The file is not in sync with the cloud.
pub const ERROR_CLOUD_FILE_NOT_IN_SYNC = 377;

// The cloud sync root is already connected with another cloud sync engine.
pub const ERROR_CLOUD_FILE_ALREADY_CONNECTED = 378;

// The operation is not supported by the cloud sync engine.
pub const ERROR_CLOUD_FILE_NOT_SUPPORTED = 379;

// The cloud operation is invalid.
pub const ERROR_CLOUD_FILE_INVALID_REQUEST = 380;

// The cloud operation is not supported on a read-only volume.
pub const ERROR_CLOUD_FILE_READ_ONLY_VOLUME = 381;

// The operation is reserved for a connected cloud sync engine.
pub const ERROR_CLOUD_FILE_CONNECTED_PROVIDER_ONLY = 382;

// The cloud sync engine failed to validate the downloaded data.
pub const ERROR_CLOUD_FILE_VALIDATION_FAILED = 383;

// Your system requires SMB2 or higher. For more info on resolving this issue, see: https://go.microsoft.com/fwlink/?linkid=852747
pub const ERROR_SMB1_NOT_AVAILABLE = 384;

// The virtualization operation is not allowed on the file in its current state.
pub const ERROR_FILE_SYSTEM_VIRTUALIZATION_INVALID_OPERATION = 385;

// The cloud sync engine failed user authentication.
pub const ERROR_CLOUD_FILE_AUTHENTICATION_FAILED = 386;

// The cloud sync engine failed to perform the operation due to low system resources.
pub const ERROR_CLOUD_FILE_INSUFFICIENT_RESOURCES = 387;

// The cloud sync engine failed to perform the operation due to network being unavailable.
pub const ERROR_CLOUD_FILE_NETWORK_UNAVAILABLE = 388;

// The cloud operation was unsuccessful.
pub const ERROR_CLOUD_FILE_UNSUCCESSFUL = 389;

// The operation is only supported on files under a cloud sync root.
pub const ERROR_CLOUD_FILE_NOT_UNDER_SYNC_ROOT = 390;

// The operation cannot be performed on cloud files in use.
pub const ERROR_CLOUD_FILE_IN_USE = 391;

// The operation cannot be performed on pinned cloud files.
pub const ERROR_CLOUD_FILE_PINNED = 392;

// The cloud operation was aborted.
pub const ERROR_CLOUD_FILE_REQUEST_ABORTED = 393;

// The cloud file's property store is corrupt.
pub const ERROR_CLOUD_FILE_PROPERTY_CORRUPT = 394;

// Access to the cloud file is denied.
pub const ERROR_CLOUD_FILE_ACCESS_DENIED = 395;

// The cloud operation cannot be performed on a file with incompatible hardlinks.
pub const ERROR_CLOUD_FILE_INCOMPATIBLE_HARDLINKS = 396;

// The operation failed due to a conflicting cloud file property lock.
pub const ERROR_CLOUD_FILE_PROPERTY_LOCK_CONFLICT = 397;

// The cloud operation was canceled by user.
pub const ERROR_CLOUD_FILE_REQUEST_CANCELED = 398;

// An externally encrypted syskey has been configured, but the system no longer supports this feature.  Please see https://go.microsoft.com/fwlink/?linkid=851152 for more information.
pub const ERROR_EXTERNAL_SYSKEY_NOT_SUPPORTED = 399;

// The thread is already in background processing mode.
pub const ERROR_THREAD_MODE_ALREADY_BACKGROUND = 400;

// The thread is not in background processing mode.
pub const ERROR_THREAD_MODE_NOT_BACKGROUND = 401;

// The process is already in background processing mode.
pub const ERROR_PROCESS_MODE_ALREADY_BACKGROUND = 402;

// The process is not in background processing mode.
pub const ERROR_PROCESS_MODE_NOT_BACKGROUND = 403;

// Neither developer unlocked mode nor side loading mode is enabled on the device.
pub const ERROR_CAPAUTHZ_NOT_DEVUNLOCKED = 450;

// Can not change application type during upgrade or re-provision.
pub const ERROR_CAPAUTHZ_CHANGE_TYPE = 451;

// The application has not been provisioned.
pub const ERROR_CAPAUTHZ_NOT_PROVISIONED = 452;

// The requested capability can not be authorized for this application.
pub const ERROR_CAPAUTHZ_NOT_AUTHORIZED = 453;

// There is no capability authorization policy on the device.
pub const ERROR_CAPAUTHZ_NO_POLICY = 454;

// The capability authorization database has been corrupted.
pub const ERROR_CAPAUTHZ_DB_CORRUPTED = 455;

// The custom capability's SCCD has an invalid catalog.
pub const ERROR_CAPAUTHZ_SCCD_INVALID_CATALOG = 456;

// There is no matching authorized in the SCCD.
pub const ERROR_CAPAUTHZ_SCCD_NO_AUTH_ENTITY = 457;

// The custom capability's SCCD failed to parse.
pub const ERROR_CAPAUTHZ_SCCD_PARSE_ERROR = 458;

// The custom capability's SCCD requires developer mode.
pub const ERROR_CAPAUTHZ_SCCD_DEV_MODE_REQUIRED = 459;

// There not all declared custom capabilities are found in the SCCD.
pub const ERROR_CAPAUTHZ_SCCD_NO_CAPABILITY_MATCH = 460;

// The operation timed out waiting for this device to complete a PnP query-remove request due to a potential hang in its device stack. The system may need to be rebooted to complete the request.
pub const ERROR_PNP_QUERY_REMOVE_DEVICE_TIMEOUT = 480;

// The operation timed out waiting for this device to complete a PnP query-remove request due to a potential hang in the device stack of a related device. The system may need to be rebooted to complete the operation.
pub const ERROR_PNP_QUERY_REMOVE_RELATED_DEVICE_TIMEOUT = 481;

// The operation timed out waiting for this device to complete a PnP query-remove request due to a potential hang in the device stack of an unrelated device. The system may need to be rebooted to complete the operation.
pub const ERROR_PNP_QUERY_REMOVE_UNRELATED_DEVICE_TIMEOUT = 482;

// The request failed due to a fatal device hardware error.
pub const ERROR_DEVICE_HARDWARE_ERROR = 483;

// Attempt to access invalid address.
pub const ERROR_INVALID_ADDRESS = 487;

// Driver Verifier Volatile settings cannot be set when CFG is enabled.
pub const ERROR_VRF_CFG_ENABLED = 1183;

// An attempt was made to access a partition that has begun termination.
pub const ERROR_PARTITION_TERMINATING = 1184;

// User profile cannot be loaded.
pub const ERROR_USER_PROFILE_LOAD = 500;

// Arithmetic result exceeded 32 bits.
pub const ERROR_ARITHMETIC_OVERFLOW = 534;

// There is a process on other end of the pipe.
pub const ERROR_PIPE_CONNECTED = 535;

// Waiting for a process to open the other end of the pipe.
pub const ERROR_PIPE_LISTENING = 536;

// Application verifier has found an error in the current process.
pub const ERROR_VERIFIER_STOP = 537;

// An error occurred in the ABIOS subsystem.
pub const ERROR_ABIOS_ERROR = 538;

// A warning occurred in the WX86 subsystem.
pub const ERROR_WX86_WARNING = 539;

// An error occurred in the WX86 subsystem.
pub const ERROR_WX86_ERROR = 540;

// An attempt was made to cancel or set a timer that has an associated APC and the subject thread is not the thread that originally set the timer with an associated APC routine.
pub const ERROR_TIMER_NOT_CANCELED = 541;

// Unwind exception code.
pub const ERROR_UNWIND = 542;

// An invalid or unaligned stack was encountered during an unwind operation.
pub const ERROR_BAD_STACK = 543;

// An invalid unwind target was encountered during an unwind operation.
pub const ERROR_INVALID_UNWIND_TARGET = 544;

// Invalid Object Attributes specified to NtCreatePort or invalid Port Attributes specified to NtConnectPort
pub const ERROR_INVALID_PORT_ATTRIBUTES = 545;

// Length of message passed to NtRequestPort or NtRequestWaitReplyPort was longer than the maximum message allowed by the port.
pub const ERROR_PORT_MESSAGE_TOO_LONG = 546;

// An attempt was made to lower a quota limit below the current usage.
pub const ERROR_INVALID_QUOTA_LOWER = 547;

// An attempt was made to attach to a device that was already attached to another device.
pub const ERROR_DEVICE_ALREADY_ATTACHED = 548;

// An attempt was made to execute an instruction at an unaligned address and the host system does not support unaligned instruction references.
pub const ERROR_INSTRUCTION_MISALIGNMENT = 549;

// Profiling not started.
pub const ERROR_PROFILING_NOT_STARTED = 550;

// Profiling not stopped.
pub const ERROR_PROFILING_NOT_STOPPED = 551;

// The passed ACL did not contain the minimum required information.
pub const ERROR_COULD_NOT_INTERPRET = 552;

// The number of active profiling objects is at the maximum and no more may be started.
pub const ERROR_PROFILING_AT_LIMIT = 553;

// Used to indicate that an operation cannot continue without blocking for I/O.
pub const ERROR_CANT_WAIT = 554;

// Indicates that a thread attempted to terminate itself by default (called NtTerminateThread with NULL) and it was the last thread in the current process.
pub const ERROR_CANT_TERMINATE_SELF = 555;

// In this case information is lost, however, the filter correctly handles the exception.
pub const ERROR_UNEXPECTED_MM_CREATE_ERR = 556;

// In this case information is lost, however, the filter correctly handles the exception.
pub const ERROR_UNEXPECTED_MM_MAP_ERROR = 557;

// In this case information is lost, however, the filter correctly handles the exception.
pub const ERROR_UNEXPECTED_MM_EXTEND_ERR = 558;

// A malformed function table was encountered during an unwind operation.
pub const ERROR_BAD_FUNCTION_TABLE = 559;

// This causes the protection attempt to fail, which may cause a file creation attempt to fail.
pub const ERROR_NO_GUID_TRANSLATION = 560;

// Indicates that an attempt was made to grow an LDT by setting its size, or that the size was not an even number of selectors.
pub const ERROR_INVALID_LDT_SIZE = 561;

// Indicates that the starting value for the LDT information was not an integral multiple of the selector size.
pub const ERROR_INVALID_LDT_OFFSET = 563;

// Indicates that the user supplied an invalid descriptor when trying to set up Ldt descriptors.
pub const ERROR_INVALID_LDT_DESCRIPTOR = 564;

// Indicates a process has too many threads to perform the requested action. For example, assignment of a primary token may only be performed when a process has zero or one threads.
pub const ERROR_TOO_MANY_THREADS = 565;

// An attempt was made to operate on a thread within a specific process, but the thread specified is not in the process specified.
pub const ERROR_THREAD_NOT_IN_PROCESS = 566;

// Page file quota was exceeded.
pub const ERROR_PAGEFILE_QUOTA_EXCEEDED = 567;

// The Netlogon service cannot start because another Netlogon service running in the domain conflicts with the specified role.
pub const ERROR_LOGON_SERVER_CONFLICT = 568;

// The SAM database on a Windows Server is significantly out of synchronization with the copy on the Domain Controller. A complete synchronization is required.
pub const ERROR_SYNCHRONIZATION_REQUIRED = 569;

// The NtCreateFile API failed. This error should never be returned to an application, it is a place holder for the Windows Lan Manager Redirector to use in its internal error mapping routines.
pub const ERROR_NET_OPEN_FAILED = 570;

// The I/O permissions for the process could not be changed.
pub const ERROR_IO_PRIVILEGE_FAILED = 571;

// The application terminated as a result of a CTRL+C.
pub const ERROR_CONTROL_C_EXIT = 572;

// The required system file %hs is bad or missing.
pub const ERROR_MISSING_SYSTEMFILE = 573;

// The exception %s (0x%08lx) occurred in the application at location 0x%08lx.
pub const ERROR_UNHANDLED_EXCEPTION = 574;

// The application was unable to start correctly (0x%lx). Click OK to close the application.
pub const ERROR_APP_INIT_FAILURE = 575;

// The creation of the paging file %hs failed (%lx). The requested size was %ld.
pub const ERROR_PAGEFILE_CREATE_FAILED = 576;

// Windows cannot verify the digital signature for this file. A recent hardware or software change might have installed a file that is signed incorrectly or damaged, or that might be malicious software from an unknown source.
pub const ERROR_INVALID_IMAGE_HASH = 577;

// No paging file was specified in the system configuration.
pub const ERROR_NO_PAGEFILE = 578;

// A real-mode application issued a floating-point instruction and floating-point hardware is not present.
pub const ERROR_ILLEGAL_FLOAT_CONTEXT = 579;

// An event pair synchronization operation was performed using the thread specific client/server event pair object, but no event pair object was associated with the thread.
pub const ERROR_NO_EVENT_PAIR = 580;

// A Windows Server has an incorrect configuration.
pub const ERROR_DOMAIN_CTRLR_CONFIG_ERROR = 581;

// An illegal character was encountered. For a multi-byte character set this includes a lead byte without a succeeding trail byte. For the Unicode character set this includes the characters 0xFFFF and 0xFFFE.
pub const ERROR_ILLEGAL_CHARACTER = 582;

// The Unicode character is not defined in the Unicode character set installed on the system.
pub const ERROR_UNDEFINED_CHARACTER = 583;

// The paging file cannot be created on a floppy diskette.
pub const ERROR_FLOPPY_VOLUME = 584;

// The system BIOS failed to connect a system interrupt to the device or bus for which the device is connected.
pub const ERROR_BIOS_FAILED_TO_CONNECT_INTERRUPT = 585;

// This operation is only allowed for the Primary Domain Controller of the domain.
pub const ERROR_BACKUP_CONTROLLER = 586;

// An attempt was made to acquire a mutant such that its maximum count would have been exceeded.
pub const ERROR_MUTANT_LIMIT_EXCEEDED = 587;

// A volume has been accessed for which a file system driver is required that has not yet been loaded.
pub const ERROR_FS_DRIVER_REQUIRED = 588;

// It is corrupt, absent, or not writable.
pub const ERROR_CANNOT_LOAD_REGISTRY_FILE = 589;

// An unexpected failure occurred while processing a DebugActiveProcess API request. You may choose OK to terminate the process, or Cancel to ignore the error.
pub const ERROR_DEBUG_ATTACH_FAILED = 590;

// The system has been shut down.
pub const ERROR_SYSTEM_PROCESS_TERMINATED = 591;

// The TDI client could not handle the data received during an indication.
pub const ERROR_DATA_NOT_ACCEPTED = 592;

// NTVDM encountered a hard error.
pub const ERROR_VDM_HARD_ERROR = 593;

// The driver %hs failed to complete a cancelled I/O request in the allotted time.
pub const ERROR_DRIVER_CANCEL_TIMEOUT = 594;

// An attempt was made to reply to an LPC message, but the thread specified by the client ID in the message was not waiting on that message.
pub const ERROR_REPLY_MESSAGE_MISMATCH = 595;

// This error may be caused by a failure of your computer hardware or network connection. Please try to save this file elsewhere.
pub const ERROR_LOST_WRITEBEHIND_DATA = 596;

// The parameter(s) passed to the server in the client/server shared memory window were invalid. Too much data may have been put in the shared memory window.
pub const ERROR_CLIENT_SERVER_PARAMETERS_INVALID = 597;

// The stream is not a tiny stream.
pub const ERROR_NOT_TINY_STREAM = 598;

// The request must be handled by the stack overflow code.
pub const ERROR_STACK_OVERFLOW_READ = 599;

// Internal OFS status codes indicating how an allocation operation is handled. Either it is retried after the containing onode is moved or the extent stream is converted to a large stream.
pub const ERROR_CONVERT_TO_LARGE = 600;

// The attempt to find the object found an object matching by ID on the volume but it is out of the scope of the handle used for the operation.
pub const ERROR_FOUND_OUT_OF_SCOPE = 601;

// The bucket array must be grown. Retry transaction after doing so.
pub const ERROR_ALLOCATE_BUCKET = 602;

// The user/kernel marshalling buffer has overflowed.
pub const ERROR_MARSHALL_OVERFLOW = 603;

// The supplied variant structure contains invalid data.
pub const ERROR_INVALID_VARIANT = 604;

// The specified buffer contains ill-formed data.
pub const ERROR_BAD_COMPRESSION_BUFFER = 605;

// An attempt to generate a security audit failed.
pub const ERROR_AUDIT_FAILED = 606;

// The timer resolution was not previously set by the current process.
pub const ERROR_TIMER_RESOLUTION_NOT_SET = 607;

// There is insufficient account information to log you on.
pub const ERROR_INSUFFICIENT_LOGON_INFO = 608;

// The entrypoint should be declared as WINAPI or STDCALL. Select YES to fail the DLL load. Select NO to continue execution. Selecting NO may cause the application to operate incorrectly.
pub const ERROR_BAD_DLL_ENTRYPOINT = 609;

// The callback entrypoint should be declared as WINAPI or STDCALL. Selecting OK will cause the service to continue operation. However, the service process may operate incorrectly.
pub const ERROR_BAD_SERVICE_ENTRYPOINT = 610;

// There is an IP address conflict with another system on the network
pub const ERROR_IP_ADDRESS_CONFLICT1 = 611;

// There is an IP address conflict with another system on the network
pub const ERROR_IP_ADDRESS_CONFLICT2 = 612;

// The system has reached the maximum size allowed for the system part of the registry. Additional storage requests will be ignored.
pub const ERROR_REGISTRY_QUOTA_LIMIT = 613;

// A callback return system service cannot be executed when no callback is active.
pub const ERROR_NO_CALLBACK_ACTIVE = 614;

// Please choose a longer password.
pub const ERROR_PWD_TOO_SHORT = 615;

// If you feel your password has been compromised then please contact your administrator immediately to have a new one assigned.
pub const ERROR_PWD_TOO_RECENT = 616;

// The policy of your user account does not allow this. Please select a password that you have not previously used.
pub const ERROR_PWD_HISTORY_CONFLICT = 617;

// The specified compression format is unsupported.
pub const ERROR_UNSUPPORTED_COMPRESSION = 618;

// The specified hardware profile configuration is invalid.
pub const ERROR_INVALID_HW_PROFILE = 619;

// The specified Plug and Play registry device path is invalid.
pub const ERROR_INVALID_PLUGPLAY_DEVICE_PATH = 620;

// The specified quota list is internally inconsistent with its descriptor.
pub const ERROR_QUOTA_LIST_INCONSISTENT = 621;

// The evaluation period for this installation of Windows has expired. This system will shutdown in 1 hour. To restore access to this installation of Windows, please upgrade this installation using a licensed distribution of this product.
pub const ERROR_EVALUATION_EXPIRATION = 622;

// The relocation occurred because the DLL %hs occupied an address range reserved for Windows system DLLs. The vendor supplying the DLL should be contacted for a new DLL.
pub const ERROR_ILLEGAL_DLL_RELOCATION = 623;

// The application failed to initialize because the window station is shutting down.
pub const ERROR_DLL_INIT_FAILED_LOGOFF = 624;

// The validation process needs to continue on to the next step.
pub const ERROR_VALIDATE_CONTINUE = 625;

// There are no more matches for the current index enumeration.
pub const ERROR_NO_MORE_MATCHES = 626;

// The range could not be added to the range list because of a conflict.
pub const ERROR_RANGE_LIST_CONFLICT = 627;

// The server process is running under a SID different than that required by client.
pub const ERROR_SERVER_SID_MISMATCH = 628;

// A group marked use for deny only cannot be enabled.
pub const ERROR_CANT_ENABLE_DENY_ONLY = 629;

// Multiple floating point faults.
pub const ERROR_FLOAT_MULTIPLE_FAULTS = 630;

// Multiple floating point traps.
pub const ERROR_FLOAT_MULTIPLE_TRAPS = 631;

// The requested interface is not supported.
pub const ERROR_NOINTERFACE = 632;

// The driver %hs does not support standby mode. Updating this driver may allow the system to go to standby mode.
pub const ERROR_DRIVER_FAILED_SLEEP = 633;

// The system file %1 has become corrupt and has been replaced.
pub const ERROR_CORRUPT_SYSTEM_FILE = 634;

// During this process, memory requests for some applications may be denied. For more information, see Help.
pub const ERROR_COMMITMENT_MINIMUM = 635;

// A device was removed so enumeration must be restarted.
pub const ERROR_PNP_RESTART_ENUMERATION = 636;

// The system has been shut down.
pub const ERROR_SYSTEM_IMAGE_BAD_SIGNATURE = 637;

// Device will not start without a reboot.
pub const ERROR_PNP_REBOOT_REQUIRED = 638;

// There is not enough power to complete the requested operation.
pub const ERROR_INSUFFICIENT_POWER = 639;

//  ERROR_MULTIPLE_FAULT_VIOLATION
pub const ERROR_MULTIPLE_FAULT_VIOLATION = 640;

// The system is in the process of shutting down.
pub const ERROR_SYSTEM_SHUTDOWN = 641;

// An attempt to remove a processes DebugPort was made, but a port was not already associated with the process.
pub const ERROR_PORT_NOT_SET = 642;

// This version of Windows is not compatible with the behavior version of directory forest, domain or domain controller.
pub const ERROR_DS_VERSION_CHECK_FAILURE = 643;

// The specified range could not be found in the range list.
pub const ERROR_RANGE_NOT_FOUND = 644;

// The driver was not loaded because the system is booting into safe mode.
pub const ERROR_NOT_SAFE_MODE_DRIVER = 646;

// The driver was not loaded because it failed its initialization call.
pub const ERROR_FAILED_DRIVER_ENTRY = 647;

// This may be caused by a failure of your hardware or by a poor connection.
pub const ERROR_DEVICE_ENUMERATION_ERROR = 648;

// The create operation failed because the name contained at least one mount point which resolves to a volume to which the specified device object is not attached.
pub const ERROR_MOUNT_POINT_NOT_RESOLVED = 649;

// The device object parameter is either not a valid device object or is not attached to the volume specified by the file name.
pub const ERROR_INVALID_DEVICE_OBJECT_PARAMETER = 650;

// A Machine Check Error has occurred. Please check the system eventlog for additional information.
pub const ERROR_MCA_OCCURED = 651;

// There was error [%2] processing the driver database.
pub const ERROR_DRIVER_DATABASE_ERROR = 652;

// System hive size has exceeded its limit.
pub const ERROR_SYSTEM_HIVE_TOO_LARGE = 653;

// The driver could not be loaded because a previous version of the driver is still in memory.
pub const ERROR_DRIVER_FAILED_PRIOR_UNLOAD = 654;

// Please wait while the Volume Shadow Copy Service prepares volume %hs for hibernation.
pub const ERROR_VOLSNAP_PREPARE_HIBERNATE = 655;

// The system has failed to hibernate (The error code is %hs). Hibernation will be disabled until the system is restarted.
pub const ERROR_HIBERNATION_FAILURE = 656;

// Please choose a shorter password.
pub const ERROR_PWD_TOO_LONG = 657;

// The requested operation could not be completed due to a file system limitation
pub const ERROR_FILE_SYSTEM_LIMITATION = 665;

// An assertion failure has occurred.
pub const ERROR_ASSERTION_FAILURE = 668;

// An error occurred in the ACPI subsystem.
pub const ERROR_ACPI_ERROR = 669;

// WOW Assertion Error.
pub const ERROR_WOW_ASSERTION = 670;

// Please contact your system vendor for system BIOS update.
pub const ERROR_PNP_BAD_MPS_TABLE = 671;

// A translator failed to translate resources.
pub const ERROR_PNP_TRANSLATION_FAILED = 672;

// A IRQ translator failed to translate resources.
pub const ERROR_PNP_IRQ_TRANSLATION_FAILED = 673;

// Driver %2 returned invalid ID for a child device (%3).
pub const ERROR_PNP_INVALID_ID = 674;

// the system debugger was awakened by an interrupt.
pub const ERROR_WAKE_SYSTEM_DEBUGGER = 675;

// Handles to objects have been automatically closed as a result of the requested operation.
pub const ERROR_HANDLES_CLOSED = 676;

// The specified access control list (ACL) contained more information than was expected.
pub const ERROR_EXTRANEOUS_INFORMATION = 677;

// The commit has NOT been completed, but has not been rolled back either (so it may still be committed if desired).
pub const ERROR_RXACT_COMMIT_NECESSARY = 678;

// The media may have changed.
pub const ERROR_MEDIA_CHECK = 679;

// A substitute prefix was used, which will not compromise system security. However, this may provide a more restrictive access than intended.
pub const ERROR_GUID_SUBSTITUTION_MADE = 680;

// The create operation stopped after reaching a symbolic link
pub const ERROR_STOPPED_ON_SYMLINK = 681;

// A long jump has been executed.
pub const ERROR_LONGJUMP = 682;

// The Plug and Play query operation was not successful.
pub const ERROR_PLUGPLAY_QUERY_VETOED = 683;

// A frame consolidation has been executed.
pub const ERROR_UNWIND_CONSOLIDATE = 684;

// was corrupted and it has been recovered. Some data might have been lost.
pub const ERROR_REGISTRY_HIVE_RECOVERED = 685;

// The application is attempting to run executable code from the module %hs. This may be insecure. An alternative, %hs, is available. Should the application use the secure module %hs?
pub const ERROR_DLL_MIGHT_BE_INSECURE = 686;

// The application is loading executable code from the module %hs. This is secure, but may be incompatible with previous releases of the operating system. An alternative, %hs, is available. Should the application use the secure module %hs?
pub const ERROR_DLL_MIGHT_BE_INCOMPATIBLE = 687;

// Debugger did not handle the exception.
pub const ERROR_DBG_EXCEPTION_NOT_HANDLED = 688;

// Debugger will reply later.
pub const ERROR_DBG_REPLY_LATER = 689;

// Debugger cannot provide handle.
pub const ERROR_DBG_UNABLE_TO_PROVIDE_HANDLE = 690;

// Debugger terminated thread.
pub const ERROR_DBG_TERMINATE_THREAD = 691;

// Debugger terminated process.
pub const ERROR_DBG_TERMINATE_PROCESS = 692;

// Debugger got control C.
pub const ERROR_DBG_CONTROL_C = 693;

// Debugger printed exception on control C.
pub const ERROR_DBG_PRINTEXCEPTION_C = 694;

// Debugger received RIP exception.
pub const ERROR_DBG_RIPEXCEPTION = 695;

// Debugger received control break.
pub const ERROR_DBG_CONTROL_BREAK = 696;

// Debugger command communication exception.
pub const ERROR_DBG_COMMAND_EXCEPTION = 697;

// An attempt was made to create an object and the object name already existed.
pub const ERROR_OBJECT_NAME_EXISTS = 698;

// A thread termination occurred while the thread was suspended. The thread was resumed, and termination proceeded.
pub const ERROR_THREAD_WAS_SUSPENDED = 699;

// An image file could not be mapped at the address specified in the image file. Local fixups must be performed on this image.
pub const ERROR_IMAGE_NOT_AT_BASE = 700;

// This informational level status indicates that a specified registry sub-tree transaction state did not yet exist and had to be created.
pub const ERROR_RXACT_STATE_CREATED = 701;

// An exception is raised so a debugger can load, unload or track symbols and breakpoints within these 16-bit segments.
pub const ERROR_SEGMENT_NOTIFICATION = 702;

// Select OK to set current directory to %hs, or select CANCEL to exit.
pub const ERROR_BAD_CURRENT_DIRECTORY = 703;

// This was done because the file system encountered a failure on a member of the fault-tolerant volume, but was unable to reassign the failing area of the device.
pub const ERROR_FT_READ_RECOVERY_FROM_BACKUP = 704;

// This was done because the file system encountered a failure on a member of the fault-tolerant volume, but was not able to reassign the failing area of the device.
pub const ERROR_FT_WRITE_RECOVERY = 705;

// The image file %hs is valid, but is for a machine type other than the current machine. Select OK to continue, or CANCEL to fail the DLL load.
pub const ERROR_IMAGE_MACHINE_TYPE_MISMATCH = 706;

// The network transport returned partial data to its client. The remaining data will be sent later.
pub const ERROR_RECEIVE_PARTIAL = 707;

// The network transport returned data to its client that was marked as expedited by the remote system.
pub const ERROR_RECEIVE_EXPEDITED = 708;

// The network transport returned partial data to its client and this data was marked as expedited by the remote system. The remaining data will be sent later.
pub const ERROR_RECEIVE_PARTIAL_EXPEDITED = 709;

// The TDI indication has completed successfully.
pub const ERROR_EVENT_DONE = 710;

// The TDI indication has entered the pending state.
pub const ERROR_EVENT_PENDING = 711;

// Checking file system on %wZ
pub const ERROR_CHECKING_FILE_SYSTEM = 712;

// %hs
pub const ERROR_FATAL_APP_EXIT = 713;

// The specified registry key is referenced by a predefined handle.
pub const ERROR_PREDEFINED_HANDLE = 714;

// The page protection of a locked page was changed to 'No Access' and the page was unlocked from memory and from the process.
pub const ERROR_WAS_UNLOCKED = 715;

// %hs
pub const ERROR_SERVICE_NOTIFICATION = 716;

// One of the pages to lock was already locked.
pub const ERROR_WAS_LOCKED = 717;

// Application popup: %1 : %2
pub const ERROR_LOG_HARD_ERROR = 718;

//  ERROR_ALREADY_WIN32
pub const ERROR_ALREADY_WIN32 = 719;

// The image file %hs is valid, but is for a machine type other than the current machine.
pub const ERROR_IMAGE_MACHINE_TYPE_MISMATCH_EXE = 720;

// A yield execution was performed and no thread was available to run.
pub const ERROR_NO_YIELD_PERFORMED = 721;

// The resumable flag to a timer API was ignored.
pub const ERROR_TIMER_RESUME_IGNORED = 722;

// The arbiter has deferred arbitration of these resources to its parent
pub const ERROR_ARBITRATION_UNHANDLED = 723;

// The inserted CardBus device cannot be started because of a configuration error on "%hs".
pub const ERROR_CARDBUS_NOT_SUPPORTED = 724;

// The CPUs in this multiprocessor system are not all the same revision level. To use all processors the operating system restricts itself to the features of the least capable processor in the system. Should problems occur with this system, contact the CPU manufacturer to see if this mix of processors is supported.
pub const ERROR_MP_PROCESSOR_MISMATCH = 725;

// The system was put into hibernation.
pub const ERROR_HIBERNATED = 726;

// The system was resumed from hibernation.
pub const ERROR_RESUME_HIBERNATION = 727;

// Windows has detected that the system firmware (BIOS) was updated [previous firmware date = %2, current firmware date %3].
pub const ERROR_FIRMWARE_UPDATED = 728;

// A device driver is leaking locked I/O pages causing system degradation. The system has automatically enabled tracking code in order to try and catch the culprit.
pub const ERROR_DRIVERS_LEAKING_LOCKED_PAGES = 729;

// The system has awoken
pub const ERROR_WAKE_SYSTEM = 730;

//  ERROR_WAIT_1
pub const ERROR_WAIT_1 = 731;

//  ERROR_WAIT_2
pub const ERROR_WAIT_2 = 732;

//  ERROR_WAIT_3
pub const ERROR_WAIT_3 = 733;

//  ERROR_WAIT_63
pub const ERROR_WAIT_63 = 734;

//  ERROR_ABANDONED_WAIT_0
pub const ERROR_ABANDONED_WAIT_0 = 735;

//  ERROR_ABANDONED_WAIT_63
pub const ERROR_ABANDONED_WAIT_63 = 736;

//  ERROR_USER_APC
pub const ERROR_USER_APC = 737;

//  ERROR_KERNEL_APC
pub const ERROR_KERNEL_APC = 738;

//  ERROR_ALERTED
pub const ERROR_ALERTED = 739;

// The requested operation requires elevation.
pub const ERROR_ELEVATION_REQUIRED = 740;

// A reparse should be performed by the Object Manager since the name of the file resulted in a symbolic link.
pub const ERROR_REPARSE = 741;

// An open/create operation completed while an oplock break is underway.
pub const ERROR_OPLOCK_BREAK_IN_PROGRESS = 742;

// A new volume has been mounted by a file system.
pub const ERROR_VOLUME_MOUNTED = 743;

// The commit has now been completed.
pub const ERROR_RXACT_COMMITTED = 744;

// This indicates that a notify change request has been completed due to closing the handle which made the notify change request.
pub const ERROR_NOTIFY_CLEANUP = 745;

// The computer WAS able to connect on a secondary transport.
pub const ERROR_PRIMARY_TRANSPORT_CONNECT_FAILED = 746;

// Page fault was a transition fault.
pub const ERROR_PAGE_FAULT_TRANSITION = 747;

// Page fault was a demand zero fault.
pub const ERROR_PAGE_FAULT_DEMAND_ZERO = 748;

// Page fault was a demand zero fault.
pub const ERROR_PAGE_FAULT_COPY_ON_WRITE = 749;

// Page fault was a demand zero fault.
pub const ERROR_PAGE_FAULT_GUARD_PAGE = 750;

// Page fault was satisfied by reading from a secondary storage device.
pub const ERROR_PAGE_FAULT_PAGING_FILE = 751;

// Cached page was locked during operation.
pub const ERROR_CACHE_PAGE_LOCKED = 752;

// Crash dump exists in paging file.
pub const ERROR_CRASH_DUMP = 753;

// Specified buffer contains all zeros.
pub const ERROR_BUFFER_ALL_ZEROS = 754;

// A reparse should be performed by the Object Manager since the name of the file resulted in a symbolic link.
pub const ERROR_REPARSE_OBJECT = 755;

// The device has succeeded a query-stop and its resource requirements have changed.
pub const ERROR_RESOURCE_REQUIREMENTS_CHANGED = 756;

// The translator has translated these resources into the global space and no further translations should be performed.
pub const ERROR_TRANSLATION_COMPLETE = 757;

// A process being terminated has no threads to terminate.
pub const ERROR_NOTHING_TO_TERMINATE = 758;

// The specified process is not part of a job.
pub const ERROR_PROCESS_NOT_IN_JOB = 759;

// The specified process is part of a job.
pub const ERROR_PROCESS_IN_JOB = 760;

// The system is now ready for hibernation.
pub const ERROR_VOLSNAP_HIBERNATE_READY = 761;

// A file system or file system filter driver has successfully completed an FsFilter operation.
pub const ERROR_FSFILTER_OP_COMPLETED_SUCCESSFULLY = 762;

// The specified interrupt vector was already connected.
pub const ERROR_INTERRUPT_VECTOR_ALREADY_CONNECTED = 763;

// The specified interrupt vector is still connected.
pub const ERROR_INTERRUPT_STILL_CONNECTED = 764;

// An operation is blocked waiting for an oplock.
pub const ERROR_WAIT_FOR_OPLOCK = 765;

// Debugger handled exception
pub const ERROR_DBG_EXCEPTION_HANDLED = 766;

// Debugger continued
pub const ERROR_DBG_CONTINUE = 767;

// An exception occurred in a user mode callback and the kernel callback frame should be removed.
pub const ERROR_CALLBACK_POP_STACK = 768;

// Compression is disabled for this volume.
pub const ERROR_COMPRESSION_DISABLED = 769;

// The data provider cannot fetch backwards through a result set.
pub const ERROR_CANTFETCHBACKWARDS = 770;

// The data provider cannot scroll backwards through a result set.
pub const ERROR_CANTSCROLLBACKWARDS = 771;

// The data provider requires that previously fetched data is released before asking for more data.
pub const ERROR_ROWSNOTRELEASED = 772;

// The data provider was not able to interpret the flags set for a column binding in an accessor.
pub const ERROR_BAD_ACCESSOR_FLAGS = 773;

// One or more errors occurred while processing the request.
pub const ERROR_ERRORS_ENCOUNTERED = 774;

// The implementation is not capable of performing the request.
pub const ERROR_NOT_CAPABLE = 775;

// The client of a component requested an operation which is not valid given the state of the component instance.
pub const ERROR_REQUEST_OUT_OF_SEQUENCE = 776;

// A version number could not be parsed.
pub const ERROR_VERSION_PARSE_ERROR = 777;

// The iterator's start position is invalid.
pub const ERROR_BADSTARTPOSITION = 778;

// The hardware has reported an uncorrectable memory error.
pub const ERROR_MEMORY_HARDWARE = 779;

// The attempted operation required self healing to be enabled.
pub const ERROR_DISK_REPAIR_DISABLED = 780;

// The Desktop heap encountered an error while allocating session memory. There is more information in the system event log.
pub const ERROR_INSUFFICIENT_RESOURCE_FOR_SPECIFIED_SHARED_SECTION_SIZE = 781;

// The system power state is transitioning from %2 to %3.
pub const ERROR_SYSTEM_POWERSTATE_TRANSITION = 782;

// The system power state is transitioning from %2 to %3 but could enter %4.
pub const ERROR_SYSTEM_POWERSTATE_COMPLEX_TRANSITION = 783;

// A thread is getting dispatched with MCA EXCEPTION because of MCA.
pub const ERROR_MCA_EXCEPTION = 784;

// Access to %1 is monitored by policy rule %2.
pub const ERROR_ACCESS_AUDIT_BY_POLICY = 785;

// Access to %1 has been restricted by your Administrator by policy rule %2.
pub const ERROR_ACCESS_DISABLED_NO_SAFER_UI_BY_POLICY = 786;

// A valid hibernation file has been invalidated and should be abandoned.
pub const ERROR_ABANDON_HIBERFILE = 787;

// This error may be caused by network connectivity issues. Please try to save this file elsewhere.
pub const ERROR_LOST_WRITEBEHIND_DATA_NETWORK_DISCONNECTED = 788;

// This error was returned by the server on which the file exists. Please try to save this file elsewhere.
pub const ERROR_LOST_WRITEBEHIND_DATA_NETWORK_SERVER_ERROR = 789;

// This error may be caused if the device has been removed or the media is write-protected.
pub const ERROR_LOST_WRITEBEHIND_DATA_LOCAL_DISK_ERROR = 790;

// The resources required for this device conflict with the MCFG table.
pub const ERROR_BAD_MCFG_TABLE = 791;

// Please schedule to take the volume offline so that it can be repaired.
pub const ERROR_DISK_REPAIR_REDIRECTED = 792;

// The volume repair was not successful.
pub const ERROR_DISK_REPAIR_UNSUCCESSFUL = 793;

// One of the volume corruption logs is full. Further corruptions that may be detected won't be logged.
pub const ERROR_CORRUPT_LOG_OVERFULL = 794;

// One of the volume corruption logs is internally corrupted and needs to be recreated. The volume may contain undetected corruptions and must be scanned.
pub const ERROR_CORRUPT_LOG_CORRUPTED = 795;

// One of the volume corruption logs is unavailable for being operated on.
pub const ERROR_CORRUPT_LOG_UNAVAILABLE = 796;

// One of the volume corruption logs was deleted while still having corruption records in them. The volume contains detected corruptions and must be scanned.
pub const ERROR_CORRUPT_LOG_DELETED_FULL = 797;

// One of the volume corruption logs was cleared by chkdsk and no longer contains real corruptions.
pub const ERROR_CORRUPT_LOG_CLEARED = 798;

// Orphaned files exist on the volume but could not be recovered because no more new names could be created in the recovery directory. Files must be moved from the recovery directory.
pub const ERROR_ORPHAN_NAME_EXHAUSTED = 799;

// The oplock that was associated with this handle is now associated with a different handle.
pub const ERROR_OPLOCK_SWITCHED_TO_NEW_HANDLE = 800;

// An oplock of the requested level cannot be granted.  An oplock of a lower level may be available.
pub const ERROR_CANNOT_GRANT_REQUESTED_OPLOCK = 801;

// The operation did not complete successfully because it would cause an oplock to be broken. The caller has requested that existing oplocks not be broken.
pub const ERROR_CANNOT_BREAK_OPLOCK = 802;

// The handle with which this oplock was associated has been closed.  The oplock is now broken.
pub const ERROR_OPLOCK_HANDLE_CLOSED = 803;

// The specified access control entry (ACE) does not contain a condition.
pub const ERROR_NO_ACE_CONDITION = 804;

// The specified access control entry (ACE) contains an invalid condition.
pub const ERROR_INVALID_ACE_CONDITION = 805;

// Access to the specified file handle has been revoked.
pub const ERROR_FILE_HANDLE_REVOKED = 806;

// An image file was mapped at a different address from the one specified in the image file but fixups will still be automatically performed on the image.
pub const ERROR_IMAGE_AT_DIFFERENT_BASE = 807;

// The read or write operation to an encrypted file could not be completed because the file has not been opened for data access.
pub const ERROR_ENCRYPTED_IO_NOT_POSSIBLE = 808;

// File metadata optimization is already in progress.
pub const ERROR_FILE_METADATA_OPTIMIZATION_IN_PROGRESS = 809;

// The requested operation failed due to quota operation is still in progress.
pub const ERROR_QUOTA_ACTIVITY = 810;

// Access to the specified handle has been revoked.
pub const ERROR_HANDLE_REVOKED = 811;

// The callback function must be invoked inline.
pub const ERROR_CALLBACK_INVOKE_INLINE = 812;

// The specified CPU Set IDs are invalid.
pub const ERROR_CPU_SET_INVALID = 813;

// The specified enclave has not yet been terminated.
pub const ERROR_ENCLAVE_NOT_TERMINATED = 814;

// Access to the extended attribute was denied.
pub const ERROR_EA_ACCESS_DENIED = 994;

// The I/O operation has been aborted because of either a thread exit or an application request.
pub const ERROR_OPERATION_ABORTED = 995;

// Overlapped I/O event is not in a signaled state.
pub const ERROR_IO_INCOMPLETE = 996;

// Overlapped I/O operation is in progress.
pub const ERROR_IO_PENDING = 997;

// Invalid access to memory location.
pub const ERROR_NOACCESS = 998;

// Error performing inpage operation.
pub const ERROR_SWAPERROR = 999;

// Recursion too deep; the stack overflowed.
pub const ERROR_STACK_OVERFLOW = 1001;

// The window cannot act on the sent message.
pub const ERROR_INVALID_MESSAGE = 1002;

// Cannot complete this function.
pub const ERROR_CAN_NOT_COMPLETE = 1003;

// Invalid flags.
pub const ERROR_INVALID_FLAGS = 1004;

// Please make sure that all required file system drivers are loaded and that the volume is not corrupted.
pub const ERROR_UNRECOGNIZED_VOLUME = 1005;

// The volume for a file has been externally altered so that the opened file is no longer valid.
pub const ERROR_FILE_INVALID = 1006;

// The requested operation cannot be performed in full-screen mode.
pub const ERROR_FULLSCREEN_MODE = 1007;

// An attempt was made to reference a token that does not exist.
pub const ERROR_NO_TOKEN = 1008;

// The configuration registry database is corrupt.
pub const ERROR_BADDB = 1009;

// The configuration registry key is invalid.
pub const ERROR_BADKEY = 1010;

// The configuration registry key could not be opened.
pub const ERROR_CANTOPEN = 1011;

// The configuration registry key could not be read.
pub const ERROR_CANTREAD = 1012;

// The configuration registry key could not be written.
pub const ERROR_CANTWRITE = 1013;

// One of the files in the registry database had to be recovered by use of a log or alternate copy. The recovery was successful.
pub const ERROR_REGISTRY_RECOVERED = 1014;

// The registry is corrupted. The structure of one of the files containing registry data is corrupted, or the system's memory image of the file is corrupted, or the file could not be recovered because the alternate copy or log was absent or corrupted.
pub const ERROR_REGISTRY_CORRUPT = 1015;

// An I/O operation initiated by the registry failed unrecoverably. The registry could not read in, or write out, or flush, one of the files that contain the system's image of the registry.
pub const ERROR_REGISTRY_IO_FAILED = 1016;

// The system has attempted to load or restore a file into the registry, but the specified file is not in a registry file format.
pub const ERROR_NOT_REGISTRY_FILE = 1017;

// Illegal operation attempted on a registry key that has been marked for deletion.
pub const ERROR_KEY_DELETED = 1018;

// System could not allocate the required space in a registry log.
pub const ERROR_NO_LOG_SPACE = 1019;

// Cannot create a symbolic link in a registry key that already has subkeys or values.
pub const ERROR_KEY_HAS_CHILDREN = 1020;

// Cannot create a stable subkey under a volatile parent key.
pub const ERROR_CHILD_MUST_BE_VOLATILE = 1021;

// A notify change request is being completed and the information is not being returned in the caller's buffer. The caller now needs to enumerate the files to find the changes.
pub const ERROR_NOTIFY_ENUM_DIR = 1022;

// A stop control has been sent to a service that other running services are dependent on.
pub const ERROR_DEPENDENT_SERVICES_RUNNING = 1051;

// The requested control is not valid for this service.
pub const ERROR_INVALID_SERVICE_CONTROL = 1052;

// The service did not respond to the start or control request in a timely fashion.
pub const ERROR_SERVICE_REQUEST_TIMEOUT = 1053;

// A thread could not be created for the service.
pub const ERROR_SERVICE_NO_THREAD = 1054;

// The service database is locked.
pub const ERROR_SERVICE_DATABASE_LOCKED = 1055;

// An instance of the service is already running.
pub const ERROR_SERVICE_ALREADY_RUNNING = 1056;

// The account name is invalid or does not exist, or the password is invalid for the account name specified.
pub const ERROR_INVALID_SERVICE_ACCOUNT = 1057;

// The service cannot be started, either because it is disabled or because it has no enabled devices associated with it.
pub const ERROR_SERVICE_DISABLED = 1058;

// Circular service dependency was specified.
pub const ERROR_CIRCULAR_DEPENDENCY = 1059;

// The specified service does not exist as an installed service.
pub const ERROR_SERVICE_DOES_NOT_EXIST = 1060;

// The service cannot accept control messages at this time.
pub const ERROR_SERVICE_CANNOT_ACCEPT_CTRL = 1061;

// The service has not been started.
pub const ERROR_SERVICE_NOT_ACTIVE = 1062;

// The service process could not connect to the service controller.
pub const ERROR_FAILED_SERVICE_CONTROLLER_CONNECT = 1063;

// An exception occurred in the service when handling the control request.
pub const ERROR_EXCEPTION_IN_SERVICE = 1064;

// The database specified does not exist.
pub const ERROR_DATABASE_DOES_NOT_EXIST = 1065;

// The service has returned a service-specific error code.
pub const ERROR_SERVICE_SPECIFIC_ERROR = 1066;

// The process terminated unexpectedly.
pub const ERROR_PROCESS_ABORTED = 1067;

// The dependency service or group failed to start.
pub const ERROR_SERVICE_DEPENDENCY_FAIL = 1068;

// The service did not start due to a logon failure.
pub const ERROR_SERVICE_LOGON_FAILED = 1069;

// After starting, the service hung in a start-pending state.
pub const ERROR_SERVICE_START_HANG = 1070;

// The specified service database lock is invalid.
pub const ERROR_INVALID_SERVICE_LOCK = 1071;

// The specified service has been marked for deletion.
pub const ERROR_SERVICE_MARKED_FOR_DELETE = 1072;

// The specified service already exists.
pub const ERROR_SERVICE_EXISTS = 1073;

// The system is currently running with the last-known-good configuration.
pub const ERROR_ALREADY_RUNNING_LKG = 1074;

// The dependency service does not exist or has been marked for deletion.
pub const ERROR_SERVICE_DEPENDENCY_DELETED = 1075;

// The current boot has already been accepted for use as the last-known-good control set.
pub const ERROR_BOOT_ALREADY_ACCEPTED = 1076;

// No attempts to start the service have been made since the last boot.
pub const ERROR_SERVICE_NEVER_STARTED = 1077;

// The name is already in use as either a service name or a service display name.
pub const ERROR_DUPLICATE_SERVICE_NAME = 1078;

// The account specified for this service is different from the account specified for other services running in the same process.
pub const ERROR_DIFFERENT_SERVICE_ACCOUNT = 1079;

// Failure actions can only be set for Win32 services, not for drivers.
pub const ERROR_CANNOT_DETECT_DRIVER_FAILURE = 1080;

// Therefore, the service control manager cannot take action if this service's process terminates unexpectedly.
pub const ERROR_CANNOT_DETECT_PROCESS_ABORT = 1081;

// No recovery program has been configured for this service.
pub const ERROR_NO_RECOVERY_PROGRAM = 1082;

// The executable program that this service is configured to run in does not implement the service.
pub const ERROR_SERVICE_NOT_IN_EXE = 1083;

// This service cannot be started in Safe Mode
pub const ERROR_NOT_SAFEBOOT_SERVICE = 1084;

// The physical end of the tape has been reached.
pub const ERROR_END_OF_MEDIA = 1100;

// A tape access reached a filemark.
pub const ERROR_FILEMARK_DETECTED = 1101;

// The beginning of the tape or a partition was encountered.
pub const ERROR_BEGINNING_OF_MEDIA = 1102;

// A tape access reached the end of a set of files.
pub const ERROR_SETMARK_DETECTED = 1103;

// No more data is on the tape.
pub const ERROR_NO_DATA_DETECTED = 1104;

// Tape could not be partitioned.
pub const ERROR_PARTITION_FAILURE = 1105;

// When accessing a new tape of a multivolume partition, the current block size is incorrect.
pub const ERROR_INVALID_BLOCK_LENGTH = 1106;

// Tape partition information could not be found when loading a tape.
pub const ERROR_DEVICE_NOT_PARTITIONED = 1107;

// Unable to lock the media eject mechanism.
pub const ERROR_UNABLE_TO_LOCK_MEDIA = 1108;

// Unable to unload the media.
pub const ERROR_UNABLE_TO_UNLOAD_MEDIA = 1109;

// The media in the drive may have changed.
pub const ERROR_MEDIA_CHANGED = 1110;

// The I/O bus was reset.
pub const ERROR_BUS_RESET = 1111;

// No media in drive.
pub const ERROR_NO_MEDIA_IN_DRIVE = 1112;

// No mapping for the Unicode character exists in the target multi-byte code page.
pub const ERROR_NO_UNICODE_TRANSLATION = 1113;

// A dynamic link library (DLL) initialization routine failed.
pub const ERROR_DLL_INIT_FAILED = 1114;

// A system shutdown is in progress.
pub const ERROR_SHUTDOWN_IN_PROGRESS = 1115;

// Unable to abort the system shutdown because no shutdown was in progress.
pub const ERROR_NO_SHUTDOWN_IN_PROGRESS = 1116;

// The request could not be performed because of an I/O device error.
pub const ERROR_IO_DEVICE = 1117;

// No serial device was successfully initialized. The serial driver will unload.
pub const ERROR_SERIAL_NO_DEVICE = 1118;

// Unable to open a device that was sharing an interrupt request (IRQ) with other devices. At least one other device that uses that IRQ was already opened.
pub const ERROR_IRQ_BUSY = 1119;

// (The IOCTL_SERIAL_XOFF_COUNTER reached zero.)
pub const ERROR_MORE_WRITES = 1120;

// (The IOCTL_SERIAL_XOFF_COUNTER did not reach zero.)
pub const ERROR_COUNTER_TIMEOUT = 1121;

// No ID address mark was found on the floppy disk.
pub const ERROR_FLOPPY_ID_MARK_NOT_FOUND = 1122;

// Mismatch between the floppy disk sector ID field and the floppy disk controller track address.
pub const ERROR_FLOPPY_WRONG_CYLINDER = 1123;

// The floppy disk controller reported an error that is not recognized by the floppy disk driver.
pub const ERROR_FLOPPY_UNKNOWN_ERROR = 1124;

// The floppy disk controller returned inconsistent results in its registers.
pub const ERROR_FLOPPY_BAD_REGISTERS = 1125;

// While accessing the hard disk, a recalibrate operation failed, even after retries.
pub const ERROR_DISK_RECALIBRATE_FAILED = 1126;

// While accessing the hard disk, a disk operation failed even after retries.
pub const ERROR_DISK_OPERATION_FAILED = 1127;

// While accessing the hard disk, a disk controller reset was needed, but even that failed.
pub const ERROR_DISK_RESET_FAILED = 1128;

// Physical end of tape encountered.
pub const ERROR_EOM_OVERFLOW = 1129;

// Not enough server storage is available to process this command.
pub const ERROR_NOT_ENOUGH_SERVER_MEMORY = 1130;

// A potential deadlock condition has been detected.
pub const ERROR_POSSIBLE_DEADLOCK = 1131;

// The base address or the file offset specified does not have the proper alignment.
pub const ERROR_MAPPED_ALIGNMENT = 1132;

// An attempt to change the system power state was vetoed by another application or driver.
pub const ERROR_SET_POWER_STATE_VETOED = 1140;

// The system BIOS failed an attempt to change the system power state.
pub const ERROR_SET_POWER_STATE_FAILED = 1141;

// An attempt was made to create more links on a file than the file system supports.
pub const ERROR_TOO_MANY_LINKS = 1142;

// The specified program requires a newer version of Windows.
pub const ERROR_OLD_WIN_VERSION = 1150;

// The specified program is not a Windows or MS-DOS program.
pub const ERROR_APP_WRONG_OS = 1151;

// Cannot start more than one instance of the specified program.
pub const ERROR_SINGLE_INSTANCE_APP = 1152;

// The specified program was written for an earlier version of Windows.
pub const ERROR_RMODE_APP = 1153;

// One of the library files needed to run this application is damaged.
pub const ERROR_INVALID_DLL = 1154;

// No application is associated with the specified file for this operation.
pub const ERROR_NO_ASSOCIATION = 1155;

// An error occurred in sending the command to the application.
pub const ERROR_DDE_FAIL = 1156;

// One of the library files needed to run this application cannot be found.
pub const ERROR_DLL_NOT_FOUND = 1157;

// The current process has used all of its system allowance of handles for Window Manager objects.
pub const ERROR_NO_MORE_USER_HANDLES = 1158;

// The message can be used only with synchronous operations.
pub const ERROR_MESSAGE_SYNC_ONLY = 1159;

// The indicated source element has no media.
pub const ERROR_SOURCE_ELEMENT_EMPTY = 1160;

// The indicated destination element already contains media.
pub const ERROR_DESTINATION_ELEMENT_FULL = 1161;

// The indicated element does not exist.
pub const ERROR_ILLEGAL_ELEMENT_ADDRESS = 1162;

// The indicated element is part of a magazine that is not present.
pub const ERROR_MAGAZINE_NOT_PRESENT = 1163;

// The indicated device requires reinitialization due to hardware errors.
pub const ERROR_DEVICE_REINITIALIZATION_NEEDED = 1164;

// The device has indicated that cleaning is required before further operations are attempted.
pub const ERROR_DEVICE_REQUIRES_CLEANING = 1165;

// The device has indicated that its door is open.
pub const ERROR_DEVICE_DOOR_OPEN = 1166;

// The device is not connected.
pub const ERROR_DEVICE_NOT_CONNECTED = 1167;

// Element not found.
pub const ERROR_NOT_FOUND = 1168;

// There was no match for the specified key in the index.
pub const ERROR_NO_MATCH = 1169;

// The property set specified does not exist on the object.
pub const ERROR_SET_NOT_FOUND = 1170;

// The point passed to GetMouseMovePoints is not in the buffer.
pub const ERROR_POINT_NOT_FOUND = 1171;

// The tracking (workstation) service is not running.
pub const ERROR_NO_TRACKING_SERVICE = 1172;

// The Volume ID could not be found.
pub const ERROR_NO_VOLUME_ID = 1173;

// Unable to remove the file to be replaced.
pub const ERROR_UNABLE_TO_REMOVE_REPLACED = 1175;

// Unable to move the replacement file to the file to be replaced. The file to be replaced has retained its original name.
pub const ERROR_UNABLE_TO_MOVE_REPLACEMENT = 1176;

// Unable to move the replacement file to the file to be replaced. The file to be replaced has been renamed using the backup name.
pub const ERROR_UNABLE_TO_MOVE_REPLACEMENT_2 = 1177;

// The volume change journal is being deleted.
pub const ERROR_JOURNAL_DELETE_IN_PROGRESS = 1178;

// The volume change journal is not active.
pub const ERROR_JOURNAL_NOT_ACTIVE = 1179;

// A file was found, but it may not be the correct file.
pub const ERROR_POTENTIAL_FILE_FOUND = 1180;

// The journal entry has been deleted from the journal.
pub const ERROR_JOURNAL_ENTRY_DELETED = 1181;

// A system shutdown has already been scheduled.
pub const ERROR_SHUTDOWN_IS_SCHEDULED = 1190;

// The system shutdown cannot be initiated because there are other users logged on to the computer.
pub const ERROR_SHUTDOWN_USERS_LOGGED_ON = 1191;

// The specified device name is invalid.
pub const ERROR_BAD_DEVICE = 1200;

// The device is not currently connected but it is a remembered connection.
pub const ERROR_CONNECTION_UNAVAIL = 1201;

// The local device name has a remembered connection to another network resource.
pub const ERROR_DEVICE_ALREADY_REMEMBERED = 1202;

// The network path was either typed incorrectly, does not exist, or the network provider is not currently available. Please try retyping the path or contact your network administrator.
pub const ERROR_NO_NET_OR_BAD_PATH = 1203;

// The specified network provider name is invalid.
pub const ERROR_BAD_PROVIDER = 1204;

// Unable to open the network connection profile.
pub const ERROR_CANNOT_OPEN_PROFILE = 1205;

// The network connection profile is corrupted.
pub const ERROR_BAD_PROFILE = 1206;

// Cannot enumerate a noncontainer.
pub const ERROR_NOT_CONTAINER = 1207;

// An extended error has occurred.
pub const ERROR_EXTENDED_ERROR = 1208;

// The format of the specified group name is invalid.
pub const ERROR_INVALID_GROUPNAME = 1209;

// The format of the specified computer name is invalid.
pub const ERROR_INVALID_COMPUTERNAME = 1210;

// The format of the specified event name is invalid.
pub const ERROR_INVALID_EVENTNAME = 1211;

// The format of the specified domain name is invalid.
pub const ERROR_INVALID_DOMAINNAME = 1212;

// The format of the specified service name is invalid.
pub const ERROR_INVALID_SERVICENAME = 1213;

// The format of the specified network name is invalid.
pub const ERROR_INVALID_NETNAME = 1214;

// The format of the specified share name is invalid.
pub const ERROR_INVALID_SHARENAME = 1215;

// The format of the specified password is invalid.
pub const ERROR_INVALID_PASSWORDNAME = 1216;

// The format of the specified message name is invalid.
pub const ERROR_INVALID_MESSAGENAME = 1217;

// The format of the specified message destination is invalid.
pub const ERROR_INVALID_MESSAGEDEST = 1218;

// Multiple connections to a server or shared resource by the same user, using more than one user name, are not allowed. Disconnect all previous connections to the server or shared resource and try again.
pub const ERROR_SESSION_CREDENTIAL_CONFLICT = 1219;

// An attempt was made to establish a session to a network server, but there are already too many sessions established to that server.
pub const ERROR_REMOTE_SESSION_LIMIT_EXCEEDED = 1220;

// The workgroup or domain name is already in use by another computer on the network.
pub const ERROR_DUP_DOMAINNAME = 1221;

// The network is not present or not started.
pub const ERROR_NO_NETWORK = 1222;

// The operation was canceled by the user.
pub const ERROR_CANCELLED = 1223;

// The requested operation cannot be performed on a file with a user-mapped section open.
pub const ERROR_USER_MAPPED_FILE = 1224;

// The remote computer refused the network connection.
pub const ERROR_CONNECTION_REFUSED = 1225;

// The network connection was gracefully closed.
pub const ERROR_GRACEFUL_DISCONNECT = 1226;

// The network transport endpoint already has an address associated with it.
pub const ERROR_ADDRESS_ALREADY_ASSOCIATED = 1227;

// An address has not yet been associated with the network endpoint.
pub const ERROR_ADDRESS_NOT_ASSOCIATED = 1228;

// An operation was attempted on a nonexistent network connection.
pub const ERROR_CONNECTION_INVALID = 1229;

// An invalid operation was attempted on an active network connection.
pub const ERROR_CONNECTION_ACTIVE = 1230;

// The network location cannot be reached. For information about network troubleshooting, see Windows Help.
pub const ERROR_NETWORK_UNREACHABLE = 1231;

// The network location cannot be reached. For information about network troubleshooting, see Windows Help.
pub const ERROR_HOST_UNREACHABLE = 1232;

// The network location cannot be reached. For information about network troubleshooting, see Windows Help.
pub const ERROR_PROTOCOL_UNREACHABLE = 1233;

// No service is operating at the destination network endpoint on the remote system.
pub const ERROR_PORT_UNREACHABLE = 1234;

// The request was aborted.
pub const ERROR_REQUEST_ABORTED = 1235;

// The network connection was aborted by the local system.
pub const ERROR_CONNECTION_ABORTED = 1236;

// The operation could not be completed. A retry should be performed.
pub const ERROR_RETRY = 1237;

// A connection to the server could not be made because the limit on the number of concurrent connections for this account has been reached.
pub const ERROR_CONNECTION_COUNT_LIMIT = 1238;

// Attempting to log in during an unauthorized time of day for this account.
pub const ERROR_LOGIN_TIME_RESTRICTION = 1239;

// The account is not authorized to log in from this station.
pub const ERROR_LOGIN_WKSTA_RESTRICTION = 1240;

// The network address could not be used for the operation requested.
pub const ERROR_INCORRECT_ADDRESS = 1241;

// The service is already registered.
pub const ERROR_ALREADY_REGISTERED = 1242;

// The specified service does not exist.
pub const ERROR_SERVICE_NOT_FOUND = 1243;

// The operation being requested was not performed because the user has not been authenticated.
pub const ERROR_NOT_AUTHENTICATED = 1244;

// The operation being requested was not performed because the user has not logged on to the network. The specified service does not exist.
pub const ERROR_NOT_LOGGED_ON = 1245;

// Continue with work in progress.
pub const ERROR_CONTINUE = 1246;

// An attempt was made to perform an initialization operation when initialization has already been completed.
pub const ERROR_ALREADY_INITIALIZED = 1247;

// No more local devices.
pub const ERROR_NO_MORE_DEVICES = 1248;

// The specified site does not exist.
pub const ERROR_NO_SUCH_SITE = 1249;

// A domain controller with the specified name already exists.
pub const ERROR_DOMAIN_CONTROLLER_EXISTS = 1250;

// This operation is supported only when you are connected to the server.
pub const ERROR_ONLY_IF_CONNECTED = 1251;

// The group policy framework should call the extension even if there are no changes.
pub const ERROR_OVERRIDE_NOCHANGES = 1252;

// The specified user does not have a valid profile.
pub const ERROR_BAD_USER_PROFILE = 1253;

// This operation is not supported on a computer running Windows Server 2003 for Small Business Server
pub const ERROR_NOT_SUPPORTED_ON_SBS = 1254;

// The server machine is shutting down.
pub const ERROR_SERVER_SHUTDOWN_IN_PROGRESS = 1255;

// The remote system is not available. For information about network troubleshooting, see Windows Help.
pub const ERROR_HOST_DOWN = 1256;

// The security identifier provided is not from an account domain.
pub const ERROR_NON_ACCOUNT_SID = 1257;

// The security identifier provided does not have a domain component.
pub const ERROR_NON_DOMAIN_SID = 1258;

// AppHelp dialog canceled thus preventing the application from starting.
pub const ERROR_APPHELP_BLOCK = 1259;

// This program is blocked by group policy. For more information, contact your system administrator.
pub const ERROR_ACCESS_DISABLED_BY_POLICY = 1260;

// A program attempt to use an invalid register value. Normally caused by an uninitialized register. This error is Itanium specific.
pub const ERROR_REG_NAT_CONSUMPTION = 1261;

// The share is currently offline or does not exist.
pub const ERROR_CSCSHARE_OFFLINE = 1262;

// The Kerberos protocol encountered an error while validating the KDC certificate during smartcard logon. There is more information in the system event log.
pub const ERROR_PKINIT_FAILURE = 1263;

// The Kerberos protocol encountered an error while attempting to utilize the smartcard subsystem.
pub const ERROR_SMARTCARD_SUBSYSTEM_FAILURE = 1264;

// The system cannot contact a domain controller to service the authentication request. Please try again later.
pub const ERROR_DOWNGRADE_DETECTED = 1265;

// The machine is locked and cannot be shut down without the force option.
pub const ERROR_MACHINE_LOCKED = 1271;

// You can't access this shared folder because your organization's security policies block unauthenticated guest access. These policies help protect your PC from unsafe or malicious devices on the network.
pub const ERROR_SMB_GUEST_LOGON_BLOCKED = 1272;

// An application-defined callback gave invalid data when called.
pub const ERROR_CALLBACK_SUPPLIED_INVALID_DATA = 1273;

// The group policy framework should call the extension in the synchronous foreground policy refresh.
pub const ERROR_SYNC_FOREGROUND_REFRESH_REQUIRED = 1274;

// This driver has been blocked from loading
pub const ERROR_DRIVER_BLOCKED = 1275;

// A dynamic link library (DLL) referenced a module that was neither a DLL nor the process's executable image.
pub const ERROR_INVALID_IMPORT_OF_NON_DLL = 1276;

// Windows cannot open this program since it has been disabled.
pub const ERROR_ACCESS_DISABLED_WEBBLADE = 1277;

// Windows cannot open this program because the license enforcement system has been tampered with or become corrupted.
pub const ERROR_ACCESS_DISABLED_WEBBLADE_TAMPER = 1278;

// A transaction recover failed.
pub const ERROR_RECOVERY_FAILURE = 1279;

// The current thread has already been converted to a fiber.
pub const ERROR_ALREADY_FIBER = 1280;

// The current thread has already been converted from a fiber.
pub const ERROR_ALREADY_THREAD = 1281;

// The system detected an overrun of a stack-based buffer in this application. This overrun could potentially allow a malicious user to gain control of this application.
pub const ERROR_STACK_BUFFER_OVERRUN = 1282;

// Data present in one of the parameters is more than the function can operate on.
pub const ERROR_PARAMETER_QUOTA_EXCEEDED = 1283;

// An attempt to do an operation on a debug object failed because the object is in the process of being deleted.
pub const ERROR_DEBUGGER_INACTIVE = 1284;

// An attempt to delay-load a .dll or get a function address in a delay-loaded .dll failed.
pub const ERROR_DELAY_LOAD_FAILED = 1285;

// %1 is a 16-bit application. You do not have permissions to execute 16-bit applications. Check your permissions with your system administrator.
pub const ERROR_VDM_DISALLOWED = 1286;

// Insufficient information exists to identify the cause of failure.
pub const ERROR_UNIDENTIFIED_ERROR = 1287;

// The parameter passed to a C runtime function is incorrect.
pub const ERROR_INVALID_CRUNTIME_PARAMETER = 1288;

// The operation occurred beyond the valid data length of the file.
pub const ERROR_BEYOND_VDL = 1289;

// The service start failed since one or more services in the same process have an incompatible service SID type setting. A service with restricted service SID type can only coexist in the same process with other services with a restricted SID type. If the service SID type for this service was just configured, the hosting process must be restarted in order to start this service.
pub const ERROR_INCOMPATIBLE_SERVICE_SID_TYPE = 1290;

// The process hosting the driver for this device has been terminated.
pub const ERROR_DRIVER_PROCESS_TERMINATED = 1291;

// An operation attempted to exceed an implementation-defined limit.
pub const ERROR_IMPLEMENTATION_LIMIT = 1292;

// Either the target process, or the target thread's containing process, is a protected process.
pub const ERROR_PROCESS_IS_PROTECTED = 1293;

// The service notification client is lagging too far behind the current state of services in the machine.
pub const ERROR_SERVICE_NOTIFY_CLIENT_LAGGING = 1294;

// To free up disk space, move files to a different location or delete unnecessary files. For more information, contact your system administrator.
pub const ERROR_DISK_QUOTA_EXCEEDED = 1295;

// The requested file operation failed because the storage policy blocks that type of file. For more information, contact your system administrator.
pub const ERROR_CONTENT_BLOCKED = 1296;

// You may use the Services Microsoft Management Console (MMC) snap-in (services.msc) and the Local Security Settings MMC snap-in (secpol.msc) to view the service configuration and the account configuration.
pub const ERROR_INCOMPATIBLE_SERVICE_PRIVILEGE = 1297;

// A thread involved in this operation appears to be unresponsive.
pub const ERROR_APP_HANG = 1298;

// Indicates a particular Security ID may not be assigned as the label of an object.
pub const ERROR_INVALID_LABEL = 1299;

// Not all privileges or groups referenced are assigned to the caller.
pub const ERROR_NOT_ALL_ASSIGNED = 1300;

// Some mapping between account names and security IDs was not done.
pub const ERROR_SOME_NOT_MAPPED = 1301;

// No system quota limits are specifically set for this account.
pub const ERROR_NO_QUOTAS_FOR_ACCOUNT = 1302;

// No encryption key is available. A well-known encryption key was returned.
pub const ERROR_LOCAL_USER_SESSION_KEY = 1303;

// The password is too complex to be converted to a LAN Manager password. The LAN Manager password returned is a NULL string.
pub const ERROR_NULL_LM_PASSWORD = 1304;

// The revision level is unknown.
pub const ERROR_UNKNOWN_REVISION = 1305;

// Indicates two revision levels are incompatible.
pub const ERROR_REVISION_MISMATCH = 1306;

// This security ID may not be assigned as the owner of this object.
pub const ERROR_INVALID_OWNER = 1307;

// This security ID may not be assigned as the primary group of an object.
pub const ERROR_INVALID_PRIMARY_GROUP = 1308;

// An attempt has been made to operate on an impersonation token by a thread that is not currently impersonating a client.
pub const ERROR_NO_IMPERSONATION_TOKEN = 1309;

// The group may not be disabled.
pub const ERROR_CANT_DISABLE_MANDATORY = 1310;

// We can't sign you in with this credential because your domain isn't available. Make sure your device is connected to your organization's network and try again. If you previously signed in on this device with another credential, you can sign in with that credential.
pub const ERROR_NO_LOGON_SERVERS = 1311;

// A specified logon session does not exist. It may already have been terminated.
pub const ERROR_NO_SUCH_LOGON_SESSION = 1312;

// A specified privilege does not exist.
pub const ERROR_NO_SUCH_PRIVILEGE = 1313;

// A required privilege is not held by the client.
pub const ERROR_PRIVILEGE_NOT_HELD = 1314;

// The name provided is not a properly formed account name.
pub const ERROR_INVALID_ACCOUNT_NAME = 1315;

// The specified account already exists.
pub const ERROR_USER_EXISTS = 1316;

// The specified account does not exist.
pub const ERROR_NO_SUCH_USER = 1317;

// The specified group already exists.
pub const ERROR_GROUP_EXISTS = 1318;

// The specified group does not exist.
pub const ERROR_NO_SUCH_GROUP = 1319;

// Either the specified user account is already a member of the specified group, or the specified group cannot be deleted because it contains a member.
pub const ERROR_MEMBER_IN_GROUP = 1320;

// The specified user account is not a member of the specified group account.
pub const ERROR_MEMBER_NOT_IN_GROUP = 1321;

// This operation is disallowed as it could result in an administration account being disabled, deleted or unable to logon.
pub const ERROR_LAST_ADMIN = 1322;

// Unable to update the password. The value provided as the current password is incorrect.
pub const ERROR_WRONG_PASSWORD = 1323;

// Unable to update the password. The value provided for the new password contains values that are not allowed in passwords.
pub const ERROR_ILL_FORMED_PASSWORD = 1324;

// Unable to update the password. The value provided for the new password does not meet the length, complexity, or history requirements of the domain.
pub const ERROR_PASSWORD_RESTRICTION = 1325;

// The user name or password is incorrect.
pub const ERROR_LOGON_FAILURE = 1326;

// Account restrictions are preventing this user from signing in. For example: blank passwords aren't allowed, sign-in times are limited, or a policy restriction has been enforced.
pub const ERROR_ACCOUNT_RESTRICTION = 1327;

// Your account has time restrictions that keep you from signing in right now.
pub const ERROR_INVALID_LOGON_HOURS = 1328;

// This user isn't allowed to sign in to this computer.
pub const ERROR_INVALID_WORKSTATION = 1329;

// The password for this account has expired.
pub const ERROR_PASSWORD_EXPIRED = 1330;

// This user can't sign in because this account is currently disabled.
pub const ERROR_ACCOUNT_DISABLED = 1331;

// No mapping between account names and security IDs was done.
pub const ERROR_NONE_MAPPED = 1332;

// Too many local user identifiers (LUIDs) were requested at one time.
pub const ERROR_TOO_MANY_LUIDS_REQUESTED = 1333;

// No more local user identifiers (LUIDs) are available.
pub const ERROR_LUIDS_EXHAUSTED = 1334;

// The subauthority part of a security ID is invalid for this particular use.
pub const ERROR_INVALID_SUB_AUTHORITY = 1335;

// The access control list (ACL) structure is invalid.
pub const ERROR_INVALID_ACL = 1336;

// The security ID structure is invalid.
pub const ERROR_INVALID_SID = 1337;

// The security descriptor structure is invalid.
pub const ERROR_INVALID_SECURITY_DESCR = 1338;

// The inherited access control list (ACL) or access control entry (ACE) could not be built.
pub const ERROR_BAD_INHERITANCE_ACL = 1340;

// The server is currently disabled.
pub const ERROR_SERVER_DISABLED = 1341;

// The server is currently enabled.
pub const ERROR_SERVER_NOT_DISABLED = 1342;

// The value provided was an invalid value for an identifier authority.
pub const ERROR_INVALID_ID_AUTHORITY = 1343;

// No more memory is available for security information updates.
pub const ERROR_ALLOTTED_SPACE_EXCEEDED = 1344;

// The specified attributes are invalid, or incompatible with the attributes for the group as a whole.
pub const ERROR_INVALID_GROUP_ATTRIBUTES = 1345;

// Either a required impersonation level was not provided, or the provided impersonation level is invalid.
pub const ERROR_BAD_IMPERSONATION_LEVEL = 1346;

// Cannot open an anonymous level security token.
pub const ERROR_CANT_OPEN_ANONYMOUS = 1347;

// The validation information class requested was invalid.
pub const ERROR_BAD_VALIDATION_CLASS = 1348;

// The type of the token is inappropriate for its attempted use.
pub const ERROR_BAD_TOKEN_TYPE = 1349;

// Unable to perform a security operation on an object that has no associated security.
pub const ERROR_NO_SECURITY_ON_OBJECT = 1350;

// Configuration information could not be read from the domain controller, either because the machine is unavailable, or access has been denied.
pub const ERROR_CANT_ACCESS_DOMAIN_INFO = 1351;

// The security account manager (SAM) or local security authority (LSA) server was in the wrong state to perform the security operation.
pub const ERROR_INVALID_SERVER_STATE = 1352;

// The domain was in the wrong state to perform the security operation.
pub const ERROR_INVALID_DOMAIN_STATE = 1353;

// This operation is only allowed for the Primary Domain Controller of the domain.
pub const ERROR_INVALID_DOMAIN_ROLE = 1354;

// The specified domain either does not exist or could not be contacted.
pub const ERROR_NO_SUCH_DOMAIN = 1355;

// The specified domain already exists.
pub const ERROR_DOMAIN_EXISTS = 1356;

// An attempt was made to exceed the limit on the number of domains per server.
pub const ERROR_DOMAIN_LIMIT_EXCEEDED = 1357;

// Unable to complete the requested operation because of either a catastrophic media failure or a data structure corruption on the disk.
pub const ERROR_INTERNAL_DB_CORRUPTION = 1358;

// An internal error occurred.
pub const ERROR_INTERNAL_ERROR = 1359;

// Generic access types were contained in an access mask which should already be mapped to nongeneric types.
pub const ERROR_GENERIC_NOT_MAPPED = 1360;

// A security descriptor is not in the right format (absolute or self-relative).
pub const ERROR_BAD_DESCRIPTOR_FORMAT = 1361;

// The requested action is restricted for use by logon processes only. The calling process has not registered as a logon process.
pub const ERROR_NOT_LOGON_PROCESS = 1362;

// Cannot start a new logon session with an ID that is already in use.
pub const ERROR_LOGON_SESSION_EXISTS = 1363;

// A specified authentication package is unknown.
pub const ERROR_NO_SUCH_PACKAGE = 1364;

// The logon session is not in a state that is consistent with the requested operation.
pub const ERROR_BAD_LOGON_SESSION_STATE = 1365;

// The logon session ID is already in use.
pub const ERROR_LOGON_SESSION_COLLISION = 1366;

// A logon request contained an invalid logon type value.
pub const ERROR_INVALID_LOGON_TYPE = 1367;

// Unable to impersonate using a named pipe until data has been read from that pipe.
pub const ERROR_CANNOT_IMPERSONATE = 1368;

// The transaction state of a registry subtree is incompatible with the requested operation.
pub const ERROR_RXACT_INVALID_STATE = 1369;

// An internal security database corruption has been encountered.
pub const ERROR_RXACT_COMMIT_FAILURE = 1370;

// Cannot perform this operation on built-in accounts.
pub const ERROR_SPECIAL_ACCOUNT = 1371;

// Cannot perform this operation on this built-in special group.
pub const ERROR_SPECIAL_GROUP = 1372;

// Cannot perform this operation on this built-in special user.
pub const ERROR_SPECIAL_USER = 1373;

// The user cannot be removed from a group because the group is currently the user's primary group.
pub const ERROR_MEMBERS_PRIMARY_GROUP = 1374;

// The token is already in use as a primary token.
pub const ERROR_TOKEN_ALREADY_IN_USE = 1375;

// The specified local group does not exist.
pub const ERROR_NO_SUCH_ALIAS = 1376;

// The specified account name is not a member of the group.
pub const ERROR_MEMBER_NOT_IN_ALIAS = 1377;

// The specified account name is already a member of the group.
pub const ERROR_MEMBER_IN_ALIAS = 1378;

// The specified local group already exists.
pub const ERROR_ALIAS_EXISTS = 1379;

// Logon failure: the user has not been granted the requested logon type at this computer.
pub const ERROR_LOGON_NOT_GRANTED = 1380;

// The maximum number of secrets that may be stored in a single system has been exceeded.
pub const ERROR_TOO_MANY_SECRETS = 1381;

// The length of a secret exceeds the maximum length allowed.
pub const ERROR_SECRET_TOO_LONG = 1382;

// The local security authority database contains an internal inconsistency.
pub const ERROR_INTERNAL_DB_ERROR = 1383;

// During a logon attempt, the user's security context accumulated too many security IDs.
pub const ERROR_TOO_MANY_CONTEXT_IDS = 1384;

// Logon failure: the user has not been granted the requested logon type at this computer.
pub const ERROR_LOGON_TYPE_NOT_GRANTED = 1385;

// A cross-encrypted password is necessary to change a user password.
pub const ERROR_NT_CROSS_ENCRYPTION_REQUIRED = 1386;

// A member could not be added to or removed from the local group because the member does not exist.
pub const ERROR_NO_SUCH_MEMBER = 1387;

// A new member could not be added to a local group because the member has the wrong account type.
pub const ERROR_INVALID_MEMBER = 1388;

// Too many security IDs have been specified.
pub const ERROR_TOO_MANY_SIDS = 1389;

// A cross-encrypted password is necessary to change this user password.
pub const ERROR_LM_CROSS_ENCRYPTION_REQUIRED = 1390;

// Indicates an ACL contains no inheritable components.
pub const ERROR_NO_INHERITANCE = 1391;

// The file or directory is corrupted and unreadable.
pub const ERROR_FILE_CORRUPT = 1392;

// The disk structure is corrupted and unreadable.
pub const ERROR_DISK_CORRUPT = 1393;

// There is no user session key for the specified logon session.
pub const ERROR_NO_USER_SESSION_KEY = 1394;

// The service being accessed is licensed for a particular number of connections. No more connections can be made to the service at this time because there are already as many connections as the service can accept.
pub const ERROR_LICENSE_QUOTA_EXCEEDED = 1395;

// The target account name is incorrect.
pub const ERROR_WRONG_TARGET_NAME = 1396;

// Mutual Authentication failed. The server's password is out of date at the domain controller.
pub const ERROR_MUTUAL_AUTH_FAILED = 1397;

// There is a time and/or date difference between the client and server.
pub const ERROR_TIME_SKEW = 1398;

// This operation cannot be performed on the current domain.
pub const ERROR_CURRENT_DOMAIN_NOT_ALLOWED = 1399;

// Invalid window handle.
pub const ERROR_INVALID_WINDOW_HANDLE = 1400;

// Invalid menu handle.
pub const ERROR_INVALID_MENU_HANDLE = 1401;

// Invalid cursor handle.
pub const ERROR_INVALID_CURSOR_HANDLE = 1402;

// Invalid accelerator table handle.
pub const ERROR_INVALID_ACCEL_HANDLE = 1403;

// Invalid hook handle.
pub const ERROR_INVALID_HOOK_HANDLE = 1404;

// Invalid handle to a multiple-window position structure.
pub const ERROR_INVALID_DWP_HANDLE = 1405;

// Cannot create a top-level child window.
pub const ERROR_TLW_WITH_WSCHILD = 1406;

// Cannot find window class.
pub const ERROR_CANNOT_FIND_WND_CLASS = 1407;

// Invalid window; it belongs to other thread.
pub const ERROR_WINDOW_OF_OTHER_THREAD = 1408;

// Hot key is already registered.
pub const ERROR_HOTKEY_ALREADY_REGISTERED = 1409;

// Class already exists.
pub const ERROR_CLASS_ALREADY_EXISTS = 1410;

// Class does not exist.
pub const ERROR_CLASS_DOES_NOT_EXIST = 1411;

// Class still has open windows.
pub const ERROR_CLASS_HAS_WINDOWS = 1412;

// Invalid index.
pub const ERROR_INVALID_INDEX = 1413;

// Invalid icon handle.
pub const ERROR_INVALID_ICON_HANDLE = 1414;

// Using private DIALOG window words.
pub const ERROR_PRIVATE_DIALOG_INDEX = 1415;

// The list box identifier was not found.
pub const ERROR_LISTBOX_ID_NOT_FOUND = 1416;

// No wildcards were found.
pub const ERROR_NO_WILDCARD_CHARACTERS = 1417;

// Thread does not have a clipboard open.
pub const ERROR_CLIPBOARD_NOT_OPEN = 1418;

// Hot key is not registered.
pub const ERROR_HOTKEY_NOT_REGISTERED = 1419;

// The window is not a valid dialog window.
pub const ERROR_WINDOW_NOT_DIALOG = 1420;

// Control ID not found.
pub const ERROR_CONTROL_ID_NOT_FOUND = 1421;

// Invalid message for a combo box because it does not have an edit control.
pub const ERROR_INVALID_COMBOBOX_MESSAGE = 1422;

// The window is not a combo box.
pub const ERROR_WINDOW_NOT_COMBOBOX = 1423;

// Height must be less than 256.
pub const ERROR_INVALID_EDIT_HEIGHT = 1424;

// Invalid device context (DC) handle.
pub const ERROR_DC_NOT_FOUND = 1425;

// Invalid hook procedure type.
pub const ERROR_INVALID_HOOK_FILTER = 1426;

// Invalid hook procedure.
pub const ERROR_INVALID_FILTER_PROC = 1427;

// Cannot set nonlocal hook without a module handle.
pub const ERROR_HOOK_NEEDS_HMOD = 1428;

// This hook procedure can only be set globally.
pub const ERROR_GLOBAL_ONLY_HOOK = 1429;

// The journal hook procedure is already installed.
pub const ERROR_JOURNAL_HOOK_SET = 1430;

// The hook procedure is not installed.
pub const ERROR_HOOK_NOT_INSTALLED = 1431;

// Invalid message for single-selection list box.
pub const ERROR_INVALID_LB_MESSAGE = 1432;

// LB_SETCOUNT sent to non-lazy list box.
pub const ERROR_SETCOUNT_ON_BAD_LB = 1433;

// This list box does not support tab stops.
pub const ERROR_LB_WITHOUT_TABSTOPS = 1434;

// Cannot destroy object created by another thread.
pub const ERROR_DESTROY_OBJECT_OF_OTHER_THREAD = 1435;

// Child windows cannot have menus.
pub const ERROR_CHILD_WINDOW_MENU = 1436;

// The window does not have a system menu.
pub const ERROR_NO_SYSTEM_MENU = 1437;

// Invalid message box style.
pub const ERROR_INVALID_MSGBOX_STYLE = 1438;

// Invalid system-wide (SPI_*) parameter.
pub const ERROR_INVALID_SPI_VALUE = 1439;

// Screen already locked.
pub const ERROR_SCREEN_ALREADY_LOCKED = 1440;

// All handles to windows in a multiple-window position structure must have the same parent.
pub const ERROR_HWNDS_HAVE_DIFF_PARENT = 1441;

// The window is not a child window.
pub const ERROR_NOT_CHILD_WINDOW = 1442;

// Invalid GW_* command.
pub const ERROR_INVALID_GW_COMMAND = 1443;

// Invalid thread identifier.
pub const ERROR_INVALID_THREAD_ID = 1444;

// Cannot process a message from a window that is not a multiple document interface (MDI) window.
pub const ERROR_NON_MDICHILD_WINDOW = 1445;

// Popup menu already active.
pub const ERROR_POPUP_ALREADY_ACTIVE = 1446;

// The window does not have scroll bars.
pub const ERROR_NO_SCROLLBARS = 1447;

// Scroll bar range cannot be greater than MAXLONG.
pub const ERROR_INVALID_SCROLLBAR_RANGE = 1448;

// Cannot show or remove the window in the way specified.
pub const ERROR_INVALID_SHOWWIN_COMMAND = 1449;

// Insufficient system resources exist to complete the requested service.
pub const ERROR_NO_SYSTEM_RESOURCES = 1450;

// Insufficient system resources exist to complete the requested service.
pub const ERROR_NONPAGED_SYSTEM_RESOURCES = 1451;

// Insufficient system resources exist to complete the requested service.
pub const ERROR_PAGED_SYSTEM_RESOURCES = 1452;

// Insufficient quota to complete the requested service.
pub const ERROR_WORKING_SET_QUOTA = 1453;

// Insufficient quota to complete the requested service.
pub const ERROR_PAGEFILE_QUOTA = 1454;

// The paging file is too small for this operation to complete.
pub const ERROR_COMMITMENT_LIMIT = 1455;

// A menu item was not found.
pub const ERROR_MENU_ITEM_NOT_FOUND = 1456;

// Invalid keyboard layout handle.
pub const ERROR_INVALID_KEYBOARD_HANDLE = 1457;

// Hook type not allowed.
pub const ERROR_HOOK_TYPE_NOT_ALLOWED = 1458;

// This operation requires an interactive window station.
pub const ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION = 1459;

// This operation returned because the timeout period expired.
pub const ERROR_TIMEOUT = 1460;

// Invalid monitor handle.
pub const ERROR_INVALID_MONITOR_HANDLE = 1461;

// Incorrect size argument.
pub const ERROR_INCORRECT_SIZE = 1462;

// The symbolic link cannot be followed because its type is disabled.
pub const ERROR_SYMLINK_CLASS_DISABLED = 1463;

// This application does not support the current operation on symbolic links.
pub const ERROR_SYMLINK_NOT_SUPPORTED = 1464;

// Windows was unable to parse the requested XML data.
pub const ERROR_XML_PARSE_ERROR = 1465;

// An error was encountered while processing an XML digital signature.
pub const ERROR_XMLDSIG_ERROR = 1466;

// This application must be restarted.
pub const ERROR_RESTART_APPLICATION = 1467;

// The caller made the connection request in the wrong routing compartment.
pub const ERROR_WRONG_COMPARTMENT = 1468;

// There was an AuthIP failure when attempting to connect to the remote host.
pub const ERROR_AUTHIP_FAILURE = 1469;

// Insufficient NVRAM resources exist to complete the requested service. A reboot might be required.
pub const ERROR_NO_NVRAM_RESOURCES = 1470;

// Unable to finish the requested operation because the specified process is not a GUI process.
pub const ERROR_NOT_GUI_PROCESS = 1471;

// The event log file is corrupted.
pub const ERROR_EVENTLOG_FILE_CORRUPT = 1500;

// No event log file could be opened, so the event logging service did not start.
pub const ERROR_EVENTLOG_CANT_START = 1501;

// The event log file is full.
pub const ERROR_LOG_FILE_FULL = 1502;

// The event log file has changed between read operations.
pub const ERROR_EVENTLOG_FILE_CHANGED = 1503;

// The specified Job already has a container assigned to it.
pub const ERROR_CONTAINER_ASSIGNED = 1504;

// The specified Job does not have a container assigned to it.
pub const ERROR_JOB_NO_CONTAINER = 1505;

// The specified task name is invalid.
pub const ERROR_INVALID_TASK_NAME = 1550;

// The specified task index is invalid.
pub const ERROR_INVALID_TASK_INDEX = 1551;

// The specified thread is already joining a task.
pub const ERROR_THREAD_ALREADY_IN_TASK = 1552;

// The Windows Installer Service could not be accessed. This can occur if the Windows Installer is not correctly installed. Contact your support personnel for assistance.
pub const ERROR_INSTALL_SERVICE_FAILURE = 1601;

// User cancelled installation.
pub const ERROR_INSTALL_USEREXIT = 1602;

// Fatal error during installation.
pub const ERROR_INSTALL_FAILURE = 1603;

// Installation suspended, incomplete.
pub const ERROR_INSTALL_SUSPEND = 1604;

// This action is only valid for products that are currently installed.
pub const ERROR_UNKNOWN_PRODUCT = 1605;

// Feature ID not registered.
pub const ERROR_UNKNOWN_FEATURE = 1606;

// Component ID not registered.
pub const ERROR_UNKNOWN_COMPONENT = 1607;

// Unknown property.
pub const ERROR_UNKNOWN_PROPERTY = 1608;

// Handle is in an invalid state.
pub const ERROR_INVALID_HANDLE_STATE = 1609;

// The configuration data for this product is corrupt. Contact your support personnel.
pub const ERROR_BAD_CONFIGURATION = 1610;

// Component qualifier not present.
pub const ERROR_INDEX_ABSENT = 1611;

// The installation source for this product is not available. Verify that the source exists and that you can access it.
pub const ERROR_INSTALL_SOURCE_ABSENT = 1612;

// This installation package cannot be installed by the Windows Installer service. You must install a Windows service pack that contains a newer version of the Windows Installer service.
pub const ERROR_INSTALL_PACKAGE_VERSION = 1613;

// Product is uninstalled.
pub const ERROR_PRODUCT_UNINSTALLED = 1614;

// SQL query syntax invalid or unsupported.
pub const ERROR_BAD_QUERY_SYNTAX = 1615;

// Record field does not exist.
pub const ERROR_INVALID_FIELD = 1616;

// The device has been removed.
pub const ERROR_DEVICE_REMOVED = 1617;

// Another installation is already in progress. Complete that installation before proceeding with this install.
pub const ERROR_INSTALL_ALREADY_RUNNING = 1618;

// This installation package could not be opened. Verify that the package exists and that you can access it, or contact the application vendor to verify that this is a valid Windows Installer package.
pub const ERROR_INSTALL_PACKAGE_OPEN_FAILED = 1619;

// This installation package could not be opened. Contact the application vendor to verify that this is a valid Windows Installer package.
pub const ERROR_INSTALL_PACKAGE_INVALID = 1620;

// There was an error starting the Windows Installer service user interface. Contact your support personnel.
pub const ERROR_INSTALL_UI_FAILURE = 1621;

// Error opening installation log file. Verify that the specified log file location exists and that you can write to it.
pub const ERROR_INSTALL_LOG_FAILURE = 1622;

// The language of this installation package is not supported by your system.
pub const ERROR_INSTALL_LANGUAGE_UNSUPPORTED = 1623;

// Error applying transforms. Verify that the specified transform paths are valid.
pub const ERROR_INSTALL_TRANSFORM_FAILURE = 1624;

// This installation is forbidden by system policy. Contact your system administrator.
pub const ERROR_INSTALL_PACKAGE_REJECTED = 1625;

// Function could not be executed.
pub const ERROR_FUNCTION_NOT_CALLED = 1626;

// Function failed during execution.
pub const ERROR_FUNCTION_FAILED = 1627;

// Invalid or unknown table specified.
pub const ERROR_INVALID_TABLE = 1628;

// Data supplied is of wrong type.
pub const ERROR_DATATYPE_MISMATCH = 1629;

// Data of this type is not supported.
pub const ERROR_UNSUPPORTED_TYPE = 1630;

// The Windows Installer service failed to start. Contact your support personnel.
pub const ERROR_CREATE_FAILED = 1631;

// The Temp folder is on a drive that is full or is inaccessible. Free up space on the drive or verify that you have write permission on the Temp folder.
pub const ERROR_INSTALL_TEMP_UNWRITABLE = 1632;

// This installation package is not supported by this processor type. Contact your product vendor.
pub const ERROR_INSTALL_PLATFORM_UNSUPPORTED = 1633;

// Component not used on this computer.
pub const ERROR_INSTALL_NOTUSED = 1634;

// This update package could not be opened. Verify that the update package exists and that you can access it, or contact the application vendor to verify that this is a valid Windows Installer update package.
pub const ERROR_PATCH_PACKAGE_OPEN_FAILED = 1635;

// This update package could not be opened. Contact the application vendor to verify that this is a valid Windows Installer update package.
pub const ERROR_PATCH_PACKAGE_INVALID = 1636;

// This update package cannot be processed by the Windows Installer service. You must install a Windows service pack that contains a newer version of the Windows Installer service.
pub const ERROR_PATCH_PACKAGE_UNSUPPORTED = 1637;

// Another version of this product is already installed. Installation of this version cannot continue. To configure or remove the existing version of this product, use Add/Remove Programs on the Control Panel.
pub const ERROR_PRODUCT_VERSION = 1638;

// Invalid command line argument. Consult the Windows Installer SDK for detailed command line help.
pub const ERROR_INVALID_COMMAND_LINE = 1639;

// Only administrators have permission to add, remove, or configure server software during a Terminal services remote session. If you want to install or configure software on the server, contact your network administrator.
pub const ERROR_INSTALL_REMOTE_DISALLOWED = 1640;

// The requested operation completed successfully. The system will be restarted so the changes can take effect.
pub const ERROR_SUCCESS_REBOOT_INITIATED = 1641;

// The upgrade cannot be installed by the Windows Installer service because the program to be upgraded may be missing, or the upgrade may update a different version of the program. Verify that the program to be upgraded exists on your computer and that you have the correct upgrade.
pub const ERROR_PATCH_TARGET_NOT_FOUND = 1642;

// The update package is not permitted by software restriction policy.
pub const ERROR_PATCH_PACKAGE_REJECTED = 1643;

// One or more customizations are not permitted by software restriction policy.
pub const ERROR_INSTALL_TRANSFORM_REJECTED = 1644;

// The Windows Installer does not permit installation from a Remote Desktop Connection.
pub const ERROR_INSTALL_REMOTE_PROHIBITED = 1645;

// Uninstallation of the update package is not supported.
pub const ERROR_PATCH_REMOVAL_UNSUPPORTED = 1646;

// The update is not applied to this product.
pub const ERROR_UNKNOWN_PATCH = 1647;

// No valid sequence could be found for the set of updates.
pub const ERROR_PATCH_NO_SEQUENCE = 1648;

// Update removal was disallowed by policy.
pub const ERROR_PATCH_REMOVAL_DISALLOWED = 1649;

// The XML update data is invalid.
pub const ERROR_INVALID_PATCH_XML = 1650;

// Windows Installer does not permit updating of managed advertised products. At least one feature of the product must be installed before applying the update.
pub const ERROR_PATCH_MANAGED_ADVERTISED_PRODUCT = 1651;

// The Windows Installer service is not accessible in Safe Mode. Please try again when your computer is not in Safe Mode or you can use System Restore to return your machine to a previous good state.
pub const ERROR_INSTALL_SERVICE_SAFEBOOT = 1652;

// A fail fast exception occurred. Exception handlers will not be invoked and the process will be terminated immediately.
pub const ERROR_FAIL_FAST_EXCEPTION = 1653;

// The app that you are trying to run is not supported on this version of Windows.
pub const ERROR_INSTALL_REJECTED = 1654;

// The operation was blocked as the process prohibits dynamic code generation.
pub const ERROR_DYNAMIC_CODE_BLOCKED = 1655;

// The objects are not identical.
pub const ERROR_NOT_SAME_OBJECT = 1656;

// The specified image file was blocked from loading because it does not enable a feature required by the process: Control Flow Guard.
pub const ERROR_STRICT_CFG_VIOLATION = 1657;

// The thread context could not be updated because this has been restricted for the process.
pub const ERROR_SET_CONTEXT_DENIED = 1660;

// An invalid cross-partition private file/section access was attempted.
pub const ERROR_CROSS_PARTITION_VIOLATION = 1661;

// The string binding is invalid.
pub const RPC_S_INVALID_STRING_BINDING = 1700;

// The binding handle is not the correct type.
pub const RPC_S_WRONG_KIND_OF_BINDING = 1701;

// The binding handle is invalid.
pub const RPC_S_INVALID_BINDING = 1702;

// The RPC protocol sequence is not supported.
pub const RPC_S_PROTSEQ_NOT_SUPPORTED = 1703;

// The RPC protocol sequence is invalid.
pub const RPC_S_INVALID_RPC_PROTSEQ = 1704;

// The string universal unique identifier (UUID) is invalid.
pub const RPC_S_INVALID_STRING_UUID = 1705;

// The endpoint format is invalid.
pub const RPC_S_INVALID_ENDPOINT_FORMAT = 1706;

// The network address is invalid.
pub const RPC_S_INVALID_NET_ADDR = 1707;

// No endpoint was found.
pub const RPC_S_NO_ENDPOINT_FOUND = 1708;

// The timeout value is invalid.
pub const RPC_S_INVALID_TIMEOUT = 1709;

// The object universal unique identifier (UUID) was not found.
pub const RPC_S_OBJECT_NOT_FOUND = 1710;

// The object universal unique identifier (UUID) has already been registered.
pub const RPC_S_ALREADY_REGISTERED = 1711;

// The type universal unique identifier (UUID) has already been registered.
pub const RPC_S_TYPE_ALREADY_REGISTERED = 1712;

// The RPC server is already listening.
pub const RPC_S_ALREADY_LISTENING = 1713;

// No protocol sequences have been registered.
pub const RPC_S_NO_PROTSEQS_REGISTERED = 1714;

// The RPC server is not listening.
pub const RPC_S_NOT_LISTENING = 1715;

// The manager type is unknown.
pub const RPC_S_UNKNOWN_MGR_TYPE = 1716;

// The interface is unknown.
pub const RPC_S_UNKNOWN_IF = 1717;

// There are no bindings.
pub const RPC_S_NO_BINDINGS = 1718;

// There are no protocol sequences.
pub const RPC_S_NO_PROTSEQS = 1719;

// The endpoint cannot be created.
pub const RPC_S_CANT_CREATE_ENDPOINT = 1720;

// Not enough resources are available to complete this operation.
pub const RPC_S_OUT_OF_RESOURCES = 1721;

// The RPC server is unavailable.
pub const RPC_S_SERVER_UNAVAILABLE = 1722;

// The RPC server is too busy to complete this operation.
pub const RPC_S_SERVER_TOO_BUSY = 1723;

// The network options are invalid.
pub const RPC_S_INVALID_NETWORK_OPTIONS = 1724;

// There are no remote procedure calls active on this thread.
pub const RPC_S_NO_CALL_ACTIVE = 1725;

// The remote procedure call failed.
pub const RPC_S_CALL_FAILED = 1726;

// The remote procedure call failed and did not execute.
pub const RPC_S_CALL_FAILED_DNE = 1727;

// A remote procedure call (RPC) protocol error occurred.
pub const RPC_S_PROTOCOL_ERROR = 1728;

// Access to the HTTP proxy is denied.
pub const RPC_S_PROXY_ACCESS_DENIED = 1729;

// The transfer syntax is not supported by the RPC server.
pub const RPC_S_UNSUPPORTED_TRANS_SYN = 1730;

// The universal unique identifier (UUID) type is not supported.
pub const RPC_S_UNSUPPORTED_TYPE = 1732;

// The tag is invalid.
pub const RPC_S_INVALID_TAG = 1733;

// The array bounds are invalid.
pub const RPC_S_INVALID_BOUND = 1734;

// The binding does not contain an entry name.
pub const RPC_S_NO_ENTRY_NAME = 1735;

// The name syntax is invalid.
pub const RPC_S_INVALID_NAME_SYNTAX = 1736;

// The name syntax is not supported.
pub const RPC_S_UNSUPPORTED_NAME_SYNTAX = 1737;

// No network address is available to use to construct a universal unique identifier (UUID).
pub const RPC_S_UUID_NO_ADDRESS = 1739;

// The endpoint is a duplicate.
pub const RPC_S_DUPLICATE_ENDPOINT = 1740;

// The authentication type is unknown.
pub const RPC_S_UNKNOWN_AUTHN_TYPE = 1741;

// The maximum number of calls is too small.
pub const RPC_S_MAX_CALLS_TOO_SMALL = 1742;

// The string is too long.
pub const RPC_S_STRING_TOO_LONG = 1743;

// The RPC protocol sequence was not found.
pub const RPC_S_PROTSEQ_NOT_FOUND = 1744;

// The procedure number is out of range.
pub const RPC_S_PROCNUM_OUT_OF_RANGE = 1745;

// The binding does not contain any authentication information.
pub const RPC_S_BINDING_HAS_NO_AUTH = 1746;

// The authentication service is unknown.
pub const RPC_S_UNKNOWN_AUTHN_SERVICE = 1747;

// The authentication level is unknown.
pub const RPC_S_UNKNOWN_AUTHN_LEVEL = 1748;

// The security context is invalid.
pub const RPC_S_INVALID_AUTH_IDENTITY = 1749;

// The authorization service is unknown.
pub const RPC_S_UNKNOWN_AUTHZ_SERVICE = 1750;

// The entry is invalid.
pub const EPT_S_INVALID_ENTRY = 1751;

// The server endpoint cannot perform the operation.
pub const EPT_S_CANT_PERFORM_OP = 1752;

// There are no more endpoints available from the endpoint mapper.
pub const EPT_S_NOT_REGISTERED = 1753;

// No interfaces have been exported.
pub const RPC_S_NOTHING_TO_EXPORT = 1754;

// The entry name is incomplete.
pub const RPC_S_INCOMPLETE_NAME = 1755;

// The version option is invalid.
pub const RPC_S_INVALID_VERS_OPTION = 1756;

// There are no more members.
pub const RPC_S_NO_MORE_MEMBERS = 1757;

// There is nothing to unexport.
pub const RPC_S_NOT_ALL_OBJS_UNEXPORTED = 1758;

// The interface was not found.
pub const RPC_S_INTERFACE_NOT_FOUND = 1759;

// The entry already exists.
pub const RPC_S_ENTRY_ALREADY_EXISTS = 1760;

// The entry is not found.
pub const RPC_S_ENTRY_NOT_FOUND = 1761;

// The name service is unavailable.
pub const RPC_S_NAME_SERVICE_UNAVAILABLE = 1762;

// The network address family is invalid.
pub const RPC_S_INVALID_NAF_ID = 1763;

// The requested operation is not supported.
pub const RPC_S_CANNOT_SUPPORT = 1764;

// No security context is available to allow impersonation.
pub const RPC_S_NO_CONTEXT_AVAILABLE = 1765;

// An internal error occurred in a remote procedure call (RPC).
pub const RPC_S_INTERNAL_ERROR = 1766;

// The RPC server attempted an integer division by zero.
pub const RPC_S_ZERO_DIVIDE = 1767;

// An addressing error occurred in the RPC server.
pub const RPC_S_ADDRESS_ERROR = 1768;

// A floating-point operation at the RPC server caused a division by zero.
pub const RPC_S_FP_DIV_ZERO = 1769;

// A floating-point underflow occurred at the RPC server.
pub const RPC_S_FP_UNDERFLOW = 1770;

// A floating-point overflow occurred at the RPC server.
pub const RPC_S_FP_OVERFLOW = 1771;

// The list of RPC servers available for the binding of auto handles has been exhausted.
pub const RPC_X_NO_MORE_ENTRIES = 1772;

// Unable to open the character translation table file.
pub const RPC_X_SS_CHAR_TRANS_OPEN_FAIL = 1773;

// The file containing the character translation table has fewer than 512 bytes.
pub const RPC_X_SS_CHAR_TRANS_SHORT_FILE = 1774;

// A null context handle was passed from the client to the host during a remote procedure call.
pub const RPC_X_SS_IN_NULL_CONTEXT = 1775;

// The context handle changed during a remote procedure call.
pub const RPC_X_SS_CONTEXT_DAMAGED = 1777;

// The binding handles passed to a remote procedure call do not match.
pub const RPC_X_SS_HANDLES_MISMATCH = 1778;

// The stub is unable to get the remote procedure call handle.
pub const RPC_X_SS_CANNOT_GET_CALL_HANDLE = 1779;

// A null reference pointer was passed to the stub.
pub const RPC_X_NULL_REF_POINTER = 1780;

// The enumeration value is out of range.
pub const RPC_X_ENUM_VALUE_OUT_OF_RANGE = 1781;

// The byte count is too small.
pub const RPC_X_BYTE_COUNT_TOO_SMALL = 1782;

// The stub received bad data.
pub const RPC_X_BAD_STUB_DATA = 1783;

// The supplied user buffer is not valid for the requested operation.
pub const ERROR_INVALID_USER_BUFFER = 1784;

// The disk media is not recognized. It may not be formatted.
pub const ERROR_UNRECOGNIZED_MEDIA = 1785;

// The workstation does not have a trust secret.
pub const ERROR_NO_TRUST_LSA_SECRET = 1786;

// The security database on the server does not have a computer account for this workstation trust relationship.
pub const ERROR_NO_TRUST_SAM_ACCOUNT = 1787;

// The trust relationship between the primary domain and the trusted domain failed.
pub const ERROR_TRUSTED_DOMAIN_FAILURE = 1788;

// The trust relationship between this workstation and the primary domain failed.
pub const ERROR_TRUSTED_RELATIONSHIP_FAILURE = 1789;

// The network logon failed.
pub const ERROR_TRUST_FAILURE = 1790;

// A remote procedure call is already in progress for this thread.
pub const RPC_S_CALL_IN_PROGRESS = 1791;

// An attempt was made to logon, but the network logon service was not started.
pub const ERROR_NETLOGON_NOT_STARTED = 1792;

// The user's account has expired.
pub const ERROR_ACCOUNT_EXPIRED = 1793;

// The redirector is in use and cannot be unloaded.
pub const ERROR_REDIRECTOR_HAS_OPEN_HANDLES = 1794;

// The specified printer driver is already installed.
pub const ERROR_PRINTER_DRIVER_ALREADY_INSTALLED = 1795;

// The specified port is unknown.
pub const ERROR_UNKNOWN_PORT = 1796;

// The printer driver is unknown.
pub const ERROR_UNKNOWN_PRINTER_DRIVER = 1797;

// The print processor is unknown.
pub const ERROR_UNKNOWN_PRINTPROCESSOR = 1798;

// The specified separator file is invalid.
pub const ERROR_INVALID_SEPARATOR_FILE = 1799;

// The specified priority is invalid.
pub const ERROR_INVALID_PRIORITY = 1800;

// The printer name is invalid.
pub const ERROR_INVALID_PRINTER_NAME = 1801;

// The printer already exists.
pub const ERROR_PRINTER_ALREADY_EXISTS = 1802;

// The printer command is invalid.
pub const ERROR_INVALID_PRINTER_COMMAND = 1803;

// The specified datatype is invalid.
pub const ERROR_INVALID_DATATYPE = 1804;

// The environment specified is invalid.
pub const ERROR_INVALID_ENVIRONMENT = 1805;

// There are no more bindings.
pub const RPC_S_NO_MORE_BINDINGS = 1806;

// The account used is an interdomain trust account. Use your global user account or local user account to access this server.
pub const ERROR_NOLOGON_INTERDOMAIN_TRUST_ACCOUNT = 1807;

// The account used is a computer account. Use your global user account or local user account to access this server.
pub const ERROR_NOLOGON_WORKSTATION_TRUST_ACCOUNT = 1808;

// The account used is a server trust account. Use your global user account or local user account to access this server.
pub const ERROR_NOLOGON_SERVER_TRUST_ACCOUNT = 1809;

// The name or security ID (SID) of the domain specified is inconsistent with the trust information for that domain.
pub const ERROR_DOMAIN_TRUST_INCONSISTENT = 1810;

// The server is in use and cannot be unloaded.
pub const ERROR_SERVER_HAS_OPEN_HANDLES = 1811;

// The specified image file did not contain a resource section.
pub const ERROR_RESOURCE_DATA_NOT_FOUND = 1812;

// The specified resource type cannot be found in the image file.
pub const ERROR_RESOURCE_TYPE_NOT_FOUND = 1813;

// The specified resource name cannot be found in the image file.
pub const ERROR_RESOURCE_NAME_NOT_FOUND = 1814;

// The specified resource language ID cannot be found in the image file.
pub const ERROR_RESOURCE_LANG_NOT_FOUND = 1815;

// Not enough quota is available to process this command.
pub const ERROR_NOT_ENOUGH_QUOTA = 1816;

// No interfaces have been registered.
pub const RPC_S_NO_INTERFACES = 1817;

// The remote procedure call was cancelled.
pub const RPC_S_CALL_CANCELLED = 1818;

// The binding handle does not contain all required information.
pub const RPC_S_BINDING_INCOMPLETE = 1819;

// A communications failure occurred during a remote procedure call.
pub const RPC_S_COMM_FAILURE = 1820;

// The requested authentication level is not supported.
pub const RPC_S_UNSUPPORTED_AUTHN_LEVEL = 1821;

// No principal name registered.
pub const RPC_S_NO_PRINC_NAME = 1822;

// The error specified is not a valid Windows RPC error code.
pub const RPC_S_NOT_RPC_ERROR = 1823;

// A UUID that is valid only on this computer has been allocated.
pub const RPC_S_UUID_LOCAL_ONLY = 1824;

// A security package specific error occurred.
pub const RPC_S_SEC_PKG_ERROR = 1825;

// Thread is not canceled.
pub const RPC_S_NOT_CANCELLED = 1826;

// Invalid operation on the encoding/decoding handle.
pub const RPC_X_INVALID_ES_ACTION = 1827;

// Incompatible version of the serializing package.
pub const RPC_X_WRONG_ES_VERSION = 1828;

// Incompatible version of the RPC stub.
pub const RPC_X_WRONG_STUB_VERSION = 1829;

// The RPC pipe object is invalid or corrupted.
pub const RPC_X_INVALID_PIPE_OBJECT = 1830;

// An invalid operation was attempted on an RPC pipe object.
pub const RPC_X_WRONG_PIPE_ORDER = 1831;

// Unsupported RPC pipe version.
pub const RPC_X_WRONG_PIPE_VERSION = 1832;

// HTTP proxy server rejected the connection because the cookie authentication failed.
pub const RPC_S_COOKIE_AUTH_FAILED = 1833;

// The RPC server is suspended, and could not be resumed for this request. The call did not execute.
pub const RPC_S_DO_NOT_DISTURB = 1834;

// The RPC call contains too many handles to be transmitted in a single request.
pub const RPC_S_SYSTEM_HANDLE_COUNT_EXCEEDED = 1835;

// The RPC call contains a handle that differs from the declared handle type.
pub const RPC_S_SYSTEM_HANDLE_TYPE_MISMATCH = 1836;

// The group member was not found.
pub const RPC_S_GROUP_MEMBER_NOT_FOUND = 1898;

// The endpoint mapper database entry could not be created.
pub const EPT_S_CANT_CREATE = 1899;

// The object universal unique identifier (UUID) is the nil UUID.
pub const RPC_S_INVALID_OBJECT = 1900;

// The specified time is invalid.
pub const ERROR_INVALID_TIME = 1901;

// The specified form name is invalid.
pub const ERROR_INVALID_FORM_NAME = 1902;

// The specified form size is invalid.
pub const ERROR_INVALID_FORM_SIZE = 1903;

// The specified printer handle is already being waited on
pub const ERROR_ALREADY_WAITING = 1904;

// The specified printer has been deleted.
pub const ERROR_PRINTER_DELETED = 1905;

// The state of the printer is invalid.
pub const ERROR_INVALID_PRINTER_STATE = 1906;

// The user's password must be changed before signing in.
pub const ERROR_PASSWORD_MUST_CHANGE = 1907;

// Could not find the domain controller for this domain.
pub const ERROR_DOMAIN_CONTROLLER_NOT_FOUND = 1908;

// The referenced account is currently locked out and may not be logged on to.
pub const ERROR_ACCOUNT_LOCKED_OUT = 1909;

// The object exporter specified was not found.
pub const OR_INVALID_OXID = 1910;

// The object specified was not found.
pub const OR_INVALID_OID = 1911;

// The object resolver set specified was not found.
pub const OR_INVALID_SET = 1912;

// Some data remains to be sent in the request buffer.
pub const RPC_S_SEND_INCOMPLETE = 1913;

// Invalid asynchronous remote procedure call handle.
pub const RPC_S_INVALID_ASYNC_HANDLE = 1914;

// Invalid asynchronous RPC call handle for this operation.
pub const RPC_S_INVALID_ASYNC_CALL = 1915;

// The RPC pipe object has already been closed.
pub const RPC_X_PIPE_CLOSED = 1916;

// The RPC call completed before all pipes were processed.
pub const RPC_X_PIPE_DISCIPLINE_ERROR = 1917;

// No more data is available from the RPC pipe.
pub const RPC_X_PIPE_EMPTY = 1918;

// No site name is available for this machine.
pub const ERROR_NO_SITENAME = 1919;

// The file cannot be accessed by the system.
pub const ERROR_CANT_ACCESS_FILE = 1920;

// The name of the file cannot be resolved by the system.
pub const ERROR_CANT_RESOLVE_FILENAME = 1921;

// The entry is not of the expected type.
pub const RPC_S_ENTRY_TYPE_MISMATCH = 1922;

// Not all object UUIDs could be exported to the specified entry.
pub const RPC_S_NOT_ALL_OBJS_EXPORTED = 1923;

// Interface could not be exported to the specified entry.
pub const RPC_S_INTERFACE_NOT_EXPORTED = 1924;

// The specified profile entry could not be added.
pub const RPC_S_PROFILE_NOT_ADDED = 1925;

// The specified profile element could not be added.
pub const RPC_S_PRF_ELT_NOT_ADDED = 1926;

// The specified profile element could not be removed.
pub const RPC_S_PRF_ELT_NOT_REMOVED = 1927;

// The group element could not be added.
pub const RPC_S_GRP_ELT_NOT_ADDED = 1928;

// The group element could not be removed.
pub const RPC_S_GRP_ELT_NOT_REMOVED = 1929;

// The printer driver is not compatible with a policy enabled on your computer that blocks NT 4.0 drivers.
pub const ERROR_KM_DRIVER_BLOCKED = 1930;

// The context has expired and can no longer be used.
pub const ERROR_CONTEXT_EXPIRED = 1931;

// The current user's delegated trust creation quota has been exceeded.
pub const ERROR_PER_USER_TRUST_QUOTA_EXCEEDED = 1932;

// The total delegated trust creation quota has been exceeded.
pub const ERROR_ALL_USER_TRUST_QUOTA_EXCEEDED = 1933;

// The current user's delegated trust deletion quota has been exceeded.
pub const ERROR_USER_DELETE_TRUST_QUOTA_EXCEEDED = 1934;

// The computer you are signing into is protected by an authentication firewall. The specified account is not allowed to authenticate to the computer.
pub const ERROR_AUTHENTICATION_FIREWALL_FAILED = 1935;

// Remote connections to the Print Spooler are blocked by a policy set on your machine.
pub const ERROR_REMOTE_PRINT_CONNECTIONS_BLOCKED = 1936;

// Authentication failed because NTLM authentication has been disabled.
pub const ERROR_NTLM_BLOCKED = 1937;

// Logon Failure: EAS policy requires that the user change their password before this operation can be performed.
pub const ERROR_PASSWORD_CHANGE_REQUIRED = 1938;

// An administrator has restricted sign in. To sign in, make sure your device is connected to the Internet, and have your administrator sign in first.
pub const ERROR_LOST_MODE_LOGON_RESTRICTION = 1939;

// The pixel format is invalid.
pub const ERROR_INVALID_PIXEL_FORMAT = 2000;

// The specified driver is invalid.
pub const ERROR_BAD_DRIVER = 2001;

// The window style or class attribute is invalid for this operation.
pub const ERROR_INVALID_WINDOW_STYLE = 2002;

// The requested metafile operation is not supported.
pub const ERROR_METAFILE_NOT_SUPPORTED = 2003;

// The requested transformation operation is not supported.
pub const ERROR_TRANSFORM_NOT_SUPPORTED = 2004;

// The requested clipping operation is not supported.
pub const ERROR_CLIPPING_NOT_SUPPORTED = 2005;

// The specified color management module is invalid.
pub const ERROR_INVALID_CMM = 2010;

// The specified color profile is invalid.
pub const ERROR_INVALID_PROFILE = 2011;

// The specified tag was not found.
pub const ERROR_TAG_NOT_FOUND = 2012;

// A required tag is not present.
pub const ERROR_TAG_NOT_PRESENT = 2013;

// The specified tag is already present.
pub const ERROR_DUPLICATE_TAG = 2014;

// The specified color profile is not associated with the specified device.
pub const ERROR_PROFILE_NOT_ASSOCIATED_WITH_DEVICE = 2015;

// The specified color profile was not found.
pub const ERROR_PROFILE_NOT_FOUND = 2016;

// The specified color space is invalid.
pub const ERROR_INVALID_COLORSPACE = 2017;

// Image Color Management is not enabled.
pub const ERROR_ICM_NOT_ENABLED = 2018;

// There was an error while deleting the color transform.
pub const ERROR_DELETING_ICM_XFORM = 2019;

// The specified color transform is invalid.
pub const ERROR_INVALID_TRANSFORM = 2020;

// The specified transform does not match the bitmap's color space.
pub const ERROR_COLORSPACE_MISMATCH = 2021;

// The specified named color index is not present in the profile.
pub const ERROR_INVALID_COLORINDEX = 2022;

// The specified profile is intended for a device of a different type than the specified device.
pub const ERROR_PROFILE_DOES_NOT_MATCH_DEVICE = 2023;

// The network connection was made successfully, but the user had to be prompted for a password other than the one originally specified.
pub const ERROR_CONNECTED_OTHER_PASSWORD = 2108;

// The network connection was made successfully using default credentials.
pub const ERROR_CONNECTED_OTHER_PASSWORD_DEFAULT = 2109;

// The specified username is invalid.
pub const ERROR_BAD_USERNAME = 2202;

// This network connection does not exist.
pub const ERROR_NOT_CONNECTED = 2250;

// This network connection has files open or requests pending.
pub const ERROR_OPEN_FILES = 2401;

// Active connections still exist.
pub const ERROR_ACTIVE_CONNECTIONS = 2402;

// The device is in use by an active process and cannot be disconnected.
pub const ERROR_DEVICE_IN_USE = 2404;

// The specified print monitor is unknown.
pub const ERROR_UNKNOWN_PRINT_MONITOR = 3000;

// The specified printer driver is currently in use.
pub const ERROR_PRINTER_DRIVER_IN_USE = 3001;

// The spool file was not found.
pub const ERROR_SPOOL_FILE_NOT_FOUND = 3002;

// A StartDocPrinter call was not issued.
pub const ERROR_SPL_NO_STARTDOC = 3003;

// An AddJob call was not issued.
pub const ERROR_SPL_NO_ADDJOB = 3004;

// The specified print processor has already been installed.
pub const ERROR_PRINT_PROCESSOR_ALREADY_INSTALLED = 3005;

// The specified print monitor has already been installed.
pub const ERROR_PRINT_MONITOR_ALREADY_INSTALLED = 3006;

// The specified print monitor does not have the required functions.
pub const ERROR_INVALID_PRINT_MONITOR = 3007;

// The specified print monitor is currently in use.
pub const ERROR_PRINT_MONITOR_IN_USE = 3008;

// The requested operation is not allowed when there are jobs queued to the printer.
pub const ERROR_PRINTER_HAS_JOBS_QUEUED = 3009;

// The requested operation is successful. Changes will not be effective until the system is rebooted.
pub const ERROR_SUCCESS_REBOOT_REQUIRED = 3010;

// The requested operation is successful. Changes will not be effective until the service is restarted.
pub const ERROR_SUCCESS_RESTART_REQUIRED = 3011;

// No printers were found.
pub const ERROR_PRINTER_NOT_FOUND = 3012;

// The printer driver is known to be unreliable.
pub const ERROR_PRINTER_DRIVER_WARNED = 3013;

// The printer driver is known to harm the system.
pub const ERROR_PRINTER_DRIVER_BLOCKED = 3014;

// The specified printer driver package is currently in use.
pub const ERROR_PRINTER_DRIVER_PACKAGE_IN_USE = 3015;

// Unable to find a core driver package that is required by the printer driver package.
pub const ERROR_CORE_DRIVER_PACKAGE_NOT_FOUND = 3016;

// The requested operation failed. A system reboot is required to roll back changes made.
pub const ERROR_FAIL_REBOOT_REQUIRED = 3017;

// The requested operation failed. A system reboot has been initiated to roll back changes made.
pub const ERROR_FAIL_REBOOT_INITIATED = 3018;

// The specified printer driver was not found on the system and needs to be downloaded.
pub const ERROR_PRINTER_DRIVER_DOWNLOAD_NEEDED = 3019;

// The requested print job has failed to print. A print system update requires the job to be resubmitted.
pub const ERROR_PRINT_JOB_RESTART_REQUIRED = 3020;

// The printer driver does not contain a valid manifest, or contains too many manifests.
pub const ERROR_INVALID_PRINTER_DRIVER_MANIFEST = 3021;

// The specified printer cannot be shared.
pub const ERROR_PRINTER_NOT_SHAREABLE = 3022;

// The operation was paused.
pub const ERROR_REQUEST_PAUSED = 3050;

// Reissue the given operation as a cached IO operation
pub const ERROR_IO_REISSUE_AS_CACHED = 3950;

// WINS encountered an error while processing the command.
pub const ERROR_WINS_INTERNAL = 4000;

// The local WINS cannot be deleted.
pub const ERROR_CAN_NOT_DEL_LOCAL_WINS = 4001;

// The importation from the file failed.
pub const ERROR_STATIC_INIT = 4002;

// The backup failed. Was a full backup done before?
pub const ERROR_INC_BACKUP = 4003;

// The backup failed. Check the directory to which you are backing the database.
pub const ERROR_FULL_BACKUP = 4004;

// The name does not exist in the WINS database.
pub const ERROR_REC_NON_EXISTENT = 4005;

// Replication with a nonconfigured partner is not allowed.
pub const ERROR_RPL_NOT_ALLOWED = 4006;

// The version of the supplied content information is not supported.
pub const PEERDIST_ERROR_CONTENTINFO_VERSION_UNSUPPORTED = 4050;

// The supplied content information is malformed.
pub const PEERDIST_ERROR_CANNOT_PARSE_CONTENTINFO = 4051;

// The requested data cannot be found in local or peer caches.
pub const PEERDIST_ERROR_MISSING_DATA = 4052;

// No more data is available or required.
pub const PEERDIST_ERROR_NO_MORE = 4053;

// The supplied object has not been initialized.
pub const PEERDIST_ERROR_NOT_INITIALIZED = 4054;

// The supplied object has already been initialized.
pub const PEERDIST_ERROR_ALREADY_INITIALIZED = 4055;

// A shutdown operation is already in progress.
pub const PEERDIST_ERROR_SHUTDOWN_IN_PROGRESS = 4056;

// The supplied object has already been invalidated.
pub const PEERDIST_ERROR_INVALIDATED = 4057;

// An element already exists and was not replaced.
pub const PEERDIST_ERROR_ALREADY_EXISTS = 4058;

// Can not cancel the requested operation as it has already been completed.
pub const PEERDIST_ERROR_OPERATION_NOTFOUND = 4059;

// Can not perform the reqested operation because it has already been carried out.
pub const PEERDIST_ERROR_ALREADY_COMPLETED = 4060;

// An operation accessed data beyond the bounds of valid data.
pub const PEERDIST_ERROR_OUT_OF_BOUNDS = 4061;

// The requested version is not supported.
pub const PEERDIST_ERROR_VERSION_UNSUPPORTED = 4062;

// A configuration value is invalid.
pub const PEERDIST_ERROR_INVALID_CONFIGURATION = 4063;

// The SKU is not licensed.
pub const PEERDIST_ERROR_NOT_LICENSED = 4064;

// PeerDist Service is still initializing and will be available shortly.
pub const PEERDIST_ERROR_SERVICE_UNAVAILABLE = 4065;

// Communication with one or more computers will be temporarily blocked due to recent errors.
pub const PEERDIST_ERROR_TRUST_FAILURE = 4066;

// The DHCP client has obtained an IP address that is already in use on the network. The local interface will be disabled until the DHCP client can obtain a new address.
pub const ERROR_DHCP_ADDRESS_CONFLICT = 4100;

// The GUID passed was not recognized as valid by a WMI data provider.
pub const ERROR_WMI_GUID_NOT_FOUND = 4200;

// The instance name passed was not recognized as valid by a WMI data provider.
pub const ERROR_WMI_INSTANCE_NOT_FOUND = 4201;

// The data item ID passed was not recognized as valid by a WMI data provider.
pub const ERROR_WMI_ITEMID_NOT_FOUND = 4202;

// The WMI request could not be completed and should be retried.
pub const ERROR_WMI_TRY_AGAIN = 4203;

// The WMI data provider could not be located.
pub const ERROR_WMI_DP_NOT_FOUND = 4204;

// The WMI data provider references an instance set that has not been registered.
pub const ERROR_WMI_UNRESOLVED_INSTANCE_REF = 4205;

// The WMI data block or event notification has already been enabled.
pub const ERROR_WMI_ALREADY_ENABLED = 4206;

// The WMI data block is no longer available.
pub const ERROR_WMI_GUID_DISCONNECTED = 4207;

// The WMI data service is not available.
pub const ERROR_WMI_SERVER_UNAVAILABLE = 4208;

// The WMI data provider failed to carry out the request.
pub const ERROR_WMI_DP_FAILED = 4209;

// The WMI MOF information is not valid.
pub const ERROR_WMI_INVALID_MOF = 4210;

// The WMI registration information is not valid.
pub const ERROR_WMI_INVALID_REGINFO = 4211;

// The WMI data block or event notification has already been disabled.
pub const ERROR_WMI_ALREADY_DISABLED = 4212;

// The WMI data item or data block is read only.
pub const ERROR_WMI_READ_ONLY = 4213;

// The WMI data item or data block could not be changed.
pub const ERROR_WMI_SET_FAILURE = 4214;

// This operation is only valid in the context of an app container.
pub const ERROR_NOT_APPCONTAINER = 4250;

// This application can only run in the context of an app container.
pub const ERROR_APPCONTAINER_REQUIRED = 4251;

// This functionality is not supported in the context of an app container.
pub const ERROR_NOT_SUPPORTED_IN_APPCONTAINER = 4252;

// The length of the SID supplied is not a valid length for app container SIDs.
pub const ERROR_INVALID_PACKAGE_SID_LENGTH = 4253;

// The media identifier does not represent a valid medium.
pub const ERROR_INVALID_MEDIA = 4300;

// The library identifier does not represent a valid library.
pub const ERROR_INVALID_LIBRARY = 4301;

// The media pool identifier does not represent a valid media pool.
pub const ERROR_INVALID_MEDIA_POOL = 4302;

// The drive and medium are not compatible or exist in different libraries.
pub const ERROR_DRIVE_MEDIA_MISMATCH = 4303;

// The medium currently exists in an offline library and must be online to perform this operation.
pub const ERROR_MEDIA_OFFLINE = 4304;

// The operation cannot be performed on an offline library.
pub const ERROR_LIBRARY_OFFLINE = 4305;

// The library, drive, or media pool is empty.
pub const ERROR_EMPTY = 4306;

// The library, drive, or media pool must be empty to perform this operation.
pub const ERROR_NOT_EMPTY = 4307;

// No media is currently available in this media pool or library.
pub const ERROR_MEDIA_UNAVAILABLE = 4308;

// A resource required for this operation is disabled.
pub const ERROR_RESOURCE_DISABLED = 4309;

// The media identifier does not represent a valid cleaner.
pub const ERROR_INVALID_CLEANER = 4310;

// The drive cannot be cleaned or does not support cleaning.
pub const ERROR_UNABLE_TO_CLEAN = 4311;

// The object identifier does not represent a valid object.
pub const ERROR_OBJECT_NOT_FOUND = 4312;

// Unable to read from or write to the database.
pub const ERROR_DATABASE_FAILURE = 4313;

// The database is full.
pub const ERROR_DATABASE_FULL = 4314;

// The medium is not compatible with the device or media pool.
pub const ERROR_MEDIA_INCOMPATIBLE = 4315;

// The resource required for this operation does not exist.
pub const ERROR_RESOURCE_NOT_PRESENT = 4316;

// The operation identifier is not valid.
pub const ERROR_INVALID_OPERATION = 4317;

// The media is not mounted or ready for use.
pub const ERROR_MEDIA_NOT_AVAILABLE = 4318;

// The device is not ready for use.
pub const ERROR_DEVICE_NOT_AVAILABLE = 4319;

// The operator or administrator has refused the request.
pub const ERROR_REQUEST_REFUSED = 4320;

// The drive identifier does not represent a valid drive.
pub const ERROR_INVALID_DRIVE_OBJECT = 4321;

// Library is full. No slot is available for use.
pub const ERROR_LIBRARY_FULL = 4322;

// The transport cannot access the medium.
pub const ERROR_MEDIUM_NOT_ACCESSIBLE = 4323;

// Unable to load the medium into the drive.
pub const ERROR_UNABLE_TO_LOAD_MEDIUM = 4324;

// Unable to retrieve the drive status.
pub const ERROR_UNABLE_TO_INVENTORY_DRIVE = 4325;

// Unable to retrieve the slot status.
pub const ERROR_UNABLE_TO_INVENTORY_SLOT = 4326;

// Unable to retrieve status about the transport.
pub const ERROR_UNABLE_TO_INVENTORY_TRANSPORT = 4327;

// Cannot use the transport because it is already in use.
pub const ERROR_TRANSPORT_FULL = 4328;

// Unable to open or close the inject/eject port.
pub const ERROR_CONTROLLING_IEPORT = 4329;

// Unable to eject the medium because it is in a drive.
pub const ERROR_UNABLE_TO_EJECT_MOUNTED_MEDIA = 4330;

// A cleaner slot is already reserved.
pub const ERROR_CLEANER_SLOT_SET = 4331;

// A cleaner slot is not reserved.
pub const ERROR_CLEANER_SLOT_NOT_SET = 4332;

// The cleaner cartridge has performed the maximum number of drive cleanings.
pub const ERROR_CLEANER_CARTRIDGE_SPENT = 4333;

// Unexpected on-medium identifier.
pub const ERROR_UNEXPECTED_OMID = 4334;

// The last remaining item in this group or resource cannot be deleted.
pub const ERROR_CANT_DELETE_LAST_ITEM = 4335;

// The message provided exceeds the maximum size allowed for this parameter.
pub const ERROR_MESSAGE_EXCEEDS_MAX_SIZE = 4336;

// The volume contains system or paging files.
pub const ERROR_VOLUME_CONTAINS_SYS_FILES = 4337;

// The media type cannot be removed from this library since at least one drive in the library reports it can support this media type.
pub const ERROR_INDIGENOUS_TYPE = 4338;

// This offline media cannot be mounted on this system since no enabled drives are present which can be used.
pub const ERROR_NO_SUPPORTING_DRIVES = 4339;

// A cleaner cartridge is present in the tape library.
pub const ERROR_CLEANER_CARTRIDGE_INSTALLED = 4340;

// Cannot use the inject/eject port because it is not empty.
pub const ERROR_IEPORT_FULL = 4341;

// This file is currently not available for use on this computer.
pub const ERROR_FILE_OFFLINE = 4350;

// The remote storage service is not operational at this time.
pub const ERROR_REMOTE_STORAGE_NOT_ACTIVE = 4351;

// The remote storage service encountered a media error.
pub const ERROR_REMOTE_STORAGE_MEDIA_ERROR = 4352;

// The file or directory is not a reparse point.
pub const ERROR_NOT_A_REPARSE_POINT = 4390;

// The reparse point attribute cannot be set because it conflicts with an existing attribute.
pub const ERROR_REPARSE_ATTRIBUTE_CONFLICT = 4391;

// The data present in the reparse point buffer is invalid.
pub const ERROR_INVALID_REPARSE_DATA = 4392;

// The tag present in the reparse point buffer is invalid.
pub const ERROR_REPARSE_TAG_INVALID = 4393;

// There is a mismatch between the tag specified in the request and the tag present in the reparse point.
pub const ERROR_REPARSE_TAG_MISMATCH = 4394;

// The object manager encountered a reparse point while retrieving an object.
pub const ERROR_REPARSE_POINT_ENCOUNTERED = 4395;

// Fast Cache data not found.
pub const ERROR_APP_DATA_NOT_FOUND = 4400;

// Fast Cache data expired.
pub const ERROR_APP_DATA_EXPIRED = 4401;

// Fast Cache data corrupt.
pub const ERROR_APP_DATA_CORRUPT = 4402;

// Fast Cache data has exceeded its max size and cannot be updated.
pub const ERROR_APP_DATA_LIMIT_EXCEEDED = 4403;

// Fast Cache has been ReArmed and requires a reboot until it can be updated.
pub const ERROR_APP_DATA_REBOOT_REQUIRED = 4404;

// Secure Boot detected that rollback of protected data has been attempted.
pub const ERROR_SECUREBOOT_ROLLBACK_DETECTED = 4420;

// The value is protected by Secure Boot policy and cannot be modified or deleted.
pub const ERROR_SECUREBOOT_POLICY_VIOLATION = 4421;

// The Secure Boot policy is invalid.
pub const ERROR_SECUREBOOT_INVALID_POLICY = 4422;

// A new Secure Boot policy did not contain the current publisher on its update list.
pub const ERROR_SECUREBOOT_POLICY_PUBLISHER_NOT_FOUND = 4423;

// The Secure Boot policy is either not signed or is signed by a non-trusted signer.
pub const ERROR_SECUREBOOT_POLICY_NOT_SIGNED = 4424;

// Secure Boot is not enabled on this machine.
pub const ERROR_SECUREBOOT_NOT_ENABLED = 4425;

// Secure Boot requires that certain files and drivers are not replaced by other files or drivers.
pub const ERROR_SECUREBOOT_FILE_REPLACED = 4426;

// The Secure Boot Supplemental Policy file was not authorized on this machine.
pub const ERROR_SECUREBOOT_POLICY_NOT_AUTHORIZED = 4427;

// The Supplemntal Policy is not recognized on this device.
pub const ERROR_SECUREBOOT_POLICY_UNKNOWN = 4428;

// The Antirollback version was not found in the Secure Boot Policy.
pub const ERROR_SECUREBOOT_POLICY_MISSING_ANTIROLLBACKVERSION = 4429;

// The Platform ID specified in the Secure Boot policy does not match the Platform ID on this device.
pub const ERROR_SECUREBOOT_PLATFORM_ID_MISMATCH = 4430;

// The Secure Boot policy file has an older Antirollback Version than this device.
pub const ERROR_SECUREBOOT_POLICY_ROLLBACK_DETECTED = 4431;

// The Secure Boot policy file does not match the upgraded legacy policy.
pub const ERROR_SECUREBOOT_POLICY_UPGRADE_MISMATCH = 4432;

// The Secure Boot policy file is required but could not be found.
pub const ERROR_SECUREBOOT_REQUIRED_POLICY_FILE_MISSING = 4433;

// Supplemental Secure Boot policy file can not be loaded as a base Secure Boot policy.
pub const ERROR_SECUREBOOT_NOT_BASE_POLICY = 4434;

// Base Secure Boot policy file can not be loaded as a Supplemental Secure Boot policy.
pub const ERROR_SECUREBOOT_NOT_SUPPLEMENTAL_POLICY = 4435;

// The copy offload read operation is not supported by a filter.
pub const ERROR_OFFLOAD_READ_FLT_NOT_SUPPORTED = 4440;

// The copy offload write operation is not supported by a filter.
pub const ERROR_OFFLOAD_WRITE_FLT_NOT_SUPPORTED = 4441;

// The copy offload read operation is not supported for the file.
pub const ERROR_OFFLOAD_READ_FILE_NOT_SUPPORTED = 4442;

// The copy offload write operation is not supported for the file.
pub const ERROR_OFFLOAD_WRITE_FILE_NOT_SUPPORTED = 4443;

// This file is currently associated with a different stream id.
pub const ERROR_ALREADY_HAS_STREAM_ID = 4444;

// The volume must undergo garbage collection.
pub const ERROR_SMR_GARBAGE_COLLECTION_REQUIRED = 4445;

// Single Instance Storage is not available on this volume.
pub const ERROR_VOLUME_NOT_SIS_ENABLED = 4500;

// System Integrity detected that policy rollback has been attempted.
pub const ERROR_SYSTEM_INTEGRITY_ROLLBACK_DETECTED = 4550;

// Your organization used Device Guard to block this app. Contact your support person for more info.
pub const ERROR_SYSTEM_INTEGRITY_POLICY_VIOLATION = 4551;

// The System Integrity policy is invalid.
pub const ERROR_SYSTEM_INTEGRITY_INVALID_POLICY = 4552;

// The System Integrity policy is either not signed or is signed by a non-trusted signer.
pub const ERROR_SYSTEM_INTEGRITY_POLICY_NOT_SIGNED = 4553;

// Virtual Secure Mode (VSM) is not initialized. The hypervisor or VSM may not be present or enabled.
pub const ERROR_VSM_NOT_INITIALIZED = 4560;

// The hypervisor is not protecting DMA because an IOMMU is not present or not enabled in the BIOS.
pub const ERROR_VSM_DMA_PROTECTION_NOT_IN_USE = 4561;

// The Platform Manifest file was not authorized on this machine.
pub const ERROR_PLATFORM_MANIFEST_NOT_AUTHORIZED = 4570;

// The Platform Manifest file was not valid.
pub const ERROR_PLATFORM_MANIFEST_INVALID = 4571;

// The file is not authorized on this platform because an entry was not found in the Platform Manifest.
pub const ERROR_PLATFORM_MANIFEST_FILE_NOT_AUTHORIZED = 4572;

// The catalog is not authorized on this platform because an entry was not found in the Platform Manifest.
pub const ERROR_PLATFORM_MANIFEST_CATALOG_NOT_AUTHORIZED = 4573;

// The file is not authorized on this platform because a Binary ID was not found in the embedded signature.
pub const ERROR_PLATFORM_MANIFEST_BINARY_ID_NOT_FOUND = 4574;

// No active Platform Manifest exists on this system.
pub const ERROR_PLATFORM_MANIFEST_NOT_ACTIVE = 4575;

// The Platform Manifest file was not properly signed.
pub const ERROR_PLATFORM_MANIFEST_NOT_SIGNED = 4576;

// The operation cannot be completed because other resources are dependent on this resource.
pub const ERROR_DEPENDENT_RESOURCE_EXISTS = 5001;

// The cluster resource dependency cannot be found.
pub const ERROR_DEPENDENCY_NOT_FOUND = 5002;

// The cluster resource cannot be made dependent on the specified resource because it is already dependent.
pub const ERROR_DEPENDENCY_ALREADY_EXISTS = 5003;

// The cluster resource is not online.
pub const ERROR_RESOURCE_NOT_ONLINE = 5004;

// A cluster node is not available for this operation.
pub const ERROR_HOST_NODE_NOT_AVAILABLE = 5005;

// The cluster resource is not available.
pub const ERROR_RESOURCE_NOT_AVAILABLE = 5006;

// The cluster resource could not be found.
pub const ERROR_RESOURCE_NOT_FOUND = 5007;

// The cluster is being shut down.
pub const ERROR_SHUTDOWN_CLUSTER = 5008;

// A cluster node cannot be evicted from the cluster unless the node is down or it is the last node.
pub const ERROR_CANT_EVICT_ACTIVE_NODE = 5009;

// The object already exists.
pub const ERROR_OBJECT_ALREADY_EXISTS = 5010;

// The object is already in the list.
pub const ERROR_OBJECT_IN_LIST = 5011;

// The cluster group is not available for any new requests.
pub const ERROR_GROUP_NOT_AVAILABLE = 5012;

// The cluster group could not be found.
pub const ERROR_GROUP_NOT_FOUND = 5013;

// The operation could not be completed because the cluster group is not online.
pub const ERROR_GROUP_NOT_ONLINE = 5014;

// The operation failed because either the specified cluster node is not the owner of the resource, or the node is not a possible owner of the resource.
pub const ERROR_HOST_NODE_NOT_RESOURCE_OWNER = 5015;

// The operation failed because either the specified cluster node is not the owner of the group, or the node is not a possible owner of the group.
pub const ERROR_HOST_NODE_NOT_GROUP_OWNER = 5016;

// The cluster resource could not be created in the specified resource monitor.
pub const ERROR_RESMON_CREATE_FAILED = 5017;

// The cluster resource could not be brought online by the resource monitor.
pub const ERROR_RESMON_ONLINE_FAILED = 5018;

// The operation could not be completed because the cluster resource is online.
pub const ERROR_RESOURCE_ONLINE = 5019;

// The cluster resource could not be deleted or brought offline because it is the quorum resource.
pub const ERROR_QUORUM_RESOURCE = 5020;

// The cluster could not make the specified resource a quorum resource because it is not capable of being a quorum resource.
pub const ERROR_NOT_QUORUM_CAPABLE = 5021;

// The cluster software is shutting down.
pub const ERROR_CLUSTER_SHUTTING_DOWN = 5022;

// The group or resource is not in the correct state to perform the requested operation.
pub const ERROR_INVALID_STATE = 5023;

// The properties were stored but not all changes will take effect until the next time the resource is brought online.
pub const ERROR_RESOURCE_PROPERTIES_STORED = 5024;

// The cluster could not make the specified resource a quorum resource because it does not belong to a shared storage class.
pub const ERROR_NOT_QUORUM_CLASS = 5025;

// The cluster resource could not be deleted since it is a core resource.
pub const ERROR_CORE_RESOURCE = 5026;

// The quorum resource failed to come online.
pub const ERROR_QUORUM_RESOURCE_ONLINE_FAILED = 5027;

// The quorum log could not be created or mounted successfully.
pub const ERROR_QUORUMLOG_OPEN_FAILED = 5028;

// The cluster log is corrupt.
pub const ERROR_CLUSTERLOG_CORRUPT = 5029;

// The record could not be written to the cluster log since it exceeds the maximum size.
pub const ERROR_CLUSTERLOG_RECORD_EXCEEDS_MAXSIZE = 5030;

// The cluster log exceeds its maximum size.
pub const ERROR_CLUSTERLOG_EXCEEDS_MAXSIZE = 5031;

// No checkpoint record was found in the cluster log.
pub const ERROR_CLUSTERLOG_CHKPOINT_NOT_FOUND = 5032;

// The minimum required disk space needed for logging is not available.
pub const ERROR_CLUSTERLOG_NOT_ENOUGH_SPACE = 5033;

// The cluster node failed to take control of the quorum resource because the resource is owned by another active node.
pub const ERROR_QUORUM_OWNER_ALIVE = 5034;

// A cluster network is not available for this operation.
pub const ERROR_NETWORK_NOT_AVAILABLE = 5035;

// A cluster node is not available for this operation.
pub const ERROR_NODE_NOT_AVAILABLE = 5036;

// All cluster nodes must be running to perform this operation.
pub const ERROR_ALL_NODES_NOT_AVAILABLE = 5037;

// A cluster resource failed.
pub const ERROR_RESOURCE_FAILED = 5038;

// The cluster node is not valid.
pub const ERROR_CLUSTER_INVALID_NODE = 5039;

// The cluster node already exists.
pub const ERROR_CLUSTER_NODE_EXISTS = 5040;

// A node is in the process of joining the cluster.
pub const ERROR_CLUSTER_JOIN_IN_PROGRESS = 5041;

// The cluster node was not found.
pub const ERROR_CLUSTER_NODE_NOT_FOUND = 5042;

// The cluster local node information was not found.
pub const ERROR_CLUSTER_LOCAL_NODE_NOT_FOUND = 5043;

// The cluster network already exists.
pub const ERROR_CLUSTER_NETWORK_EXISTS = 5044;

// The cluster network was not found.
pub const ERROR_CLUSTER_NETWORK_NOT_FOUND = 5045;

// The cluster network interface already exists.
pub const ERROR_CLUSTER_NETINTERFACE_EXISTS = 5046;

// The cluster network interface was not found.
pub const ERROR_CLUSTER_NETINTERFACE_NOT_FOUND = 5047;

// The cluster request is not valid for this object.
pub const ERROR_CLUSTER_INVALID_REQUEST = 5048;

// The cluster network provider is not valid.
pub const ERROR_CLUSTER_INVALID_NETWORK_PROVIDER = 5049;

// The cluster node is down.
pub const ERROR_CLUSTER_NODE_DOWN = 5050;

// The cluster node is not reachable.
pub const ERROR_CLUSTER_NODE_UNREACHABLE = 5051;

// The cluster node is not a member of the cluster.
pub const ERROR_CLUSTER_NODE_NOT_MEMBER = 5052;

// A cluster join operation is not in progress.
pub const ERROR_CLUSTER_JOIN_NOT_IN_PROGRESS = 5053;

// The cluster network is not valid.
pub const ERROR_CLUSTER_INVALID_NETWORK = 5054;

// The cluster node is up.
pub const ERROR_CLUSTER_NODE_UP = 5056;

// The cluster IP address is already in use.
pub const ERROR_CLUSTER_IPADDR_IN_USE = 5057;

// The cluster node is not paused.
pub const ERROR_CLUSTER_NODE_NOT_PAUSED = 5058;

// No cluster security context is available.
pub const ERROR_CLUSTER_NO_SECURITY_CONTEXT = 5059;

// The cluster network is not configured for internal cluster communication.
pub const ERROR_CLUSTER_NETWORK_NOT_INTERNAL = 5060;

// The cluster node is already up.
pub const ERROR_CLUSTER_NODE_ALREADY_UP = 5061;

// The cluster node is already down.
pub const ERROR_CLUSTER_NODE_ALREADY_DOWN = 5062;

// The cluster network is already online.
pub const ERROR_CLUSTER_NETWORK_ALREADY_ONLINE = 5063;

// The cluster network is already offline.
pub const ERROR_CLUSTER_NETWORK_ALREADY_OFFLINE = 5064;

// The cluster node is already a member of the cluster.
pub const ERROR_CLUSTER_NODE_ALREADY_MEMBER = 5065;

// The cluster network is the only one configured for internal cluster communication between two or more active cluster nodes. The internal communication capability cannot be removed from the network.
pub const ERROR_CLUSTER_LAST_INTERNAL_NETWORK = 5066;

// One or more cluster resources depend on the network to provide service to clients. The client access capability cannot be removed from the network.
pub const ERROR_CLUSTER_NETWORK_HAS_DEPENDENTS = 5067;

// This operation cannot currently be performed on the cluster group containing the quorum resource.
pub const ERROR_INVALID_OPERATION_ON_QUORUM = 5068;

// The cluster quorum resource is not allowed to have any dependencies.
pub const ERROR_DEPENDENCY_NOT_ALLOWED = 5069;

// The cluster node is paused.
pub const ERROR_CLUSTER_NODE_PAUSED = 5070;

// The cluster resource cannot be brought online. The owner node cannot run this resource.
pub const ERROR_NODE_CANT_HOST_RESOURCE = 5071;

// The cluster node is not ready to perform the requested operation.
pub const ERROR_CLUSTER_NODE_NOT_READY = 5072;

// The cluster node is shutting down.
pub const ERROR_CLUSTER_NODE_SHUTTING_DOWN = 5073;

// The cluster join operation was aborted.
pub const ERROR_CLUSTER_JOIN_ABORTED = 5074;

// The node failed to join the cluster because the joining node and other nodes in the cluster have incompatible operating system versions. To get more information about operating system versions of the cluster, run the Validate a Configuration Wizard or the Test-Cluster Windows PowerShell cmdlet.
pub const ERROR_CLUSTER_INCOMPATIBLE_VERSIONS = 5075;

// This resource cannot be created because the cluster has reached the limit on the number of resources it can monitor.
pub const ERROR_CLUSTER_MAXNUM_OF_RESOURCES_EXCEEDED = 5076;

// The system configuration changed during the cluster join or form operation. The join or form operation was aborted.
pub const ERROR_CLUSTER_SYSTEM_CONFIG_CHANGED = 5077;

// The specified resource type was not found.
pub const ERROR_CLUSTER_RESOURCE_TYPE_NOT_FOUND = 5078;

// The specified node does not support a resource of this type. This may be due to version inconsistencies or due to the absence of the resource DLL on this node.
pub const ERROR_CLUSTER_RESTYPE_NOT_SUPPORTED = 5079;

// The specified resource name is not supported by this resource DLL. This may be due to a bad (or changed) name supplied to the resource DLL.
pub const ERROR_CLUSTER_RESNAME_NOT_FOUND = 5080;

// No authentication package could be registered with the RPC server.
pub const ERROR_CLUSTER_NO_RPC_PACKAGES_REGISTERED = 5081;

// You cannot bring the group online because the owner of the group is not in the preferred list for the group. To change the owner node for the group, move the group.
pub const ERROR_CLUSTER_OWNER_NOT_IN_PREFLIST = 5082;

// The join operation failed because the cluster database sequence number has changed or is incompatible with the locker node. This may happen during a join operation if the cluster database was changing during the join.
pub const ERROR_CLUSTER_DATABASE_SEQMISMATCH = 5083;

// The resource monitor will not allow the fail operation to be performed while the resource is in its current state. This may happen if the resource is in a pending state.
pub const ERROR_RESMON_INVALID_STATE = 5084;

// A non locker code got a request to reserve the lock for making global updates.
pub const ERROR_CLUSTER_GUM_NOT_LOCKER = 5085;

// The quorum disk could not be located by the cluster service.
pub const ERROR_QUORUM_DISK_NOT_FOUND = 5086;

// The backed up cluster database is possibly corrupt.
pub const ERROR_DATABASE_BACKUP_CORRUPT = 5087;

// A DFS root already exists in this cluster node.
pub const ERROR_CLUSTER_NODE_ALREADY_HAS_DFS_ROOT = 5088;

// An attempt to modify a resource property failed because it conflicts with another existing property.
pub const ERROR_RESOURCE_PROPERTY_UNCHANGEABLE = 5089;

// This operation is not supported on a cluster without an Administrator Access Point.
pub const ERROR_NO_ADMIN_ACCESS_POINT = 5090;

// An operation was attempted that is incompatible with the current membership state of the node.
pub const ERROR_CLUSTER_MEMBERSHIP_INVALID_STATE = 5890;

// The quorum resource does not contain the quorum log.
pub const ERROR_CLUSTER_QUORUMLOG_NOT_FOUND = 5891;

// The membership engine requested shutdown of the cluster service on this node.
pub const ERROR_CLUSTER_MEMBERSHIP_HALT = 5892;

// The join operation failed because the cluster instance ID of the joining node does not match the cluster instance ID of the sponsor node.
pub const ERROR_CLUSTER_INSTANCE_ID_MISMATCH = 5893;

// A matching cluster network for the specified IP address could not be found.
pub const ERROR_CLUSTER_NETWORK_NOT_FOUND_FOR_IP = 5894;

// The actual data type of the property did not match the expected data type of the property.
pub const ERROR_CLUSTER_PROPERTY_DATA_TYPE_MISMATCH = 5895;

// The cluster node was evicted from the cluster successfully, but the node was not cleaned up. To determine what cleanup steps failed and how to recover, see the Failover Clustering application event log using Event Viewer.
pub const ERROR_CLUSTER_EVICT_WITHOUT_CLEANUP = 5896;

// Two or more parameter values specified for a resource's properties are in conflict.
pub const ERROR_CLUSTER_PARAMETER_MISMATCH = 5897;

// This computer cannot be made a member of a cluster.
pub const ERROR_NODE_CANNOT_BE_CLUSTERED = 5898;

// This computer cannot be made a member of a cluster because it does not have the correct version of Windows installed.
pub const ERROR_CLUSTER_WRONG_OS_VERSION = 5899;

// A cluster cannot be created with the specified cluster name because that cluster name is already in use. Specify a different name for the cluster.
pub const ERROR_CLUSTER_CANT_CREATE_DUP_CLUSTER_NAME = 5900;

// The cluster configuration action has already been committed.
pub const ERROR_CLUSCFG_ALREADY_COMMITTED = 5901;

// The cluster configuration action could not be rolled back.
pub const ERROR_CLUSCFG_ROLLBACK_FAILED = 5902;

// The drive letter assigned to a system disk on one node conflicted with the drive letter assigned to a disk on another node.
pub const ERROR_CLUSCFG_SYSTEM_DISK_DRIVE_LETTER_CONFLICT = 5903;

// One or more nodes in the cluster are running a version of Windows that does not support this operation.
pub const ERROR_CLUSTER_OLD_VERSION = 5904;

// The name of the corresponding computer account doesn't match the Network Name for this resource.
pub const ERROR_CLUSTER_MISMATCHED_COMPUTER_ACCT_NAME = 5905;

// No network adapters are available.
pub const ERROR_CLUSTER_NO_NET_ADAPTERS = 5906;

// The cluster node has been poisoned.
pub const ERROR_CLUSTER_POISONED = 5907;

// The group is unable to accept the request since it is moving to another node.
pub const ERROR_CLUSTER_GROUP_MOVING = 5908;

// The resource type cannot accept the request since is too busy performing another operation.
pub const ERROR_CLUSTER_RESOURCE_TYPE_BUSY = 5909;

// The call to the cluster resource DLL timed out.
pub const ERROR_RESOURCE_CALL_TIMED_OUT = 5910;

// The address is not valid for an IPv6 Address resource. A global IPv6 address is required, and it must match a cluster network. Compatibility addresses are not permitted.
pub const ERROR_INVALID_CLUSTER_IPV6_ADDRESS = 5911;

// An internal cluster error occurred. A call to an invalid function was attempted.
pub const ERROR_CLUSTER_INTERNAL_INVALID_FUNCTION = 5912;

// A parameter value is out of acceptable range.
pub const ERROR_CLUSTER_PARAMETER_OUT_OF_BOUNDS = 5913;

// A network error occurred while sending data to another node in the cluster. The number of bytes transmitted was less than required.
pub const ERROR_CLUSTER_PARTIAL_SEND = 5914;

// An invalid cluster registry operation was attempted.
pub const ERROR_CLUSTER_REGISTRY_INVALID_FUNCTION = 5915;

// An input string of characters is not properly terminated.
pub const ERROR_CLUSTER_INVALID_STRING_TERMINATION = 5916;

// An input string of characters is not in a valid format for the data it represents.
pub const ERROR_CLUSTER_INVALID_STRING_FORMAT = 5917;

// An internal cluster error occurred. A cluster database transaction was attempted while a transaction was already in progress.
pub const ERROR_CLUSTER_DATABASE_TRANSACTION_IN_PROGRESS = 5918;

// An internal cluster error occurred. There was an attempt to commit a cluster database transaction while no transaction was in progress.
pub const ERROR_CLUSTER_DATABASE_TRANSACTION_NOT_IN_PROGRESS = 5919;

// An internal cluster error occurred. Data was not properly initialized.
pub const ERROR_CLUSTER_NULL_DATA = 5920;

// An error occurred while reading from a stream of data. An unexpected number of bytes was returned.
pub const ERROR_CLUSTER_PARTIAL_READ = 5921;

// An error occurred while writing to a stream of data. The required number of bytes could not be written.
pub const ERROR_CLUSTER_PARTIAL_WRITE = 5922;

// An error occurred while deserializing a stream of cluster data.
pub const ERROR_CLUSTER_CANT_DESERIALIZE_DATA = 5923;

// One or more property values for this resource are in conflict with one or more property values associated with its dependent resource(s).
pub const ERROR_DEPENDENT_RESOURCE_PROPERTY_CONFLICT = 5924;

// A quorum of cluster nodes was not present to form a cluster.
pub const ERROR_CLUSTER_NO_QUORUM = 5925;

// The cluster network is not valid for an IPv6 Address resource, or it does not match the configured address.
pub const ERROR_CLUSTER_INVALID_IPV6_NETWORK = 5926;

// The cluster network is not valid for an IPv6 Tunnel resource. Check the configuration of the IP Address resource on which the IPv6 Tunnel resource depends.
pub const ERROR_CLUSTER_INVALID_IPV6_TUNNEL_NETWORK = 5927;

// Quorum resource cannot reside in the Available Storage group.
pub const ERROR_QUORUM_NOT_ALLOWED_IN_THIS_GROUP = 5928;

// The dependencies for this resource are nested too deeply.
pub const ERROR_DEPENDENCY_TREE_TOO_COMPLEX = 5929;

// The call into the resource DLL raised an unhandled exception.
pub const ERROR_EXCEPTION_IN_RESOURCE_CALL = 5930;

// The RHS process failed to initialize.
pub const ERROR_CLUSTER_RHS_FAILED_INITIALIZATION = 5931;

// The Failover Clustering feature is not installed on this node.
pub const ERROR_CLUSTER_NOT_INSTALLED = 5932;

// The resources must be online on the same node for this operation
pub const ERROR_CLUSTER_RESOURCES_MUST_BE_ONLINE_ON_THE_SAME_NODE = 5933;

// A new node can not be added since this cluster is already at its maximum number of nodes.
pub const ERROR_CLUSTER_MAX_NODES_IN_CLUSTER = 5934;

// This cluster can not be created since the specified number of nodes exceeds the maximum allowed limit.
pub const ERROR_CLUSTER_TOO_MANY_NODES = 5935;

// An attempt to use the specified cluster name failed because an enabled computer object with the given name already exists in the domain.
pub const ERROR_CLUSTER_OBJECT_ALREADY_USED = 5936;

// This cluster cannot be destroyed. It has non-core application groups which must be deleted before the cluster can be destroyed.
pub const ERROR_NONCORE_GROUPS_FOUND = 5937;

// File share associated with file share witness resource cannot be hosted by this cluster or any of its nodes.
pub const ERROR_FILE_SHARE_RESOURCE_CONFLICT = 5938;

// If it is the last node in the cluster, destroy cluster command should be used.
pub const ERROR_CLUSTER_EVICT_INVALID_REQUEST = 5939;

// Only one instance of this resource type is allowed in the cluster.
pub const ERROR_CLUSTER_SINGLETON_RESOURCE = 5940;

// Only one instance of this resource type is allowed per resource group.
pub const ERROR_CLUSTER_GROUP_SINGLETON_RESOURCE = 5941;

// The resource failed to come online due to the failure of one or more provider resources.
pub const ERROR_CLUSTER_RESOURCE_PROVIDER_FAILED = 5942;

// The resource has indicated that it cannot come online on any node.
pub const ERROR_CLUSTER_RESOURCE_CONFIGURATION_ERROR = 5943;

// The current operation cannot be performed on this group at this time.
pub const ERROR_CLUSTER_GROUP_BUSY = 5944;

// The directory or file is not located on a cluster shared volume.
pub const ERROR_CLUSTER_NOT_SHARED_VOLUME = 5945;

// The Security Descriptor does not meet the requirements for a cluster.
pub const ERROR_CLUSTER_INVALID_SECURITY_DESCRIPTOR = 5946;

// Those resources must be moved to available storage in order for operation to succeed.
pub const ERROR_CLUSTER_SHARED_VOLUMES_IN_USE = 5947;

// Use shared volume APIs to perform desired operation.
pub const ERROR_CLUSTER_USE_SHARED_VOLUMES_API = 5948;

// Back up is in progress. Please wait for backup completion before trying this operation again.
pub const ERROR_CLUSTER_BACKUP_IN_PROGRESS = 5949;

// The path does not belong to a cluster shared volume.
pub const ERROR_NON_CSV_PATH = 5950;

// The cluster shared volume is not locally mounted on this node.
pub const ERROR_CSV_VOLUME_NOT_LOCAL = 5951;

// The cluster watchdog is terminating.
pub const ERROR_CLUSTER_WATCHDOG_TERMINATING = 5952;

// A resource vetoed a move between two nodes because they are incompatible.
pub const ERROR_CLUSTER_RESOURCE_VETOED_MOVE_INCOMPATIBLE_NODES = 5953;

// The request is invalid either because node weight cannot be changed while the cluster is in disk-only quorum mode, or because changing the node weight would violate the minimum cluster quorum requirements.
pub const ERROR_CLUSTER_INVALID_NODE_WEIGHT = 5954;

// The resource vetoed the call.
pub const ERROR_CLUSTER_RESOURCE_VETOED_CALL = 5955;

// Resource could not start or run because it could not reserve sufficient system resources.
pub const ERROR_RESMON_SYSTEM_RESOURCES_LACKING = 5956;

// A resource vetoed a move between two nodes because the destination currently does not have enough resources to complete the operation.
pub const ERROR_CLUSTER_RESOURCE_VETOED_MOVE_NOT_ENOUGH_RESOURCES_ON_DESTINATION = 5957;

// A resource vetoed a move between two nodes because the source currently does not have enough resources to complete the operation.
pub const ERROR_CLUSTER_RESOURCE_VETOED_MOVE_NOT_ENOUGH_RESOURCES_ON_SOURCE = 5958;

// The requested operation can not be completed because the group is queued for an operation.
pub const ERROR_CLUSTER_GROUP_QUEUED = 5959;

// The requested operation can not be completed because a resource has locked status.
pub const ERROR_CLUSTER_RESOURCE_LOCKED_STATUS = 5960;

// The resource cannot move to another node because a cluster shared volume vetoed the operation.
pub const ERROR_CLUSTER_SHARED_VOLUME_FAILOVER_NOT_ALLOWED = 5961;

// A node drain is already in progress.
pub const ERROR_CLUSTER_NODE_DRAIN_IN_PROGRESS = 5962;

// Clustered storage is not connected to the node.
pub const ERROR_CLUSTER_DISK_NOT_CONNECTED = 5963;

// The disk is not configured in a way to be used with CSV. CSV disks must have at least one partition that is formatted with NTFS or REFS.
pub const ERROR_DISK_NOT_CSV_CAPABLE = 5964;

// The resource must be part of the Available Storage group to complete this action.
pub const ERROR_RESOURCE_NOT_IN_AVAILABLE_STORAGE = 5965;

// CSVFS failed operation as volume is in redirected mode.
pub const ERROR_CLUSTER_SHARED_VOLUME_REDIRECTED = 5966;

// CSVFS failed operation as volume is not in redirected mode.
pub const ERROR_CLUSTER_SHARED_VOLUME_NOT_REDIRECTED = 5967;

// Cluster properties cannot be returned at this time.
pub const ERROR_CLUSTER_CANNOT_RETURN_PROPERTIES = 5968;

// The clustered disk resource contains software snapshot diff area that are not supported for Cluster Shared Volumes.
pub const ERROR_CLUSTER_RESOURCE_CONTAINS_UNSUPPORTED_DIFF_AREA_FOR_SHARED_VOLUMES = 5969;

// The operation cannot be completed because the resource is in maintenance mode.
pub const ERROR_CLUSTER_RESOURCE_IS_IN_MAINTENANCE_MODE = 5970;

// The operation cannot be completed because of cluster affinity conflicts
pub const ERROR_CLUSTER_AFFINITY_CONFLICT = 5971;

// The operation cannot be completed because the resource is a replica virtual machine.
pub const ERROR_CLUSTER_RESOURCE_IS_REPLICA_VIRTUAL_MACHINE = 5972;

// The Cluster Functional Level could not be increased because not all nodes in the cluster support the updated version.
pub const ERROR_CLUSTER_UPGRADE_INCOMPATIBLE_VERSIONS = 5973;

// of fix quorum mode retry the Update-ClusterFunctionalLevel PowerShell cmdlet to update the cluster functional level.
pub const ERROR_CLUSTER_UPGRADE_FIX_QUORUM_NOT_SUPPORTED = 5974;

// be available.
pub const ERROR_CLUSTER_UPGRADE_RESTART_REQUIRED = 5975;

// The cluster is currently performing a version upgrade.
pub const ERROR_CLUSTER_UPGRADE_IN_PROGRESS = 5976;

// The cluster did not successfully complete the version upgrade.
pub const ERROR_CLUSTER_UPGRADE_INCOMPLETE = 5977;

// The cluster node is in grace period.
pub const ERROR_CLUSTER_NODE_IN_GRACE_PERIOD = 5978;

// The operation has failed because CSV volume was not able to recover in time specified on this file object.
pub const ERROR_CLUSTER_CSV_IO_PAUSE_TIMEOUT = 5979;

// The operation failed because the requested node is not currently part of active cluster membership.
pub const ERROR_NODE_NOT_ACTIVE_CLUSTER_MEMBER = 5980;

// The operation failed because the requested cluster resource is currently unmonitored.
pub const ERROR_CLUSTER_RESOURCE_NOT_MONITORED = 5981;

// The operation failed because a resource does not support running in an unmonitored state.
pub const ERROR_CLUSTER_RESOURCE_DOES_NOT_SUPPORT_UNMONITORED = 5982;

// The operation cannot be completed because a resource participates in replication.
pub const ERROR_CLUSTER_RESOURCE_IS_REPLICATED = 5983;

// The operation failed because the requested cluster node has been isolated
pub const ERROR_CLUSTER_NODE_ISOLATED = 5984;

// The operation failed because the requested cluster node has been quarantined
pub const ERROR_CLUSTER_NODE_QUARANTINED = 5985;

// The operation failed because the specified database update condition was not met
pub const ERROR_CLUSTER_DATABASE_UPDATE_CONDITION_FAILED = 5986;

// A clustered space is in a degraded condition and the requested action cannot be completed at this time.
pub const ERROR_CLUSTER_SPACE_DEGRADED = 5987;

// The operation failed because token delegation for this control is not supported.
pub const ERROR_CLUSTER_TOKEN_DELEGATION_NOT_SUPPORTED = 5988;

// The operation has failed because CSV has invalidated this file object.
pub const ERROR_CLUSTER_CSV_INVALID_HANDLE = 5989;

// This operation is supported only on the CSV coordinator node.
pub const ERROR_CLUSTER_CSV_SUPPORTED_ONLY_ON_COORDINATOR = 5990;

// The cluster group set is not available for any further requests.
pub const ERROR_GROUPSET_NOT_AVAILABLE = 5991;

// The cluster group set could not be found.
pub const ERROR_GROUPSET_NOT_FOUND = 5992;

// The action cannot be completed at this time because the cluster group set would fall below quorum and not be able to act as a provider.
pub const ERROR_GROUPSET_CANT_PROVIDE = 5993;

// The specified parent fault domain is not found.
pub const ERROR_CLUSTER_FAULT_DOMAIN_PARENT_NOT_FOUND = 5994;

// The fault domain cannot be a child of the parent specified.
pub const ERROR_CLUSTER_FAULT_DOMAIN_INVALID_HIERARCHY = 5995;

// Storage Spaces Direct has rejected the proposed fault domain changes because it impacts the fault tolerance of the storage.
pub const ERROR_CLUSTER_FAULT_DOMAIN_FAILED_S2D_VALIDATION = 5996;

// Storage Spaces Direct has rejected the proposed fault domain changes because it reduces the storage connected to the system.
pub const ERROR_CLUSTER_FAULT_DOMAIN_S2D_CONNECTIVITY_LOSS = 5997;

// Cluster infrastructure file server creation failed because a valid non-empty file server name was not provided.
pub const ERROR_CLUSTER_INVALID_INFRASTRUCTURE_FILESERVER_NAME = 5998;

// The action cannot be completed because the cluster set managenement cluster is unreachable.
pub const ERROR_CLUSTERSET_MANAGEMENT_CLUSTER_UNREACHABLE = 5999;

// The specified file could not be encrypted.
pub const ERROR_ENCRYPTION_FAILED = 6000;

// The specified file could not be decrypted.
pub const ERROR_DECRYPTION_FAILED = 6001;

// The specified file is encrypted and the user does not have the ability to decrypt it.
pub const ERROR_FILE_ENCRYPTED = 6002;

// There is no valid encryption recovery policy configured for this system.
pub const ERROR_NO_RECOVERY_POLICY = 6003;

// The required encryption driver is not loaded for this system.
pub const ERROR_NO_EFS = 6004;

// The file was encrypted with a different encryption driver than is currently loaded.
pub const ERROR_WRONG_EFS = 6005;

// There are no EFS keys defined for the user.
pub const ERROR_NO_USER_KEYS = 6006;

// The specified file is not encrypted.
pub const ERROR_FILE_NOT_ENCRYPTED = 6007;

// The specified file is not in the defined EFS export format.
pub const ERROR_NOT_EXPORT_FORMAT = 6008;

// The specified file is read only.
pub const ERROR_FILE_READ_ONLY = 6009;

// The directory has been disabled for encryption.
pub const ERROR_DIR_EFS_DISALLOWED = 6010;

// The server is not trusted for remote encryption operation.
pub const ERROR_EFS_SERVER_NOT_TRUSTED = 6011;

// Recovery policy configured for this system contains invalid recovery certificate.
pub const ERROR_BAD_RECOVERY_POLICY = 6012;

// The encryption algorithm used on the source file needs a bigger key buffer than the one on the destination file.
pub const ERROR_EFS_ALG_BLOB_TOO_BIG = 6013;

// The disk partition does not support file encryption.
pub const ERROR_VOLUME_NOT_SUPPORT_EFS = 6014;

// This machine is disabled for file encryption.
pub const ERROR_EFS_DISABLED = 6015;

// A newer system is required to decrypt this encrypted file.
pub const ERROR_EFS_VERSION_NOT_SUPPORT = 6016;

// The remote server sent an invalid response for a file being opened with Client Side Encryption.
pub const ERROR_CS_ENCRYPTION_INVALID_SERVER_RESPONSE = 6017;

// Client Side Encryption is not supported by the remote server even though it claims to support it.
pub const ERROR_CS_ENCRYPTION_UNSUPPORTED_SERVER = 6018;

// File is encrypted and should be opened in Client Side Encryption mode.
pub const ERROR_CS_ENCRYPTION_EXISTING_ENCRYPTED_FILE = 6019;

// A new encrypted file is being created and a $EFS needs to be provided.
pub const ERROR_CS_ENCRYPTION_NEW_ENCRYPTED_FILE = 6020;

// The SMB client requested a CSE FSCTL on a non-CSE file.
pub const ERROR_CS_ENCRYPTION_FILE_NOT_CSE = 6021;

// The requested operation was blocked by policy. For more information, contact your system administrator.
pub const ERROR_ENCRYPTION_POLICY_DENIES_OPERATION = 6022;

// The list of servers for this workgroup is not currently available
pub const ERROR_NO_BROWSER_SERVERS_FOUND = 6118;

// The Task Scheduler service must be configured to run in the System account to function properly. Individual tasks may be configured to run in other accounts.
pub const SCHED_E_SERVICE_NOT_LOCALSYSTEM = 6200;

// Log service encountered an invalid log sector.
pub const ERROR_LOG_SECTOR_INVALID = 6600;

// Log service encountered a log sector with invalid block parity.
pub const ERROR_LOG_SECTOR_PARITY_INVALID = 6601;

// Log service encountered a remapped log sector.
pub const ERROR_LOG_SECTOR_REMAPPED = 6602;

// Log service encountered a partial or incomplete log block.
pub const ERROR_LOG_BLOCK_INCOMPLETE = 6603;

// Log service encountered an attempt access data outside the active log range.
pub const ERROR_LOG_INVALID_RANGE = 6604;

// Log service user marshalling buffers are exhausted.
pub const ERROR_LOG_BLOCKS_EXHAUSTED = 6605;

// Log service encountered an attempt read from a marshalling area with an invalid read context.
pub const ERROR_LOG_READ_CONTEXT_INVALID = 6606;

// Log service encountered an invalid log restart area.
pub const ERROR_LOG_RESTART_INVALID = 6607;

// Log service encountered an invalid log block version.
pub const ERROR_LOG_BLOCK_VERSION = 6608;

// Log service encountered an invalid log block.
pub const ERROR_LOG_BLOCK_INVALID = 6609;

// Log service encountered an attempt to read the log with an invalid read mode.
pub const ERROR_LOG_READ_MODE_INVALID = 6610;

// Log service encountered a log stream with no restart area.
pub const ERROR_LOG_NO_RESTART = 6611;

// Log service encountered a corrupted metadata file.
pub const ERROR_LOG_METADATA_CORRUPT = 6612;

// Log service encountered a metadata file that could not be created by the log file system.
pub const ERROR_LOG_METADATA_INVALID = 6613;

// Log service encountered a metadata file with inconsistent data.
pub const ERROR_LOG_METADATA_INCONSISTENT = 6614;

// Log service encountered an attempt to erroneous allocate or dispose reservation space.
pub const ERROR_LOG_RESERVATION_INVALID = 6615;

// Log service cannot delete log file or file system container.
pub const ERROR_LOG_CANT_DELETE = 6616;

// Log service has reached the maximum allowable containers allocated to a log file.
pub const ERROR_LOG_CONTAINER_LIMIT_EXCEEDED = 6617;

// Log service has attempted to read or write backward past the start of the log.
pub const ERROR_LOG_START_OF_LOG = 6618;

// Log policy could not be installed because a policy of the same type is already present.
pub const ERROR_LOG_POLICY_ALREADY_INSTALLED = 6619;

// Log policy in question was not installed at the time of the request.
pub const ERROR_LOG_POLICY_NOT_INSTALLED = 6620;

// The installed set of policies on the log is invalid.
pub const ERROR_LOG_POLICY_INVALID = 6621;

// A policy on the log in question prevented the operation from completing.
pub const ERROR_LOG_POLICY_CONFLICT = 6622;

// Log space cannot be reclaimed because the log is pinned by the archive tail.
pub const ERROR_LOG_PINNED_ARCHIVE_TAIL = 6623;

// Log record is not a record in the log file.
pub const ERROR_LOG_RECORD_NONEXISTENT = 6624;

// Number of reserved log records or the adjustment of the number of reserved log records is invalid.
pub const ERROR_LOG_RECORDS_RESERVED_INVALID = 6625;

// Reserved log space or the adjustment of the log space is invalid.
pub const ERROR_LOG_SPACE_RESERVED_INVALID = 6626;

// An new or existing archive tail or base of the active log is invalid.
pub const ERROR_LOG_TAIL_INVALID = 6627;

// Log space is exhausted.
pub const ERROR_LOG_FULL = 6628;

// The log could not be set to the requested size.
pub const ERROR_COULD_NOT_RESIZE_LOG = 6629;

// Log is multiplexed, no direct writes to the physical log is allowed.
pub const ERROR_LOG_MULTIPLEXED = 6630;

// The operation failed because the log is a dedicated log.
pub const ERROR_LOG_DEDICATED = 6631;

// The operation requires an archive context.
pub const ERROR_LOG_ARCHIVE_NOT_IN_PROGRESS = 6632;

// Log archival is in progress.
pub const ERROR_LOG_ARCHIVE_IN_PROGRESS = 6633;

// The operation requires a non-ephemeral log, but the log is ephemeral.
pub const ERROR_LOG_EPHEMERAL = 6634;

// The log must have at least two containers before it can be read from or written to.
pub const ERROR_LOG_NOT_ENOUGH_CONTAINERS = 6635;

// A log client has already registered on the stream.
pub const ERROR_LOG_CLIENT_ALREADY_REGISTERED = 6636;

// A log client has not been registered on the stream.
pub const ERROR_LOG_CLIENT_NOT_REGISTERED = 6637;

// A request has already been made to handle the log full condition.
pub const ERROR_LOG_FULL_HANDLER_IN_PROGRESS = 6638;

// Log service encountered an error when attempting to read from a log container.
pub const ERROR_LOG_CONTAINER_READ_FAILED = 6639;

// Log service encountered an error when attempting to write to a log container.
pub const ERROR_LOG_CONTAINER_WRITE_FAILED = 6640;

// Log service encountered an error when attempting open a log container.
pub const ERROR_LOG_CONTAINER_OPEN_FAILED = 6641;

// Log service encountered an invalid container state when attempting a requested action.
pub const ERROR_LOG_CONTAINER_STATE_INVALID = 6642;

// Log service is not in the correct state to perform a requested action.
pub const ERROR_LOG_STATE_INVALID = 6643;

// Log space cannot be reclaimed because the log is pinned.
pub const ERROR_LOG_PINNED = 6644;

// Log metadata flush failed.
pub const ERROR_LOG_METADATA_FLUSH_FAILED = 6645;

// Security on the log and its containers is inconsistent.
pub const ERROR_LOG_INCONSISTENT_SECURITY = 6646;

// Records were appended to the log or reservation changes were made, but the log could not be flushed.
pub const ERROR_LOG_APPENDED_FLUSH_FAILED = 6647;

// The log is pinned due to reservation consuming most of the log space. Free some reserved records to make space available.
pub const ERROR_LOG_PINNED_RESERVATION = 6648;

// The transaction handle associated with this operation is not valid.
pub const ERROR_INVALID_TRANSACTION = 6700;

// The requested operation was made in the context of a transaction that is no longer active.
pub const ERROR_TRANSACTION_NOT_ACTIVE = 6701;

// The requested operation is not valid on the Transaction object in its current state.
pub const ERROR_TRANSACTION_REQUEST_NOT_VALID = 6702;

// The caller has called a response API, but the response is not expected because the TM did not issue the corresponding request to the caller.
pub const ERROR_TRANSACTION_NOT_REQUESTED = 6703;

// It is too late to perform the requested operation, since the Transaction has already been aborted.
pub const ERROR_TRANSACTION_ALREADY_ABORTED = 6704;

// It is too late to perform the requested operation, since the Transaction has already been committed.
pub const ERROR_TRANSACTION_ALREADY_COMMITTED = 6705;

// The Transaction Manager was unable to be successfully initialized. Transacted operations are not supported.
pub const ERROR_TM_INITIALIZATION_FAILED = 6706;

// The specified ResourceManager made no changes or updates to the resource under this transaction.
pub const ERROR_RESOURCEMANAGER_READ_ONLY = 6707;

// The resource manager has attempted to prepare a transaction that it has not successfully joined.
pub const ERROR_TRANSACTION_NOT_JOINED = 6708;

// The Transaction object already has a superior enlistment, and the caller attempted an operation that would have created a new superior. Only a single superior enlistment is allow.
pub const ERROR_TRANSACTION_SUPERIOR_EXISTS = 6709;

// The RM tried to register a protocol that already exists.
pub const ERROR_CRM_PROTOCOL_ALREADY_EXISTS = 6710;

// The attempt to propagate the Transaction failed.
pub const ERROR_TRANSACTION_PROPAGATION_FAILED = 6711;

// The requested propagation protocol was not registered as a CRM.
pub const ERROR_CRM_PROTOCOL_NOT_FOUND = 6712;

// The buffer passed in to PushTransaction or PullTransaction is not in a valid format.
pub const ERROR_TRANSACTION_INVALID_MARSHALL_BUFFER = 6713;

// The current transaction context associated with the thread is not a valid handle to a transaction object.
pub const ERROR_CURRENT_TRANSACTION_NOT_VALID = 6714;

// The specified Transaction object could not be opened, because it was not found.
pub const ERROR_TRANSACTION_NOT_FOUND = 6715;

// The specified ResourceManager object could not be opened, because it was not found.
pub const ERROR_RESOURCEMANAGER_NOT_FOUND = 6716;

// The specified Enlistment object could not be opened, because it was not found.
pub const ERROR_ENLISTMENT_NOT_FOUND = 6717;

// The specified TransactionManager object could not be opened, because it was not found.
pub const ERROR_TRANSACTIONMANAGER_NOT_FOUND = 6718;

// The object specified could not be created or opened, because its associated TransactionManager is not online.  The TransactionManager must be brought fully Online by calling RecoverTransactionManager to recover to the end of its LogFile before objects in its Transaction or ResourceManager namespaces can be opened.  In addition, errors in writing records to its LogFile can cause a TransactionManager to go offline.
pub const ERROR_TRANSACTIONMANAGER_NOT_ONLINE = 6719;

// The specified TransactionManager was unable to create the objects contained in its logfile in the Ob namespace. Therefore, the TransactionManager was unable to recover.
pub const ERROR_TRANSACTIONMANAGER_RECOVERY_NAME_COLLISION = 6720;

// The call to create a superior Enlistment on this Transaction object could not be completed, because the Transaction object specified for the enlistment is a subordinate branch of the Transaction. Only the root of the Transaction can be enlisted on as a superior.
pub const ERROR_TRANSACTION_NOT_ROOT = 6721;

// Because the associated transaction manager or resource manager has been closed, the handle is no longer valid.
pub const ERROR_TRANSACTION_OBJECT_EXPIRED = 6722;

// The specified operation could not be performed on this Superior enlistment, because the enlistment was not created with the corresponding completion response in the NotificationMask.
pub const ERROR_TRANSACTION_RESPONSE_NOT_ENLISTED = 6723;

// The specified operation could not be performed, because the record that would be logged was too long. This can occur because of two conditions: either there are too many Enlistments on this Transaction, or the combined RecoveryInformation being logged on behalf of those Enlistments is too long.
pub const ERROR_TRANSACTION_RECORD_TOO_LONG = 6724;

// Implicit transaction are not supported.
pub const ERROR_IMPLICIT_TRANSACTION_NOT_SUPPORTED = 6725;

// The kernel transaction manager had to abort or forget the transaction because it blocked forward progress.
pub const ERROR_TRANSACTION_INTEGRITY_VIOLATED = 6726;

// The TransactionManager identity that was supplied did not match the one recorded in the TransactionManager's log file.
pub const ERROR_TRANSACTIONMANAGER_IDENTITY_MISMATCH = 6727;

// This snapshot operation cannot continue because a transactional resource manager cannot be frozen in its current state.  Please try again.
pub const ERROR_RM_CANNOT_BE_FROZEN_FOR_SNAPSHOT = 6728;

// The transaction cannot be enlisted on with the specified EnlistmentMask, because the transaction has already completed the PrePrepare phase.  In order to ensure correctness, the ResourceManager must switch to a write-through mode and cease caching data within this transaction.  Enlisting for only subsequent transaction phases may still succeed.
pub const ERROR_TRANSACTION_MUST_WRITETHROUGH = 6729;

// The transaction does not have a superior enlistment.
pub const ERROR_TRANSACTION_NO_SUPERIOR = 6730;

// The attempt to commit the Transaction completed, but it is possible that some portion of the transaction tree did not commit successfully due to heuristics.  Therefore it is possible that some data modified in the transaction may not have committed, resulting in transactional inconsistency.  If possible, check the consistency of the associated data.
pub const ERROR_HEURISTIC_DAMAGE_POSSIBLE = 6731;

// The function attempted to use a name that is reserved for use by another transaction.
pub const ERROR_TRANSACTIONAL_CONFLICT = 6800;

// Transaction support within the specified resource manager is not started or was shut down due to an error.
pub const ERROR_RM_NOT_ACTIVE = 6801;

// The metadata of the RM has been corrupted. The RM will not function.
pub const ERROR_RM_METADATA_CORRUPT = 6802;

// The specified directory does not contain a resource manager.
pub const ERROR_DIRECTORY_NOT_RM = 6803;

// The remote server or share does not support transacted file operations.
pub const ERROR_TRANSACTIONS_UNSUPPORTED_REMOTE = 6805;

// The requested log size is invalid.
pub const ERROR_LOG_RESIZE_INVALID_SIZE = 6806;

// The object (file, stream, link) corresponding to the handle has been deleted by a Transaction Savepoint Rollback.
pub const ERROR_OBJECT_NO_LONGER_EXISTS = 6807;

// The specified file miniversion was not found for this transacted file open.
pub const ERROR_STREAM_MINIVERSION_NOT_FOUND = 6808;

// The specified file miniversion was found but has been invalidated. Most likely cause is a transaction savepoint rollback.
pub const ERROR_STREAM_MINIVERSION_NOT_VALID = 6809;

// A miniversion may only be opened in the context of the transaction that created it.
pub const ERROR_MINIVERSION_INACCESSIBLE_FROM_SPECIFIED_TRANSACTION = 6810;

// It is not possible to open a miniversion with modify access.
pub const ERROR_CANT_OPEN_MINIVERSION_WITH_MODIFY_INTENT = 6811;

// It is not possible to create any more miniversions for this stream.
pub const ERROR_CANT_CREATE_MORE_STREAM_MINIVERSIONS = 6812;

// The remote server sent mismatching version number or Fid for a file opened with transactions.
pub const ERROR_REMOTE_FILE_VERSION_MISMATCH = 6814;

// The handle has been invalidated by a transaction. The most likely cause is the presence of memory mapping on a file or an open handle when the transaction ended or rolled back to savepoint.
pub const ERROR_HANDLE_NO_LONGER_VALID = 6815;

// There is no transaction metadata on the file.
pub const ERROR_NO_TXF_METADATA = 6816;

// The log data is corrupt.
pub const ERROR_LOG_CORRUPTION_DETECTED = 6817;

// The file can't be recovered because there is a handle still open on it.
pub const ERROR_CANT_RECOVER_WITH_HANDLE_OPEN = 6818;

// The transaction outcome is unavailable because the resource manager responsible for it has disconnected.
pub const ERROR_RM_DISCONNECTED = 6819;

// The request was rejected because the enlistment in question is not a superior enlistment.
pub const ERROR_ENLISTMENT_NOT_SUPERIOR = 6820;

// The transactional resource manager is already consistent. Recovery is not needed.
pub const ERROR_RECOVERY_NOT_NEEDED = 6821;

// The transactional resource manager has already been started.
pub const ERROR_RM_ALREADY_STARTED = 6822;

// The file cannot be opened transactionally, because its identity depends on the outcome of an unresolved transaction.
pub const ERROR_FILE_IDENTITY_NOT_PERSISTENT = 6823;

// The operation cannot be performed because another transaction is depending on the fact that this property will not change.
pub const ERROR_CANT_BREAK_TRANSACTIONAL_DEPENDENCY = 6824;

// The operation would involve a single file with two transactional resource managers and is therefore not allowed.
pub const ERROR_CANT_CROSS_RM_BOUNDARY = 6825;

// The $Txf directory must be empty for this operation to succeed.
pub const ERROR_TXF_DIR_NOT_EMPTY = 6826;

// The operation would leave a transactional resource manager in an inconsistent state and is therefore not allowed.
pub const ERROR_INDOUBT_TRANSACTIONS_EXIST = 6827;

// The operation could not be completed because the transaction manager does not have a log.
pub const ERROR_TM_VOLATILE = 6828;

// A rollback could not be scheduled because a previously scheduled rollback has already executed or been queued for execution.
pub const ERROR_ROLLBACK_TIMER_EXPIRED = 6829;

// The transactional metadata attribute on the file or directory is corrupt and unreadable.
pub const ERROR_TXF_ATTRIBUTE_CORRUPT = 6830;

// The encryption operation could not be completed because a transaction is active.
pub const ERROR_EFS_NOT_ALLOWED_IN_TRANSACTION = 6831;

// This object is not allowed to be opened in a transaction.
pub const ERROR_TRANSACTIONAL_OPEN_NOT_ALLOWED = 6832;

// An attempt to create space in the transactional resource manager's log failed. The failure status has been recorded in the event log.
pub const ERROR_LOG_GROWTH_FAILED = 6833;

// Memory mapping (creating a mapped section) a remote file under a transaction is not supported.
pub const ERROR_TRANSACTED_MAPPING_UNSUPPORTED_REMOTE = 6834;

// Transaction metadata is already present on this file and cannot be superseded.
pub const ERROR_TXF_METADATA_ALREADY_PRESENT = 6835;

// A transaction scope could not be entered because the scope handler has not been initialized.
pub const ERROR_TRANSACTION_SCOPE_CALLBACKS_NOT_SET = 6836;

// Promotion was required in order to allow the resource manager to enlist, but the transaction was set to disallow it.
pub const ERROR_TRANSACTION_REQUIRED_PROMOTION = 6837;

// This file is open for modification in an unresolved transaction and may be opened for execute only by a transacted reader.
pub const ERROR_CANNOT_EXECUTE_FILE_IN_TRANSACTION = 6838;

// The request to thaw frozen transactions was ignored because transactions had not previously been frozen.
pub const ERROR_TRANSACTIONS_NOT_FROZEN = 6839;

// Transactions cannot be frozen because a freeze is already in progress.
pub const ERROR_TRANSACTION_FREEZE_IN_PROGRESS = 6840;

// The target volume is not a snapshot volume. This operation is only valid on a volume mounted as a snapshot.
pub const ERROR_NOT_SNAPSHOT_VOLUME = 6841;

// The savepoint operation failed because files are open on the transaction. This is not permitted.
pub const ERROR_NO_SAVEPOINT_WITH_OPEN_FILES = 6842;

// Windows has discovered corruption in a file, and that file has since been repaired. Data loss may have occurred.
pub const ERROR_DATA_LOST_REPAIR = 6843;

// The sparse operation could not be completed because a transaction is active on the file.
pub const ERROR_SPARSE_NOT_ALLOWED_IN_TRANSACTION = 6844;

// The call to create a TransactionManager object failed because the Tm Identity stored in the logfile does not match the Tm Identity that was passed in as an argument.
pub const ERROR_TM_IDENTITY_MISMATCH = 6845;

// I/O was attempted on a section object that has been floated as a result of a transaction ending. There is no valid data.
pub const ERROR_FLOATED_SECTION = 6846;

// The transactional resource manager cannot currently accept transacted work due to a transient condition such as low resources.
pub const ERROR_CANNOT_ACCEPT_TRANSACTED_WORK = 6847;

// The transactional resource manager had too many tranactions outstanding that could not be aborted. The transactional resource manger has been shut down.
pub const ERROR_CANNOT_ABORT_TRANSACTIONS = 6848;

// The operation could not be completed due to bad clusters on disk.
pub const ERROR_BAD_CLUSTERS = 6849;

// The compression operation could not be completed because a transaction is active on the file.
pub const ERROR_COMPRESSION_NOT_ALLOWED_IN_TRANSACTION = 6850;

// The operation could not be completed because the volume is dirty. Please run chkdsk and try again.
pub const ERROR_VOLUME_DIRTY = 6851;

// The link tracking operation could not be completed because a transaction is active.
pub const ERROR_NO_LINK_TRACKING_IN_TRANSACTION = 6852;

// This operation cannot be performed in a transaction.
pub const ERROR_OPERATION_NOT_SUPPORTED_IN_TRANSACTION = 6853;

// The handle is no longer properly associated with its transaction.  It may have been opened in a transactional resource manager that was subsequently forced to restart.  Please close the handle and open a new one.
pub const ERROR_EXPIRED_HANDLE = 6854;

// The specified operation could not be performed because the resource manager is not enlisted in the transaction.
pub const ERROR_TRANSACTION_NOT_ENLISTED = 6855;

// The specified session name is invalid.
pub const ERROR_CTX_WINSTATION_NAME_INVALID = 7001;

// The specified protocol driver is invalid.
pub const ERROR_CTX_INVALID_PD = 7002;

// The specified protocol driver was not found in the system path.
pub const ERROR_CTX_PD_NOT_FOUND = 7003;

// The specified terminal connection driver was not found in the system path.
pub const ERROR_CTX_WD_NOT_FOUND = 7004;

// A registry key for event logging could not be created for this session.
pub const ERROR_CTX_CANNOT_MAKE_EVENTLOG_ENTRY = 7005;

// A service with the same name already exists on the system.
pub const ERROR_CTX_SERVICE_NAME_COLLISION = 7006;

// A close operation is pending on the session.
pub const ERROR_CTX_CLOSE_PENDING = 7007;

// There are no free output buffers available.
pub const ERROR_CTX_NO_OUTBUF = 7008;

// The MODEM.INF file was not found.
pub const ERROR_CTX_MODEM_INF_NOT_FOUND = 7009;

// The modem name was not found in MODEM.INF.
pub const ERROR_CTX_INVALID_MODEMNAME = 7010;

// The modem did not accept the command sent to it. Verify that the configured modem name matches the attached modem.
pub const ERROR_CTX_MODEM_RESPONSE_ERROR = 7011;

// The modem did not respond to the command sent to it. Verify that the modem is properly cabled and powered on.
pub const ERROR_CTX_MODEM_RESPONSE_TIMEOUT = 7012;

// Carrier detect has failed or carrier has been dropped due to disconnect.
pub const ERROR_CTX_MODEM_RESPONSE_NO_CARRIER = 7013;

// Dial tone not detected within the required time. Verify that the phone cable is properly attached and functional.
pub const ERROR_CTX_MODEM_RESPONSE_NO_DIALTONE = 7014;

// Busy signal detected at remote site on callback.
pub const ERROR_CTX_MODEM_RESPONSE_BUSY = 7015;

// Voice detected at remote site on callback.
pub const ERROR_CTX_MODEM_RESPONSE_VOICE = 7016;

// Transport driver error
pub const ERROR_CTX_TD_ERROR = 7017;

// The specified session cannot be found.
pub const ERROR_CTX_WINSTATION_NOT_FOUND = 7022;

// The specified session name is already in use.
pub const ERROR_CTX_WINSTATION_ALREADY_EXISTS = 7023;

// The task you are trying to do can't be completed because Remote Desktop Services is currently busy. Please try again in a few minutes. Other users should still be able to log on.
pub const ERROR_CTX_WINSTATION_BUSY = 7024;

// An attempt has been made to connect to a session whose video mode is not supported by the current client.
pub const ERROR_CTX_BAD_VIDEO_MODE = 7025;

// The application attempted to enable DOS graphics mode. DOS graphics mode is not supported.
pub const ERROR_CTX_GRAPHICS_INVALID = 7035;

// Your interactive logon privilege has been disabled. Please contact your administrator.
pub const ERROR_CTX_LOGON_DISABLED = 7037;

// The requested operation can be performed only on the system console. This is most often the result of a driver or system DLL requiring direct console access.
pub const ERROR_CTX_NOT_CONSOLE = 7038;

// The client failed to respond to the server connect message.
pub const ERROR_CTX_CLIENT_QUERY_TIMEOUT = 7040;

// Disconnecting the console session is not supported.
pub const ERROR_CTX_CONSOLE_DISCONNECT = 7041;

// Reconnecting a disconnected session to the console is not supported.
pub const ERROR_CTX_CONSOLE_CONNECT = 7042;

// The request to control another session remotely was denied.
pub const ERROR_CTX_SHADOW_DENIED = 7044;

// The requested session access is denied.
pub const ERROR_CTX_WINSTATION_ACCESS_DENIED = 7045;

// The specified terminal connection driver is invalid.
pub const ERROR_CTX_INVALID_WD = 7049;

// This may be because the session is disconnected or does not currently have a user logged on.
pub const ERROR_CTX_SHADOW_INVALID = 7050;

// The requested session is not configured to allow remote control.
pub const ERROR_CTX_SHADOW_DISABLED = 7051;

// Your request to connect to this Terminal Server has been rejected. Your Terminal Server client license number is currently being used by another user. Please call your system administrator to obtain a unique license number.
pub const ERROR_CTX_CLIENT_LICENSE_IN_USE = 7052;

// Your request to connect to this Terminal Server has been rejected. Your Terminal Server client license number has not been entered for this copy of the Terminal Server client. Please contact your system administrator.
pub const ERROR_CTX_CLIENT_LICENSE_NOT_SET = 7053;

// The number of connections to this computer is limited and all connections are in use right now. Try connecting later or contact your system administrator.
pub const ERROR_CTX_LICENSE_NOT_AVAILABLE = 7054;

// The client you are using is not licensed to use this system. Your logon request is denied.
pub const ERROR_CTX_LICENSE_CLIENT_INVALID = 7055;

// The system license has expired. Your logon request is denied.
pub const ERROR_CTX_LICENSE_EXPIRED = 7056;

// Remote control could not be terminated because the specified session is not currently being remotely controlled.
pub const ERROR_CTX_SHADOW_NOT_RUNNING = 7057;

// The remote control of the console was terminated because the display mode was changed. Changing the display mode in a remote control session is not supported.
pub const ERROR_CTX_SHADOW_ENDED_BY_MODE_CHANGE = 7058;

// Activation has already been reset the maximum number of times for this installation. Your activation timer will not be cleared.
pub const ERROR_ACTIVATION_COUNT_EXCEEDED = 7059;

// Remote logins are currently disabled.
pub const ERROR_CTX_WINSTATIONS_DISABLED = 7060;

// You do not have the proper encryption level to access this Session.
pub const ERROR_CTX_ENCRYPTION_LEVEL_REQUIRED = 7061;

// The user %s\\%s is currently logged on to this computer. Only the current user or an administrator can log on to this computer.
pub const ERROR_CTX_SESSION_IN_USE = 7062;

// The user %s\\%s is already logged on to the console of this computer. You do not have permission to log in at this time. To resolve this issue, contact %s\\%s and have them log off.
pub const ERROR_CTX_NO_FORCE_LOGOFF = 7063;

// Unable to log you on because of an account restriction.
pub const ERROR_CTX_ACCOUNT_RESTRICTION = 7064;

// The RDP protocol component %2 detected an error in the protocol stream and has disconnected the client.
pub const ERROR_RDP_PROTOCOL_ERROR = 7065;

// The Client Drive Mapping Service Has Connected on Terminal Connection.
pub const ERROR_CTX_CDM_CONNECT = 7066;

// The Client Drive Mapping Service Has Disconnected on Terminal Connection.
pub const ERROR_CTX_CDM_DISCONNECT = 7067;

// The Terminal Server security layer detected an error in the protocol stream and has disconnected the client.
pub const ERROR_CTX_SECURITY_LAYER_ERROR = 7068;

// The target session is incompatible with the current session.
pub const ERROR_TS_INCOMPATIBLE_SESSIONS = 7069;

// Windows can't connect to your session because a problem occurred in the Windows video subsystem. Try connecting again later, or contact the server administrator for assistance.
pub const ERROR_TS_VIDEO_SUBSYSTEM_ERROR = 7070;

// The file replication service API was called incorrectly.
pub const FRS_ERR_INVALID_API_SEQUENCE = 8001;

// The file replication service cannot be started.
pub const FRS_ERR_STARTING_SERVICE = 8002;

// The file replication service cannot be stopped.
pub const FRS_ERR_STOPPING_SERVICE = 8003;

// The file replication service API terminated the request. The event log may have more information.
pub const FRS_ERR_INTERNAL_API = 8004;

// The file replication service terminated the request. The event log may have more information.
pub const FRS_ERR_INTERNAL = 8005;

// The file replication service cannot be contacted. The event log may have more information.
pub const FRS_ERR_SERVICE_COMM = 8006;

// The file replication service cannot satisfy the request because the user has insufficient privileges. The event log may have more information.
pub const FRS_ERR_INSUFFICIENT_PRIV = 8007;

// The file replication service cannot satisfy the request because authenticated RPC is not available. The event log may have more information.
pub const FRS_ERR_AUTHENTICATION = 8008;

// The file replication service cannot satisfy the request because the user has insufficient privileges on the domain controller. The event log may have more information.
pub const FRS_ERR_PARENT_INSUFFICIENT_PRIV = 8009;

// The file replication service cannot satisfy the request because authenticated RPC is not available on the domain controller. The event log may have more information.
pub const FRS_ERR_PARENT_AUTHENTICATION = 8010;

// The file replication service cannot communicate with the file replication service on the domain controller. The event log may have more information.
pub const FRS_ERR_CHILD_TO_PARENT_COMM = 8011;

// The file replication service on the domain controller cannot communicate with the file replication service on this computer. The event log may have more information.
pub const FRS_ERR_PARENT_TO_CHILD_COMM = 8012;

// The file replication service cannot populate the system volume because of an internal error. The event log may have more information.
pub const FRS_ERR_SYSVOL_POPULATE = 8013;

// The file replication service cannot populate the system volume because of an internal timeout. The event log may have more information.
pub const FRS_ERR_SYSVOL_POPULATE_TIMEOUT = 8014;

// The file replication service cannot process the request. The system volume is busy with a previous request.
pub const FRS_ERR_SYSVOL_IS_BUSY = 8015;

// The file replication service cannot stop replicating the system volume because of an internal error. The event log may have more information.
pub const FRS_ERR_SYSVOL_DEMOTE = 8016;

// The file replication service detected an invalid parameter.
pub const FRS_ERR_INVALID_SERVICE_PARAMETER = 8017;

// An error occurred while installing the directory service. For more information, see the event log.
pub const ERROR_DS_NOT_INSTALLED = 8200;

// The directory service evaluated group memberships locally.
pub const ERROR_DS_MEMBERSHIP_EVALUATED_LOCALLY = 8201;

// The specified directory service attribute or value does not exist.
pub const ERROR_DS_NO_ATTRIBUTE_OR_VALUE = 8202;

// The attribute syntax specified to the directory service is invalid.
pub const ERROR_DS_INVALID_ATTRIBUTE_SYNTAX = 8203;

// The attribute type specified to the directory service is not defined.
pub const ERROR_DS_ATTRIBUTE_TYPE_UNDEFINED = 8204;

// The specified directory service attribute or value already exists.
pub const ERROR_DS_ATTRIBUTE_OR_VALUE_EXISTS = 8205;

// The directory service is busy.
pub const ERROR_DS_BUSY = 8206;

// The directory service is unavailable.
pub const ERROR_DS_UNAVAILABLE = 8207;

// The directory service was unable to allocate a relative identifier.
pub const ERROR_DS_NO_RIDS_ALLOCATED = 8208;

// The directory service has exhausted the pool of relative identifiers.
pub const ERROR_DS_NO_MORE_RIDS = 8209;

// The requested operation could not be performed because the directory service is not the master for that type of operation.
pub const ERROR_DS_INCORRECT_ROLE_OWNER = 8210;

// The directory service was unable to initialize the subsystem that allocates relative identifiers.
pub const ERROR_DS_RIDMGR_INIT_ERROR = 8211;

// The requested operation did not satisfy one or more constraints associated with the class of the object.
pub const ERROR_DS_OBJ_CLASS_VIOLATION = 8212;

// The directory service can perform the requested operation only on a leaf object.
pub const ERROR_DS_CANT_ON_NON_LEAF = 8213;

// The directory service cannot perform the requested operation on the RDN attribute of an object.
pub const ERROR_DS_CANT_ON_RDN = 8214;

// The directory service detected an attempt to modify the object class of an object.
pub const ERROR_DS_CANT_MOD_OBJ_CLASS = 8215;

// The requested cross-domain move operation could not be performed.
pub const ERROR_DS_CROSS_DOM_MOVE_ERROR = 8216;

// Unable to contact the global catalog server.
pub const ERROR_DS_GC_NOT_AVAILABLE = 8217;

// The policy object is shared and can only be modified at the root.
pub const ERROR_SHARED_POLICY = 8218;

// The policy object does not exist.
pub const ERROR_POLICY_OBJECT_NOT_FOUND = 8219;

// The requested policy information is only in the directory service.
pub const ERROR_POLICY_ONLY_IN_DS = 8220;

// A domain controller promotion is currently active.
pub const ERROR_PROMOTION_ACTIVE = 8221;

// A domain controller promotion is not currently active
pub const ERROR_NO_PROMOTION_ACTIVE = 8222;

// An operations error occurred.
pub const ERROR_DS_OPERATIONS_ERROR = 8224;

// A protocol error occurred.
pub const ERROR_DS_PROTOCOL_ERROR = 8225;

// The time limit for this request was exceeded.
pub const ERROR_DS_TIMELIMIT_EXCEEDED = 8226;

// The size limit for this request was exceeded.
pub const ERROR_DS_SIZELIMIT_EXCEEDED = 8227;

// The administrative limit for this request was exceeded.
pub const ERROR_DS_ADMIN_LIMIT_EXCEEDED = 8228;

// The compare response was false.
pub const ERROR_DS_COMPARE_FALSE = 8229;

// The compare response was true.
pub const ERROR_DS_COMPARE_TRUE = 8230;

// The requested authentication method is not supported by the server.
pub const ERROR_DS_AUTH_METHOD_NOT_SUPPORTED = 8231;

// A more secure authentication method is required for this server.
pub const ERROR_DS_STRONG_AUTH_REQUIRED = 8232;

// Inappropriate authentication.
pub const ERROR_DS_INAPPROPRIATE_AUTH = 8233;

// The authentication mechanism is unknown.
pub const ERROR_DS_AUTH_UNKNOWN = 8234;

// A referral was returned from the server.
pub const ERROR_DS_REFERRAL = 8235;

// The server does not support the requested critical extension.
pub const ERROR_DS_UNAVAILABLE_CRIT_EXTENSION = 8236;

// This request requires a secure connection.
pub const ERROR_DS_CONFIDENTIALITY_REQUIRED = 8237;

// Inappropriate matching.
pub const ERROR_DS_INAPPROPRIATE_MATCHING = 8238;

// A constraint violation occurred.
pub const ERROR_DS_CONSTRAINT_VIOLATION = 8239;

// There is no such object on the server.
pub const ERROR_DS_NO_SUCH_OBJECT = 8240;

// There is an alias problem.
pub const ERROR_DS_ALIAS_PROBLEM = 8241;

// An invalid dn syntax has been specified.
pub const ERROR_DS_INVALID_DN_SYNTAX = 8242;

// The object is a leaf object.
pub const ERROR_DS_IS_LEAF = 8243;

// There is an alias dereferencing problem.
pub const ERROR_DS_ALIAS_DEREF_PROBLEM = 8244;

// The server is unwilling to process the request.
pub const ERROR_DS_UNWILLING_TO_PERFORM = 8245;

// A loop has been detected.
pub const ERROR_DS_LOOP_DETECT = 8246;

// There is a naming violation.
pub const ERROR_DS_NAMING_VIOLATION = 8247;

// The result set is too large.
pub const ERROR_DS_OBJECT_RESULTS_TOO_LARGE = 8248;

// The operation affects multiple DSAs
pub const ERROR_DS_AFFECTS_MULTIPLE_DSAS = 8249;

// The server is not operational.
pub const ERROR_DS_SERVER_DOWN = 8250;

// A local error has occurred.
pub const ERROR_DS_LOCAL_ERROR = 8251;

// An encoding error has occurred.
pub const ERROR_DS_ENCODING_ERROR = 8252;

// A decoding error has occurred.
pub const ERROR_DS_DECODING_ERROR = 8253;

// The search filter cannot be recognized.
pub const ERROR_DS_FILTER_UNKNOWN = 8254;

// One or more parameters are illegal.
pub const ERROR_DS_PARAM_ERROR = 8255;

// The specified method is not supported.
pub const ERROR_DS_NOT_SUPPORTED = 8256;

// No results were returned.
pub const ERROR_DS_NO_RESULTS_RETURNED = 8257;

// The specified control is not supported by the server.
pub const ERROR_DS_CONTROL_NOT_FOUND = 8258;

// A referral loop was detected by the client.
pub const ERROR_DS_CLIENT_LOOP = 8259;

// The preset referral limit was exceeded.
pub const ERROR_DS_REFERRAL_LIMIT_EXCEEDED = 8260;

// The search requires a SORT control.
pub const ERROR_DS_SORT_CONTROL_MISSING = 8261;

// The search results exceed the offset range specified.
pub const ERROR_DS_OFFSET_RANGE_ERROR = 8262;

// The directory service detected the subsystem that allocates relative identifiers is disabled. This can occur as a protective mechanism when the system determines a significant portion of relative identifiers (RIDs) have been exhausted. Please see http://go.microsoft.com/fwlink/?LinkId=228610 for recommended diagnostic steps and the procedure to re-enable account creation.
pub const ERROR_DS_RIDMGR_DISABLED = 8263;

// The root object must be the head of a naming context. The root object cannot have an instantiated parent.
pub const ERROR_DS_ROOT_MUST_BE_NC = 8301;

// The add replica operation cannot be performed. The naming context must be writeable in order to create the replica.
pub const ERROR_DS_ADD_REPLICA_INHIBITED = 8302;

// A reference to an attribute that is not defined in the schema occurred.
pub const ERROR_DS_ATT_NOT_DEF_IN_SCHEMA = 8303;

// The maximum size of an object has been exceeded.
pub const ERROR_DS_MAX_OBJ_SIZE_EXCEEDED = 8304;

// An attempt was made to add an object to the directory with a name that is already in use.
pub const ERROR_DS_OBJ_STRING_NAME_EXISTS = 8305;

// An attempt was made to add an object of a class that does not have an RDN defined in the schema.
pub const ERROR_DS_NO_RDN_DEFINED_IN_SCHEMA = 8306;

// An attempt was made to add an object using an RDN that is not the RDN defined in the schema.
pub const ERROR_DS_RDN_DOESNT_MATCH_SCHEMA = 8307;

// None of the requested attributes were found on the objects.
pub const ERROR_DS_NO_REQUESTED_ATTS_FOUND = 8308;

// The user buffer is too small.
pub const ERROR_DS_USER_BUFFER_TO_SMALL = 8309;

// The attribute specified in the operation is not present on the object.
pub const ERROR_DS_ATT_IS_NOT_ON_OBJ = 8310;

// Illegal modify operation. Some aspect of the modification is not permitted.
pub const ERROR_DS_ILLEGAL_MOD_OPERATION = 8311;

// The specified object is too large.
pub const ERROR_DS_OBJ_TOO_LARGE = 8312;

// The specified instance type is not valid.
pub const ERROR_DS_BAD_INSTANCE_TYPE = 8313;

// The operation must be performed at a master DSA.
pub const ERROR_DS_MASTERDSA_REQUIRED = 8314;

// The object class attribute must be specified.
pub const ERROR_DS_OBJECT_CLASS_REQUIRED = 8315;

// A required attribute is missing.
pub const ERROR_DS_MISSING_REQUIRED_ATT = 8316;

// An attempt was made to modify an object to include an attribute that is not legal for its class.
pub const ERROR_DS_ATT_NOT_DEF_FOR_CLASS = 8317;

// The specified attribute is already present on the object.
pub const ERROR_DS_ATT_ALREADY_EXISTS = 8318;

// The specified attribute is not present, or has no values.
pub const ERROR_DS_CANT_ADD_ATT_VALUES = 8320;

// Multiple values were specified for an attribute that can have only one value.
pub const ERROR_DS_SINGLE_VALUE_CONSTRAINT = 8321;

// A value for the attribute was not in the acceptable range of values.
pub const ERROR_DS_RANGE_CONSTRAINT = 8322;

// The specified value already exists.
pub const ERROR_DS_ATT_VAL_ALREADY_EXISTS = 8323;

// The attribute cannot be removed because it is not present on the object.
pub const ERROR_DS_CANT_REM_MISSING_ATT = 8324;

// The attribute value cannot be removed because it is not present on the object.
pub const ERROR_DS_CANT_REM_MISSING_ATT_VAL = 8325;

// The specified root object cannot be a subref.
pub const ERROR_DS_ROOT_CANT_BE_SUBREF = 8326;

// Chaining is not permitted.
pub const ERROR_DS_NO_CHAINING = 8327;

// Chained evaluation is not permitted.
pub const ERROR_DS_NO_CHAINED_EVAL = 8328;

// The operation could not be performed because the object's parent is either uninstantiated or deleted.
pub const ERROR_DS_NO_PARENT_OBJECT = 8329;

// Having a parent that is an alias is not permitted. Aliases are leaf objects.
pub const ERROR_DS_PARENT_IS_AN_ALIAS = 8330;

// The object and parent must be of the same type, either both masters or both replicas.
pub const ERROR_DS_CANT_MIX_MASTER_AND_REPS = 8331;

// The operation cannot be performed because child objects exist. This operation can only be performed on a leaf object.
pub const ERROR_DS_CHILDREN_EXIST = 8332;

// Directory object not found.
pub const ERROR_DS_OBJ_NOT_FOUND = 8333;

// The aliased object is missing.
pub const ERROR_DS_ALIASED_OBJ_MISSING = 8334;

// The object name has bad syntax.
pub const ERROR_DS_BAD_NAME_SYNTAX = 8335;

// It is not permitted for an alias to refer to another alias.
pub const ERROR_DS_ALIAS_POINTS_TO_ALIAS = 8336;

// The alias cannot be dereferenced.
pub const ERROR_DS_CANT_DEREF_ALIAS = 8337;

// The operation is out of scope.
pub const ERROR_DS_OUT_OF_SCOPE = 8338;

// The operation cannot continue because the object is in the process of being removed.
pub const ERROR_DS_OBJECT_BEING_REMOVED = 8339;

// The DSA object cannot be deleted.
pub const ERROR_DS_CANT_DELETE_DSA_OBJ = 8340;

// A directory service error has occurred.
pub const ERROR_DS_GENERIC_ERROR = 8341;

// The operation can only be performed on an internal master DSA object.
pub const ERROR_DS_DSA_MUST_BE_INT_MASTER = 8342;

// The object must be of class DSA.
pub const ERROR_DS_CLASS_NOT_DSA = 8343;

// Insufficient access rights to perform the operation.
pub const ERROR_DS_INSUFF_ACCESS_RIGHTS = 8344;

// The object cannot be added because the parent is not on the list of possible superiors.
pub const ERROR_DS_ILLEGAL_SUPERIOR = 8345;

// Access to the attribute is not permitted because the attribute is owned by the Security Accounts Manager (SAM).
pub const ERROR_DS_ATTRIBUTE_OWNED_BY_SAM = 8346;

// The name has too many parts.
pub const ERROR_DS_NAME_TOO_MANY_PARTS = 8347;

// The name is too long.
pub const ERROR_DS_NAME_TOO_LONG = 8348;

// The name value is too long.
pub const ERROR_DS_NAME_VALUE_TOO_LONG = 8349;

// The directory service encountered an error parsing a name.
pub const ERROR_DS_NAME_UNPARSEABLE = 8350;

// The directory service cannot get the attribute type for a name.
pub const ERROR_DS_NAME_TYPE_UNKNOWN = 8351;

// The name does not identify an object; the name identifies a phantom.
pub const ERROR_DS_NOT_AN_OBJECT = 8352;

// The security descriptor is too short.
pub const ERROR_DS_SEC_DESC_TOO_SHORT = 8353;

// The security descriptor is invalid.
pub const ERROR_DS_SEC_DESC_INVALID = 8354;

// Failed to create name for deleted object.
pub const ERROR_DS_NO_DELETED_NAME = 8355;

// The parent of a new subref must exist.
pub const ERROR_DS_SUBREF_MUST_HAVE_PARENT = 8356;

// The object must be a naming context.
pub const ERROR_DS_NCNAME_MUST_BE_NC = 8357;

// It is not permitted to add an attribute which is owned by the system.
pub const ERROR_DS_CANT_ADD_SYSTEM_ONLY = 8358;

// The class of the object must be structural; you cannot instantiate an abstract class.
pub const ERROR_DS_CLASS_MUST_BE_CONCRETE = 8359;

// The schema object could not be found.
pub const ERROR_DS_INVALID_DMD = 8360;

// A local object with this GUID (dead or alive) already exists.
pub const ERROR_DS_OBJ_GUID_EXISTS = 8361;

// The operation cannot be performed on a back link.
pub const ERROR_DS_NOT_ON_BACKLINK = 8362;

// The cross reference for the specified naming context could not be found.
pub const ERROR_DS_NO_CROSSREF_FOR_NC = 8363;

// The operation could not be performed because the directory service is shutting down.
pub const ERROR_DS_SHUTTING_DOWN = 8364;

// The directory service request is invalid.
pub const ERROR_DS_UNKNOWN_OPERATION = 8365;

// The role owner attribute could not be read.
pub const ERROR_DS_INVALID_ROLE_OWNER = 8366;

// The requested FSMO operation failed. The current FSMO holder could not be contacted.
pub const ERROR_DS_COULDNT_CONTACT_FSMO = 8367;

// Modification of a DN across a naming context is not permitted.
pub const ERROR_DS_CROSS_NC_DN_RENAME = 8368;

// The attribute cannot be modified because it is owned by the system.
pub const ERROR_DS_CANT_MOD_SYSTEM_ONLY = 8369;

// Only the replicator can perform this function.
pub const ERROR_DS_REPLICATOR_ONLY = 8370;

// The specified class is not defined.
pub const ERROR_DS_OBJ_CLASS_NOT_DEFINED = 8371;

// The specified class is not a subclass.
pub const ERROR_DS_OBJ_CLASS_NOT_SUBCLASS = 8372;

// The name reference is invalid.
pub const ERROR_DS_NAME_REFERENCE_INVALID = 8373;

// A cross reference already exists.
pub const ERROR_DS_CROSS_REF_EXISTS = 8374;

// It is not permitted to delete a master cross reference.
pub const ERROR_DS_CANT_DEL_MASTER_CROSSREF = 8375;

// Subtree notifications are only supported on NC heads.
pub const ERROR_DS_SUBTREE_NOTIFY_NOT_NC_HEAD = 8376;

// Notification filter is too complex.
pub const ERROR_DS_NOTIFY_FILTER_TOO_COMPLEX = 8377;

// Schema update failed: duplicate RDN.
pub const ERROR_DS_DUP_RDN = 8378;

// Schema update failed: duplicate OID.
pub const ERROR_DS_DUP_OID = 8379;

// Schema update failed: duplicate MAPI identifier.
pub const ERROR_DS_DUP_MAPI_ID = 8380;

// Schema update failed: duplicate schema-id GUID.
pub const ERROR_DS_DUP_SCHEMA_ID_GUID = 8381;

// Schema update failed: duplicate LDAP display name.
pub const ERROR_DS_DUP_LDAP_DISPLAY_NAME = 8382;

// Schema update failed: range-lower less than range upper.
pub const ERROR_DS_SEMANTIC_ATT_TEST = 8383;

// Schema update failed: syntax mismatch.
pub const ERROR_DS_SYNTAX_MISMATCH = 8384;

// Schema deletion failed: attribute is used in must-contain.
pub const ERROR_DS_EXISTS_IN_MUST_HAVE = 8385;

// Schema deletion failed: attribute is used in may-contain.
pub const ERROR_DS_EXISTS_IN_MAY_HAVE = 8386;

// Schema update failed: attribute in may-contain does not exist.
pub const ERROR_DS_NONEXISTENT_MAY_HAVE = 8387;

// Schema update failed: attribute in must-contain does not exist.
pub const ERROR_DS_NONEXISTENT_MUST_HAVE = 8388;

// Schema update failed: class in aux-class list does not exist or is not an auxiliary class.
pub const ERROR_DS_AUX_CLS_TEST_FAIL = 8389;

// Schema update failed: class in poss-superiors does not exist.
pub const ERROR_DS_NONEXISTENT_POSS_SUP = 8390;

// Schema update failed: class in subclassof list does not exist or does not satisfy hierarchy rules.
pub const ERROR_DS_SUB_CLS_TEST_FAIL = 8391;

// Schema update failed: Rdn-Att-Id has wrong syntax.
pub const ERROR_DS_BAD_RDN_ATT_ID_SYNTAX = 8392;

// Schema deletion failed: class is used as auxiliary class.
pub const ERROR_DS_EXISTS_IN_AUX_CLS = 8393;

// Schema deletion failed: class is used as sub class.
pub const ERROR_DS_EXISTS_IN_SUB_CLS = 8394;

// Schema deletion failed: class is used as poss superior.
pub const ERROR_DS_EXISTS_IN_POSS_SUP = 8395;

// Schema update failed in recalculating validation cache.
pub const ERROR_DS_RECALCSCHEMA_FAILED = 8396;

// The tree deletion is not finished. The request must be made again to continue deleting the tree.
pub const ERROR_DS_TREE_DELETE_NOT_FINISHED = 8397;

// The requested delete operation could not be performed.
pub const ERROR_DS_CANT_DELETE = 8398;

// Cannot read the governs class identifier for the schema record.
pub const ERROR_DS_ATT_SCHEMA_REQ_ID = 8399;

// The attribute schema has bad syntax.
pub const ERROR_DS_BAD_ATT_SCHEMA_SYNTAX = 8400;

// The attribute could not be cached.
pub const ERROR_DS_CANT_CACHE_ATT = 8401;

// The class could not be cached.
pub const ERROR_DS_CANT_CACHE_CLASS = 8402;

// The attribute could not be removed from the cache.
pub const ERROR_DS_CANT_REMOVE_ATT_CACHE = 8403;

// The class could not be removed from the cache.
pub const ERROR_DS_CANT_REMOVE_CLASS_CACHE = 8404;

// The distinguished name attribute could not be read.
pub const ERROR_DS_CANT_RETRIEVE_DN = 8405;

// No superior reference has been configured for the directory service. The directory service is therefore unable to issue referrals to objects outside this forest.
pub const ERROR_DS_MISSING_SUPREF = 8406;

// The instance type attribute could not be retrieved.
pub const ERROR_DS_CANT_RETRIEVE_INSTANCE = 8407;

// An internal error has occurred.
pub const ERROR_DS_CODE_INCONSISTENCY = 8408;

// A database error has occurred.
pub const ERROR_DS_DATABASE_ERROR = 8409;

// The attribute GOVERNSID is missing.
pub const ERROR_DS_GOVERNSID_MISSING = 8410;

// An expected attribute is missing.
pub const ERROR_DS_MISSING_EXPECTED_ATT = 8411;

// The specified naming context is missing a cross reference.
pub const ERROR_DS_NCNAME_MISSING_CR_REF = 8412;

// A security checking error has occurred.
pub const ERROR_DS_SECURITY_CHECKING_ERROR = 8413;

// The schema is not loaded.
pub const ERROR_DS_SCHEMA_NOT_LOADED = 8414;

// Schema allocation failed. Please check if the machine is running low on memory.
pub const ERROR_DS_SCHEMA_ALLOC_FAILED = 8415;

// Failed to obtain the required syntax for the attribute schema.
pub const ERROR_DS_ATT_SCHEMA_REQ_SYNTAX = 8416;

// The global catalog verification failed. The global catalog is not available or does not support the operation. Some part of the directory is currently not available.
pub const ERROR_DS_GCVERIFY_ERROR = 8417;

// The replication operation failed because of a schema mismatch between the servers involved.
pub const ERROR_DS_DRA_SCHEMA_MISMATCH = 8418;

// The DSA object could not be found.
pub const ERROR_DS_CANT_FIND_DSA_OBJ = 8419;

// The naming context could not be found.
pub const ERROR_DS_CANT_FIND_EXPECTED_NC = 8420;

// The naming context could not be found in the cache.
pub const ERROR_DS_CANT_FIND_NC_IN_CACHE = 8421;

// The child object could not be retrieved.
pub const ERROR_DS_CANT_RETRIEVE_CHILD = 8422;

// The modification was not permitted for security reasons.
pub const ERROR_DS_SECURITY_ILLEGAL_MODIFY = 8423;

// The operation cannot replace the hidden record.
pub const ERROR_DS_CANT_REPLACE_HIDDEN_REC = 8424;

// The hierarchy file is invalid.
pub const ERROR_DS_BAD_HIERARCHY_FILE = 8425;

// The attempt to build the hierarchy table failed.
pub const ERROR_DS_BUILD_HIERARCHY_TABLE_FAILED = 8426;

// The directory configuration parameter is missing from the registry.
pub const ERROR_DS_CONFIG_PARAM_MISSING = 8427;

// The attempt to count the address book indices failed.
pub const ERROR_DS_COUNTING_AB_INDICES_FAILED = 8428;

// The allocation of the hierarchy table failed.
pub const ERROR_DS_HIERARCHY_TABLE_MALLOC_FAILED = 8429;

// The directory service encountered an internal failure.
pub const ERROR_DS_INTERNAL_FAILURE = 8430;

// The directory service encountered an unknown failure.
pub const ERROR_DS_UNKNOWN_ERROR = 8431;

// A root object requires a class of 'top'.
pub const ERROR_DS_ROOT_REQUIRES_CLASS_TOP = 8432;

// This directory server is shutting down, and cannot take ownership of new floating single-master operation roles.
pub const ERROR_DS_REFUSING_FSMO_ROLES = 8433;

// The directory service is missing mandatory configuration information, and is unable to determine the ownership of floating single-master operation roles.
pub const ERROR_DS_MISSING_FSMO_SETTINGS = 8434;

// The directory service was unable to transfer ownership of one or more floating single-master operation roles to other servers.
pub const ERROR_DS_UNABLE_TO_SURRENDER_ROLES = 8435;

// The replication operation failed.
pub const ERROR_DS_DRA_GENERIC = 8436;

// An invalid parameter was specified for this replication operation.
pub const ERROR_DS_DRA_INVALID_PARAMETER = 8437;

// The directory service is too busy to complete the replication operation at this time.
pub const ERROR_DS_DRA_BUSY = 8438;

// The distinguished name specified for this replication operation is invalid.
pub const ERROR_DS_DRA_BAD_DN = 8439;

// The naming context specified for this replication operation is invalid.
pub const ERROR_DS_DRA_BAD_NC = 8440;

// The distinguished name specified for this replication operation already exists.
pub const ERROR_DS_DRA_DN_EXISTS = 8441;

// The replication system encountered an internal error.
pub const ERROR_DS_DRA_INTERNAL_ERROR = 8442;

// The replication operation encountered a database inconsistency.
pub const ERROR_DS_DRA_INCONSISTENT_DIT = 8443;

// The server specified for this replication operation could not be contacted.
pub const ERROR_DS_DRA_CONNECTION_FAILED = 8444;

// The replication operation encountered an object with an invalid instance type.
pub const ERROR_DS_DRA_BAD_INSTANCE_TYPE = 8445;

// The replication operation failed to allocate memory.
pub const ERROR_DS_DRA_OUT_OF_MEM = 8446;

// The replication operation encountered an error with the mail system.
pub const ERROR_DS_DRA_MAIL_PROBLEM = 8447;

// The replication reference information for the target server already exists.
pub const ERROR_DS_DRA_REF_ALREADY_EXISTS = 8448;

// The replication reference information for the target server does not exist.
pub const ERROR_DS_DRA_REF_NOT_FOUND = 8449;

// The naming context cannot be removed because it is replicated to another server.
pub const ERROR_DS_DRA_OBJ_IS_REP_SOURCE = 8450;

// The replication operation encountered a database error.
pub const ERROR_DS_DRA_DB_ERROR = 8451;

// The naming context is in the process of being removed or is not replicated from the specified server.
pub const ERROR_DS_DRA_NO_REPLICA = 8452;

// Replication access was denied.
pub const ERROR_DS_DRA_ACCESS_DENIED = 8453;

// The requested operation is not supported by this version of the directory service.
pub const ERROR_DS_DRA_NOT_SUPPORTED = 8454;

// The replication remote procedure call was cancelled.
pub const ERROR_DS_DRA_RPC_CANCELLED = 8455;

// The source server is currently rejecting replication requests.
pub const ERROR_DS_DRA_SOURCE_DISABLED = 8456;

// The destination server is currently rejecting replication requests.
pub const ERROR_DS_DRA_SINK_DISABLED = 8457;

// The replication operation failed due to a collision of object names.
pub const ERROR_DS_DRA_NAME_COLLISION = 8458;

// The replication source has been reinstalled.
pub const ERROR_DS_DRA_SOURCE_REINSTALLED = 8459;

// The replication operation failed because a required parent object is missing.
pub const ERROR_DS_DRA_MISSING_PARENT = 8460;

// The replication operation was preempted.
pub const ERROR_DS_DRA_PREEMPTED = 8461;

// The replication synchronization attempt was abandoned because of a lack of updates.
pub const ERROR_DS_DRA_ABANDON_SYNC = 8462;

// The replication operation was terminated because the system is shutting down.
pub const ERROR_DS_DRA_SHUTDOWN = 8463;

// Synchronization attempt failed because the destination DC is currently waiting to synchronize new partial attributes from source. This condition is normal if a recent schema change modified the partial attribute set. The destination partial attribute set is not a subset of source partial attribute set.
pub const ERROR_DS_DRA_INCOMPATIBLE_PARTIAL_SET = 8464;

// The replication synchronization attempt failed because a master replica attempted to sync from a partial replica.
pub const ERROR_DS_DRA_SOURCE_IS_PARTIAL_REPLICA = 8465;

// The server specified for this replication operation was contacted, but that server was unable to contact an additional server needed to complete the operation.
pub const ERROR_DS_DRA_EXTN_CONNECTION_FAILED = 8466;

// The version of the directory service schema of the source forest is not compatible with the version of directory service on this computer.
pub const ERROR_DS_INSTALL_SCHEMA_MISMATCH = 8467;

// Schema update failed: An attribute with the same link identifier already exists.
pub const ERROR_DS_DUP_LINK_ID = 8468;

// Name translation: Generic processing error.
pub const ERROR_DS_NAME_ERROR_RESOLVING = 8469;

// Name translation: Could not find the name or insufficient right to see name.
pub const ERROR_DS_NAME_ERROR_NOT_FOUND = 8470;

// Name translation: Input name mapped to more than one output name.
pub const ERROR_DS_NAME_ERROR_NOT_UNIQUE = 8471;

// Name translation: Input name found, but not the associated output format.
pub const ERROR_DS_NAME_ERROR_NO_MAPPING = 8472;

// Name translation: Unable to resolve completely, only the domain was found.
pub const ERROR_DS_NAME_ERROR_DOMAIN_ONLY = 8473;

// Name translation: Unable to perform purely syntactical mapping at the client without going out to the wire.
pub const ERROR_DS_NAME_ERROR_NO_SYNTACTICAL_MAPPING = 8474;

// Modification of a constructed attribute is not allowed.
pub const ERROR_DS_CONSTRUCTED_ATT_MOD = 8475;

// The OM-Object-Class specified is incorrect for an attribute with the specified syntax.
pub const ERROR_DS_WRONG_OM_OBJ_CLASS = 8476;

// The replication request has been posted; waiting for reply.
pub const ERROR_DS_DRA_REPL_PENDING = 8477;

// The requested operation requires a directory service, and none was available.
pub const ERROR_DS_DS_REQUIRED = 8478;

// The LDAP display name of the class or attribute contains non-ASCII characters.
pub const ERROR_DS_INVALID_LDAP_DISPLAY_NAME = 8479;

// The requested search operation is only supported for base searches.
pub const ERROR_DS_NON_BASE_SEARCH = 8480;

// The search failed to retrieve attributes from the database.
pub const ERROR_DS_CANT_RETRIEVE_ATTS = 8481;

// The schema update operation tried to add a backward link attribute that has no corresponding forward link.
pub const ERROR_DS_BACKLINK_WITHOUT_LINK = 8482;

// Source and destination of a cross-domain move do not agree on the object's epoch number. Either source or destination does not have the latest version of the object.
pub const ERROR_DS_EPOCH_MISMATCH = 8483;

// Source and destination of a cross-domain move do not agree on the object's current name. Either source or destination does not have the latest version of the object.
pub const ERROR_DS_SRC_NAME_MISMATCH = 8484;

// Source and destination for the cross-domain move operation are identical. Caller should use local move operation instead of cross-domain move operation.
pub const ERROR_DS_SRC_AND_DST_NC_IDENTICAL = 8485;

// Source and destination for a cross-domain move are not in agreement on the naming contexts in the forest. Either source or destination does not have the latest version of the Partitions container.
pub const ERROR_DS_DST_NC_MISMATCH = 8486;

// Destination of a cross-domain move is not authoritative for the destination naming context.
pub const ERROR_DS_NOT_AUTHORITIVE_FOR_DST_NC = 8487;

// Source and destination of a cross-domain move do not agree on the identity of the source object. Either source or destination does not have the latest version of the source object.
pub const ERROR_DS_SRC_GUID_MISMATCH = 8488;

// Object being moved across-domains is already known to be deleted by the destination server. The source server does not have the latest version of the source object.
pub const ERROR_DS_CANT_MOVE_DELETED_OBJECT = 8489;

// Another operation which requires exclusive access to the PDC FSMO is already in progress.
pub const ERROR_DS_PDC_OPERATION_IN_PROGRESS = 8490;

// A cross-domain move operation failed such that two versions of the moved object exist - one each in the source and destination domains. The destination object needs to be removed to restore the system to a consistent state.
pub const ERROR_DS_CROSS_DOMAIN_CLEANUP_REQD = 8491;

// This object may not be moved across domain boundaries either because cross-domain moves for this class are disallowed, or the object has some special characteristics, e.g.: trust account or restricted RID, which prevent its move.
pub const ERROR_DS_ILLEGAL_XDOM_MOVE_OPERATION = 8492;

// Can't move objects with memberships across domain boundaries as once moved, this would violate the membership conditions of the account group. Remove the object from any account group memberships and retry.
pub const ERROR_DS_CANT_WITH_ACCT_GROUP_MEMBERSHPS = 8493;

// A naming context head must be the immediate child of another naming context head, not of an interior node.
pub const ERROR_DS_NC_MUST_HAVE_NC_PARENT = 8494;

// The directory cannot validate the proposed naming context name because it does not hold a replica of the naming context above the proposed naming context. Please ensure that the domain naming master role is held by a server that is configured as a global catalog server, and that the server is up to date with its replication partners. (Applies only to Windows 2000 Domain Naming masters)
pub const ERROR_DS_CR_IMPOSSIBLE_TO_VALIDATE = 8495;

// Destination domain must be in native mode.
pub const ERROR_DS_DST_DOMAIN_NOT_NATIVE = 8496;

// The operation cannot be performed because the server does not have an infrastructure container in the domain of interest.
pub const ERROR_DS_MISSING_INFRASTRUCTURE_CONTAINER = 8497;

// Cross-domain move of non-empty account groups is not allowed.
pub const ERROR_DS_CANT_MOVE_ACCOUNT_GROUP = 8498;

// Cross-domain move of non-empty resource groups is not allowed.
pub const ERROR_DS_CANT_MOVE_RESOURCE_GROUP = 8499;

// The search flags for the attribute are invalid. The ANR bit is valid only on attributes of Unicode or Teletex strings.
pub const ERROR_DS_INVALID_SEARCH_FLAG = 8500;

// Tree deletions starting at an object which has an NC head as a descendant are not allowed.
pub const ERROR_DS_NO_TREE_DELETE_ABOVE_NC = 8501;

// The directory service failed to lock a tree in preparation for a tree deletion because the tree was in use.
pub const ERROR_DS_COULDNT_LOCK_TREE_FOR_DELETE = 8502;

// The directory service failed to identify the list of objects to delete while attempting a tree deletion.
pub const ERROR_DS_COULDNT_IDENTIFY_OBJECTS_FOR_TREE_DELETE = 8503;

// Error Status: 0x%2. Please shutdown this system and reboot into Directory Services Restore Mode, check the event log for more detailed information.
pub const ERROR_DS_SAM_INIT_FAILURE = 8504;

// Only an administrator can modify the membership list of an administrative group.
pub const ERROR_DS_SENSITIVE_GROUP_VIOLATION = 8505;

// Cannot change the primary group ID of a domain controller account.
pub const ERROR_DS_CANT_MOD_PRIMARYGROUPID = 8506;

// An attempt is made to modify the base schema.
pub const ERROR_DS_ILLEGAL_BASE_SCHEMA_MOD = 8507;

// Adding a new mandatory attribute to an existing class, deleting a mandatory attribute from an existing class, or adding an optional attribute to the special class Top that is not a backlink attribute (directly or through inheritance, for example, by adding or deleting an auxiliary class) is not allowed.
pub const ERROR_DS_NONSAFE_SCHEMA_CHANGE = 8508;

// Schema update is not allowed on this DC because the DC is not the schema FSMO Role Owner.
pub const ERROR_DS_SCHEMA_UPDATE_DISALLOWED = 8509;

// An object of this class cannot be created under the schema container. You can only create attribute-schema and class-schema objects under the schema container.
pub const ERROR_DS_CANT_CREATE_UNDER_SCHEMA = 8510;

// The replica/child install failed to get the objectVersion attribute on the schema container on the source DC. Either the attribute is missing on the schema container or the credentials supplied do not have permission to read it.
pub const ERROR_DS_INSTALL_NO_SRC_SCH_VERSION = 8511;

// The replica/child install failed to read the objectVersion attribute in the SCHEMA section of the file schema.ini in the system32 directory.
pub const ERROR_DS_INSTALL_NO_SCH_VERSION_IN_INIFILE = 8512;

// The specified group type is invalid.
pub const ERROR_DS_INVALID_GROUP_TYPE = 8513;

// You cannot nest global groups in a mixed domain if the group is security-enabled.
pub const ERROR_DS_NO_NEST_GLOBALGROUP_IN_MIXEDDOMAIN = 8514;

// You cannot nest local groups in a mixed domain if the group is security-enabled.
pub const ERROR_DS_NO_NEST_LOCALGROUP_IN_MIXEDDOMAIN = 8515;

// A global group cannot have a local group as a member.
pub const ERROR_DS_GLOBAL_CANT_HAVE_LOCAL_MEMBER = 8516;

// A global group cannot have a universal group as a member.
pub const ERROR_DS_GLOBAL_CANT_HAVE_UNIVERSAL_MEMBER = 8517;

// A universal group cannot have a local group as a member.
pub const ERROR_DS_UNIVERSAL_CANT_HAVE_LOCAL_MEMBER = 8518;

// A global group cannot have a cross-domain member.
pub const ERROR_DS_GLOBAL_CANT_HAVE_CROSSDOMAIN_MEMBER = 8519;

// A local group cannot have another cross domain local group as a member.
pub const ERROR_DS_LOCAL_CANT_HAVE_CROSSDOMAIN_LOCAL_MEMBER = 8520;

// A group with primary members cannot change to a security-disabled group.
pub const ERROR_DS_HAVE_PRIMARY_MEMBERS = 8521;

// The schema cache load failed to convert the string default SD on a class-schema object.
pub const ERROR_DS_STRING_SD_CONVERSION_FAILED = 8522;

// Only DSAs configured to be Global Catalog servers should be allowed to hold the Domain Naming Master FSMO role. (Applies only to Windows 2000 servers)
pub const ERROR_DS_NAMING_MASTER_GC = 8523;

// The DSA operation is unable to proceed because of a DNS lookup failure.
pub const ERROR_DS_DNS_LOOKUP_FAILURE = 8524;

// While processing a change to the DNS Host Name for an object, the Service Principal Name values could not be kept in sync.
pub const ERROR_DS_COULDNT_UPDATE_SPNS = 8525;

// The Security Descriptor attribute could not be read.
pub const ERROR_DS_CANT_RETRIEVE_SD = 8526;

// The object requested was not found, but an object with that key was found.
pub const ERROR_DS_KEY_NOT_UNIQUE = 8527;

// The syntax of the linked attribute being added is incorrect. Forward links can only have syntax 2.5.5.1, 2.5.5.7, and 2.5.5.14, and backlinks can only have syntax 2.5.5.1
pub const ERROR_DS_WRONG_LINKED_ATT_SYNTAX = 8528;

// Security Account Manager needs to get the boot password.
pub const ERROR_DS_SAM_NEED_BOOTKEY_PASSWORD = 8529;

// Security Account Manager needs to get the boot key from floppy disk.
pub const ERROR_DS_SAM_NEED_BOOTKEY_FLOPPY = 8530;

// Directory Service cannot start.
pub const ERROR_DS_CANT_START = 8531;

// Directory Services could not start.
pub const ERROR_DS_INIT_FAILURE = 8532;

// The connection between client and server requires packet privacy or better.
pub const ERROR_DS_NO_PKT_PRIVACY_ON_CONNECTION = 8533;

// The source domain may not be in the same forest as destination.
pub const ERROR_DS_SOURCE_DOMAIN_IN_FOREST = 8534;

// The destination domain must be in the forest.
pub const ERROR_DS_DESTINATION_DOMAIN_NOT_IN_FOREST = 8535;

// The operation requires that destination domain auditing be enabled.
pub const ERROR_DS_DESTINATION_AUDITING_NOT_ENABLED = 8536;

// The operation couldn't locate a DC for the source domain.
pub const ERROR_DS_CANT_FIND_DC_FOR_SRC_DOMAIN = 8537;

// The source object must be a group or user.
pub const ERROR_DS_SRC_OBJ_NOT_GROUP_OR_USER = 8538;

// The source object's SID already exists in destination forest.
pub const ERROR_DS_SRC_SID_EXISTS_IN_FOREST = 8539;

// The source and destination object must be of the same type.
pub const ERROR_DS_SRC_AND_DST_OBJECT_CLASS_MISMATCH = 8540;

// Error Status: 0x%2. Click OK to shut down the system and reboot into Safe Mode. Check the event log for detailed information.
pub const ERROR_SAM_INIT_FAILURE = 8541;

// Schema information could not be included in the replication request.
pub const ERROR_DS_DRA_SCHEMA_INFO_SHIP = 8542;

// The replication operation could not be completed due to a schema incompatibility.
pub const ERROR_DS_DRA_SCHEMA_CONFLICT = 8543;

// The replication operation could not be completed due to a previous schema incompatibility.
pub const ERROR_DS_DRA_EARLIER_SCHEMA_CONFLICT = 8544;

// The replication update could not be applied because either the source or the destination has not yet received information regarding a recent cross-domain move operation.
pub const ERROR_DS_DRA_OBJ_NC_MISMATCH = 8545;

// The requested domain could not be deleted because there exist domain controllers that still host this domain.
pub const ERROR_DS_NC_STILL_HAS_DSAS = 8546;

// The requested operation can be performed only on a global catalog server.
pub const ERROR_DS_GC_REQUIRED = 8547;

// A local group can only be a member of other local groups in the same domain.
pub const ERROR_DS_LOCAL_MEMBER_OF_LOCAL_ONLY = 8548;

// Foreign security principals cannot be members of universal groups.
pub const ERROR_DS_NO_FPO_IN_UNIVERSAL_GROUPS = 8549;

// The attribute is not allowed to be replicated to the GC because of security reasons.
pub const ERROR_DS_CANT_ADD_TO_GC = 8550;

// The checkpoint with the PDC could not be taken because there too many modifications being processed currently.
pub const ERROR_DS_NO_CHECKPOINT_WITH_PDC = 8551;

// The operation requires that source domain auditing be enabled.
pub const ERROR_DS_SOURCE_AUDITING_NOT_ENABLED = 8552;

// Security principal objects can only be created inside domain naming contexts.
pub const ERROR_DS_CANT_CREATE_IN_NONDOMAIN_NC = 8553;

// A Service Principal Name (SPN) could not be constructed because the provided hostname is not in the necessary format.
pub const ERROR_DS_INVALID_NAME_FOR_SPN = 8554;

// A Filter was passed that uses constructed attributes.
pub const ERROR_DS_FILTER_USES_CONTRUCTED_ATTRS = 8555;

// The unicodePwd attribute value must be enclosed in double quotes.
pub const ERROR_DS_UNICODEPWD_NOT_IN_QUOTES = 8556;

// Your computer could not be joined to the domain. You have exceeded the maximum number of computer accounts you are allowed to create in this domain. Contact your system administrator to have this limit reset or increased.
pub const ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED = 8557;

// For security reasons, the operation must be run on the destination DC.
pub const ERROR_DS_MUST_BE_RUN_ON_DST_DC = 8558;

// For security reasons, the source DC must be NT4SP4 or greater.
pub const ERROR_DS_SRC_DC_MUST_BE_SP4_OR_GREATER = 8559;

// Critical Directory Service System objects cannot be deleted during tree delete operations. The tree delete may have been partially performed.
pub const ERROR_DS_CANT_TREE_DELETE_CRITICAL_OBJ = 8560;

// Error Status: 0x%2. Please click OK to shutdown the system. You can use the recovery console to diagnose the system further.
pub const ERROR_DS_INIT_FAILURE_CONSOLE = 8561;

// Error Status: 0x%2. Please click OK to shutdown the system. You can use the recovery console to diagnose the system further.
pub const ERROR_DS_SAM_INIT_FAILURE_CONSOLE = 8562;

// The version of the operating system is incompatible with the current AD DS forest functional level or AD LDS Configuration Set functional level. You must upgrade to a new version of the operating system before this server can become an AD DS Domain Controller or add an AD LDS Instance in this AD DS Forest or AD LDS Configuration Set.
pub const ERROR_DS_FOREST_VERSION_TOO_HIGH = 8563;

// The version of the operating system installed is incompatible with the current domain functional level. You must upgrade to a new version of the operating system before this server can become a domain controller in this domain.
pub const ERROR_DS_DOMAIN_VERSION_TOO_HIGH = 8564;

// The version of the operating system installed on this server no longer supports the current AD DS Forest functional level or AD LDS Configuration Set functional level. You must raise the AD DS Forest functional level or AD LDS Configuration Set functional level before this server can become an AD DS Domain Controller or an AD LDS Instance in this Forest or Configuration Set.
pub const ERROR_DS_FOREST_VERSION_TOO_LOW = 8565;

// The version of the operating system installed on this server no longer supports the current domain functional level. You must raise the domain functional level before this server can become a domain controller in this domain.
pub const ERROR_DS_DOMAIN_VERSION_TOO_LOW = 8566;

// The version of the operating system installed on this server is incompatible with the functional level of the domain or forest.
pub const ERROR_DS_INCOMPATIBLE_VERSION = 8567;

// The functional level of the domain (or forest) cannot be raised to the requested value, because there exist one or more domain controllers in the domain (or forest) that are at a lower incompatible functional level.
pub const ERROR_DS_LOW_DSA_VERSION = 8568;

// The forest functional level cannot be raised to the requested value since one or more domains are still in mixed domain mode. All domains in the forest must be in native mode, for you to raise the forest functional level.
pub const ERROR_DS_NO_BEHAVIOR_VERSION_IN_MIXEDDOMAIN = 8569;

// The sort order requested is not supported.
pub const ERROR_DS_NOT_SUPPORTED_SORT_ORDER = 8570;

// The requested name already exists as a unique identifier.
pub const ERROR_DS_NAME_NOT_UNIQUE = 8571;

// The machine account was created pre-NT4. The account needs to be recreated.
pub const ERROR_DS_MACHINE_ACCOUNT_CREATED_PRENT4 = 8572;

// The database is out of version store.
pub const ERROR_DS_OUT_OF_VERSION_STORE = 8573;

// Unable to continue operation because multiple conflicting controls were used.
pub const ERROR_DS_INCOMPATIBLE_CONTROLS_USED = 8574;

// Unable to find a valid security descriptor reference domain for this partition.
pub const ERROR_DS_NO_REF_DOMAIN = 8575;

// Schema update failed: The link identifier is reserved.
pub const ERROR_DS_RESERVED_LINK_ID = 8576;

// Schema update failed: There are no link identifiers available.
pub const ERROR_DS_LINK_ID_NOT_AVAILABLE = 8577;

// An account group cannot have a universal group as a member.
pub const ERROR_DS_AG_CANT_HAVE_UNIVERSAL_MEMBER = 8578;

// Rename or move operations on naming context heads or read-only objects are not allowed.
pub const ERROR_DS_MODIFYDN_DISALLOWED_BY_INSTANCE_TYPE = 8579;

// Move operations on objects in the schema naming context are not allowed.
pub const ERROR_DS_NO_OBJECT_MOVE_IN_SCHEMA_NC = 8580;

// A system flag has been set on the object and does not allow the object to be moved or renamed.
pub const ERROR_DS_MODIFYDN_DISALLOWED_BY_FLAG = 8581;

// This object is not allowed to change its grandparent container. Moves are not forbidden on this object, but are restricted to sibling containers.
pub const ERROR_DS_MODIFYDN_WRONG_GRANDPARENT = 8582;

// Unable to resolve completely, a referral to another forest is generated.
pub const ERROR_DS_NAME_ERROR_TRUST_REFERRAL = 8583;

// The requested action is not supported on standard server.
pub const ERROR_NOT_SUPPORTED_ON_STANDARD_SERVER = 8584;

// Could not access a partition of the directory service located on a remote server. Make sure at least one server is running for the partition in question.
pub const ERROR_DS_CANT_ACCESS_REMOTE_PART_OF_AD = 8585;

// The directory cannot validate the proposed naming context (or partition) name because it does not hold a replica nor can it contact a replica of the naming context above the proposed naming context. Please ensure that the parent naming context is properly registered in DNS, and at least one replica of this naming context is reachable by the Domain Naming master.
pub const ERROR_DS_CR_IMPOSSIBLE_TO_VALIDATE_V2 = 8586;

// The thread limit for this request was exceeded.
pub const ERROR_DS_THREAD_LIMIT_EXCEEDED = 8587;

// The Global catalog server is not in the closest site.
pub const ERROR_DS_NOT_CLOSEST = 8588;

// The DS cannot derive a service principal name (SPN) with which to mutually authenticate the target server because the corresponding server object in the local DS database has no serverReference attribute.
pub const ERROR_DS_CANT_DERIVE_SPN_WITHOUT_SERVER_REF = 8589;

// The Directory Service failed to enter single user mode.
pub const ERROR_DS_SINGLE_USER_MODE_FAILED = 8590;

// The Directory Service cannot parse the script because of a syntax error.
pub const ERROR_DS_NTDSCRIPT_SYNTAX_ERROR = 8591;

// The Directory Service cannot process the script because of an error.
pub const ERROR_DS_NTDSCRIPT_PROCESS_ERROR = 8592;

// The directory service cannot perform the requested operation because the servers involved are of different replication epochs (which is usually related to a domain rename that is in progress).
pub const ERROR_DS_DIFFERENT_REPL_EPOCHS = 8593;

// The directory service binding must be renegotiated due to a change in the server extensions information.
pub const ERROR_DS_DRS_EXTENSIONS_CHANGED = 8594;

// Operation not allowed on a disabled cross ref.
pub const ERROR_DS_REPLICA_SET_CHANGE_NOT_ALLOWED_ON_DISABLED_CR = 8595;

// Schema update failed: No values for msDS-IntId are available.
pub const ERROR_DS_NO_MSDS_INTID = 8596;

// Schema update failed: Duplicate msDS-INtId. Retry the operation.
pub const ERROR_DS_DUP_MSDS_INTID = 8597;

// Schema deletion failed: attribute is used in rDNAttID.
pub const ERROR_DS_EXISTS_IN_RDNATTID = 8598;

// The directory service failed to authorize the request.
pub const ERROR_DS_AUTHORIZATION_FAILED = 8599;

// The Directory Service cannot process the script because it is invalid.
pub const ERROR_DS_INVALID_SCRIPT = 8600;

// The remote create cross reference operation failed on the Domain Naming Master FSMO. The operation's error is in the extended data.
pub const ERROR_DS_REMOTE_CROSSREF_OP_FAILED = 8601;

// A cross reference is in use locally with the same name.
pub const ERROR_DS_CROSS_REF_BUSY = 8602;

// The DS cannot derive a service principal name (SPN) with which to mutually authenticate the target server because the server's domain has been deleted from the forest.
pub const ERROR_DS_CANT_DERIVE_SPN_FOR_DELETED_DOMAIN = 8603;

// Writeable NCs prevent this DC from demoting.
pub const ERROR_DS_CANT_DEMOTE_WITH_WRITEABLE_NC = 8604;

// The requested object has a non-unique identifier and cannot be retrieved.
pub const ERROR_DS_DUPLICATE_ID_FOUND = 8605;

// Insufficient attributes were given to create an object. This object may not exist because it may have been deleted and already garbage collected.
pub const ERROR_DS_INSUFFICIENT_ATTR_TO_CREATE_OBJECT = 8606;

// The group cannot be converted due to attribute restrictions on the requested group type.
pub const ERROR_DS_GROUP_CONVERSION_ERROR = 8607;

// Cross-domain move of non-empty basic application groups is not allowed.
pub const ERROR_DS_CANT_MOVE_APP_BASIC_GROUP = 8608;

// Cross-domain move of non-empty query based application groups is not allowed.
pub const ERROR_DS_CANT_MOVE_APP_QUERY_GROUP = 8609;

// The FSMO role ownership could not be verified because its directory partition has not replicated successfully with at least one replication partner.
pub const ERROR_DS_ROLE_NOT_VERIFIED = 8610;

// The target container for a redirection of a well known object container cannot already be a special container.
pub const ERROR_DS_WKO_CONTAINER_CANNOT_BE_SPECIAL = 8611;

// The Directory Service cannot perform the requested operation because a domain rename operation is in progress.
pub const ERROR_DS_DOMAIN_RENAME_IN_PROGRESS = 8612;

// The directory service detected a child partition below the requested partition name. The partition hierarchy must be created in a top down method.
pub const ERROR_DS_EXISTING_AD_CHILD_NC = 8613;

// The directory service cannot replicate with this server because the time since the last replication with this server has exceeded the tombstone lifetime.
pub const ERROR_DS_REPL_LIFETIME_EXCEEDED = 8614;

// The requested operation is not allowed on an object under the system container.
pub const ERROR_DS_DISALLOWED_IN_SYSTEM_CONTAINER = 8615;

// The LDAP servers network send queue has filled up because the client is not processing the results of its requests fast enough. No more requests will be processed until the client catches up. If the client does not catch up then it will be disconnected.
pub const ERROR_DS_LDAP_SEND_QUEUE_FULL = 8616;

// The scheduled replication did not take place because the system was too busy to execute the request within the schedule window. The replication queue is overloaded. Consider reducing the number of partners or decreasing the scheduled replication frequency.
pub const ERROR_DS_DRA_OUT_SCHEDULE_WINDOW = 8617;

// At this time, it cannot be determined if the branch replication policy is available on the hub domain controller. Please retry at a later time to account for replication latencies.
pub const ERROR_DS_POLICY_NOT_KNOWN = 8618;

// The site settings object for the specified site does not exist.
pub const ERROR_NO_SITE_SETTINGS_OBJECT = 8619;

// The local account store does not contain secret material for the specified account.
pub const ERROR_NO_SECRETS = 8620;

// Could not find a writable domain controller in the domain.
pub const ERROR_NO_WRITABLE_DC_FOUND = 8621;

// The server object for the domain controller does not exist.
pub const ERROR_DS_NO_SERVER_OBJECT = 8622;

// The NTDS Settings object for the domain controller does not exist.
pub const ERROR_DS_NO_NTDSA_OBJECT = 8623;

// The requested search operation is not supported for ASQ searches.
pub const ERROR_DS_NON_ASQ_SEARCH = 8624;

// A required audit event could not be generated for the operation.
pub const ERROR_DS_AUDIT_FAILURE = 8625;

// The search flags for the attribute are invalid. The subtree index bit is valid only on single valued attributes.
pub const ERROR_DS_INVALID_SEARCH_FLAG_SUBTREE = 8626;

// The search flags for the attribute are invalid. The tuple index bit is valid only on attributes of Unicode strings.
pub const ERROR_DS_INVALID_SEARCH_FLAG_TUPLE = 8627;

// The address books are nested too deeply. Failed to build the hierarchy table.
pub const ERROR_DS_HIERARCHY_TABLE_TOO_DEEP = 8628;

// The specified up-to-date-ness vector is corrupt.
pub const ERROR_DS_DRA_CORRUPT_UTD_VECTOR = 8629;

// The request to replicate secrets is denied.
pub const ERROR_DS_DRA_SECRETS_DENIED = 8630;

// Schema update failed: The MAPI identifier is reserved.
pub const ERROR_DS_RESERVED_MAPI_ID = 8631;

// Schema update failed: There are no MAPI identifiers available.
pub const ERROR_DS_MAPI_ID_NOT_AVAILABLE = 8632;

// The replication operation failed because the required attributes of the local krbtgt object are missing.
pub const ERROR_DS_DRA_MISSING_KRBTGT_SECRET = 8633;

// The domain name of the trusted domain already exists in the forest.
pub const ERROR_DS_DOMAIN_NAME_EXISTS_IN_FOREST = 8634;

// The flat name of the trusted domain already exists in the forest.
pub const ERROR_DS_FLAT_NAME_EXISTS_IN_FOREST = 8635;

// The User Principal Name (UPN) is invalid.
pub const ERROR_INVALID_USER_PRINCIPAL_NAME = 8636;

// OID mapped groups cannot have members.
pub const ERROR_DS_OID_MAPPED_GROUP_CANT_HAVE_MEMBERS = 8637;

// The specified OID cannot be found.
pub const ERROR_DS_OID_NOT_FOUND = 8638;

// The replication operation failed because the target object referred by a link value is recycled.
pub const ERROR_DS_DRA_RECYCLED_TARGET = 8639;

// The redirect operation failed because the target object is in a NC different from the domain NC of the current domain controller.
pub const ERROR_DS_DISALLOWED_NC_REDIRECT = 8640;

// The functional level of the AD LDS configuration set cannot be lowered to the requested value.
pub const ERROR_DS_HIGH_ADLDS_FFL = 8641;

// The functional level of the domain (or forest) cannot be lowered to the requested value.
pub const ERROR_DS_HIGH_DSA_VERSION = 8642;

// The functional level of the AD LDS configuration set cannot be raised to the requested value, because there exist one or more ADLDS instances that are at a lower incompatible functional level.
pub const ERROR_DS_LOW_ADLDS_FFL = 8643;

// The domain join cannot be completed because the SID of the domain you attempted to join was identical to the SID of this machine. This is a symptom of an improperly cloned operating system install.  You should run sysprep on this machine in order to generate a new machine SID. Please see http://go.microsoft.com/fwlink/?LinkId=168895 for more information.
pub const ERROR_DOMAIN_SID_SAME_AS_LOCAL_WORKSTATION = 8644;

// The undelete operation failed because the Sam Account Name or Additional Sam Account Name of the object being undeleted conflicts with an existing live object.
pub const ERROR_DS_UNDELETE_SAM_VALIDATION_FAILED = 8645;

// The system is not authoritative for the specified account and therefore cannot complete the operation. Please retry the operation using the provider associated with this account. If this is an online provider please use the provider's online site.
pub const ERROR_INCORRECT_ACCOUNT_TYPE = 8646;

// The operation failed because SPN value provided for addition/modification is not unique forest-wide.
pub const ERROR_DS_SPN_VALUE_NOT_UNIQUE_IN_FOREST = 8647;

// The operation failed because UPN value provided for addition/modification is not unique forest-wide.
pub const ERROR_DS_UPN_VALUE_NOT_UNIQUE_IN_FOREST = 8648;

// The operation failed because the addition/modification referenced an inbound forest-wide trust that is not present.
pub const ERROR_DS_MISSING_FOREST_TRUST = 8649;

// The link value specified was not found, but a link value with that key was found.
pub const ERROR_DS_VALUE_KEY_NOT_UNIQUE = 8650;

//  DNS response codes.
pub const DNS_ERROR_RESPONSE_CODES_BASE = 9000;
pub const DNS_ERROR_MASK = 0x00002328;

// DNS server unable to interpret format.
pub const DNS_ERROR_RCODE_FORMAT_ERROR = 9001;

// DNS server failure.
pub const DNS_ERROR_RCODE_SERVER_FAILURE = 9002;

// DNS name does not exist.
pub const DNS_ERROR_RCODE_NAME_ERROR = 9003;

// DNS request not supported by name server.
pub const DNS_ERROR_RCODE_NOT_IMPLEMENTED = 9004;

// DNS operation refused.
pub const DNS_ERROR_RCODE_REFUSED = 9005;

// DNS name that ought not exist, does exist.
pub const DNS_ERROR_RCODE_YXDOMAIN = 9006;

// DNS RR set that ought not exist, does exist.
pub const DNS_ERROR_RCODE_YXRRSET = 9007;

// DNS RR set that ought to exist, does not exist.
pub const DNS_ERROR_RCODE_NXRRSET = 9008;

// DNS server not authoritative for zone.
pub const DNS_ERROR_RCODE_NOTAUTH = 9009;

// DNS name in update or prereq is not in zone.
pub const DNS_ERROR_RCODE_NOTZONE = 9010;

// DNS signature failed to verify.
pub const DNS_ERROR_RCODE_BADSIG = 9016;

// DNS bad key.
pub const DNS_ERROR_RCODE_BADKEY = 9017;

// DNS signature validity expired.
pub const DNS_ERROR_RCODE_BADTIME = 9018;
pub const DNS_ERROR_RCODE_LAST = D;

// DNSSEC errors
pub const DNS_ERROR_DNSSEC_BASE = 9100;

// Only the DNS server acting as the key master for the zone may perform this operation.
pub const DNS_ERROR_KEYMASTER_REQUIRED = 9101;

// This operation is not allowed on a zone that is signed or has signing keys.
pub const DNS_ERROR_NOT_ALLOWED_ON_SIGNED_ZONE = 9102;

// NSEC3 is not compatible with the RSA-SHA-1 algorithm. Choose a different algorithm or use NSEC.
pub const DNS_ERROR_NSEC3_INCOMPATIBLE_WITH_RSA_SHA1 = 9103;

// The zone does not have enough signing keys. There must be at least one key signing key (KSK) and at least one zone signing key (ZSK).
pub const DNS_ERROR_NOT_ENOUGH_SIGNING_KEY_DESCRIPTORS = 9104;

// The specified algorithm is not supported.
pub const DNS_ERROR_UNSUPPORTED_ALGORITHM = 9105;

// The specified key size is not supported.
pub const DNS_ERROR_INVALID_KEY_SIZE = 9106;

// One or more of the signing keys for a zone are not accessible to the DNS server. Zone signing will not be operational until this error is resolved.
pub const DNS_ERROR_SIGNING_KEY_NOT_ACCESSIBLE = 9107;

// The specified key storage provider does not support DPAPI++ data protection. Zone signing will not be operational until this error is resolved.
pub const DNS_ERROR_KSP_DOES_NOT_SUPPORT_PROTECTION = 9108;

// An unexpected DPAPI++ error was encountered. Zone signing will not be operational until this error is resolved.
pub const DNS_ERROR_UNEXPECTED_DATA_PROTECTION_ERROR = 9109;

// An unexpected crypto error was encountered. Zone signing may not be operational until this error is resolved.
pub const DNS_ERROR_UNEXPECTED_CNG_ERROR = 9110;

// The DNS server encountered a signing key with an unknown version. Zone signing will not be operational until this error is resolved.
pub const DNS_ERROR_UNKNOWN_SIGNING_PARAMETER_VERSION = 9111;

// The specified key service provider cannot be opened by the DNS server.
pub const DNS_ERROR_KSP_NOT_ACCESSIBLE = 9112;

// The DNS server cannot accept any more signing keys with the specified algorithm and KSK flag value for this zone.
pub const DNS_ERROR_TOO_MANY_SKDS = 9113;

// The specified rollover period is invalid.
pub const DNS_ERROR_INVALID_ROLLOVER_PERIOD = 9114;

// The specified initial rollover offset is invalid.
pub const DNS_ERROR_INVALID_INITIAL_ROLLOVER_OFFSET = 9115;

// The specified signing key is already in process of rolling over keys.
pub const DNS_ERROR_ROLLOVER_IN_PROGRESS = 9116;

// The specified signing key does not have a standby key to revoke.
pub const DNS_ERROR_STANDBY_KEY_NOT_PRESENT = 9117;

// This operation is not allowed on a zone signing key (ZSK).
pub const DNS_ERROR_NOT_ALLOWED_ON_ZSK = 9118;

// This operation is not allowed on an active signing key.
pub const DNS_ERROR_NOT_ALLOWED_ON_ACTIVE_SKD = 9119;

// The specified signing key is already queued for rollover.
pub const DNS_ERROR_ROLLOVER_ALREADY_QUEUED = 9120;

// This operation is not allowed on an unsigned zone.
pub const DNS_ERROR_NOT_ALLOWED_ON_UNSIGNED_ZONE = 9121;

// This operation could not be completed because the DNS server listed as the current key master for this zone is down or misconfigured. Resolve the problem on the current key master for this zone or use another DNS server to seize the key master role.
pub const DNS_ERROR_BAD_KEYMASTER = 9122;

// The specified signature validity period is invalid.
pub const DNS_ERROR_INVALID_SIGNATURE_VALIDITY_PERIOD = 9123;

// The specified NSEC3 iteration count is higher than allowed by the minimum key length used in the zone.
pub const DNS_ERROR_INVALID_NSEC3_ITERATION_COUNT = 9124;

// This operation could not be completed because the DNS server has been configured with DNSSEC features disabled. Enable DNSSEC on the DNS server.
pub const DNS_ERROR_DNSSEC_IS_DISABLED = 9125;

// This operation could not be completed because the XML stream received is empty or syntactically invalid.
pub const DNS_ERROR_INVALID_XML = 9126;

// This operation completed, but no trust anchors were added because all of the trust anchors received were either invalid, unsupported, expired, or would not become valid in less than 30 days.
pub const DNS_ERROR_NO_VALID_TRUST_ANCHORS = 9127;

// The specified signing key is not waiting for parental DS update.
pub const DNS_ERROR_ROLLOVER_NOT_POKEABLE = 9128;

// Hash collision detected during NSEC3 signing. Specify a different user-provided salt, or use a randomly generated salt, and attempt to sign the zone again.
pub const DNS_ERROR_NSEC3_NAME_COLLISION = 9129;

// NSEC is not compatible with the NSEC3-RSA-SHA-1 algorithm. Choose a different algorithm or use NSEC3.
pub const DNS_ERROR_NSEC_INCOMPATIBLE_WITH_NSEC3_RSA_SHA1 = 9130;

// Packet format
pub const DNS_ERROR_PACKET_FMT_BASE = 9500;

// No records found for given DNS query.
pub const DNS_INFO_NO_RECORDS = 9501;

// Bad DNS packet.
pub const DNS_ERROR_BAD_PACKET = 9502;

// No DNS packet.
pub const DNS_ERROR_NO_PACKET = 9503;

// DNS error, check rcode.
pub const DNS_ERROR_RCODE = 9504;

// Unsecured DNS packet.
pub const DNS_ERROR_UNSECURE_PACKET = 9505;
pub const DNS_STATUS_PACKET_UNSECURE = D;

// DNS query request is pending.
pub const DNS_REQUEST_PENDING = 9506;

// General API errors
pub const DNS_ERROR_NO_MEMORY = E;
pub const DNS_ERROR_INVALID_NAME = E;
pub const DNS_ERROR_INVALID_DATA = E;
pub const DNS_ERROR_GENERAL_API_BASE = 9550;

// Invalid DNS type.
pub const DNS_ERROR_INVALID_TYPE = 9551;

// Invalid IP address.
pub const DNS_ERROR_INVALID_IP_ADDRESS = 9552;

// Invalid property.
pub const DNS_ERROR_INVALID_PROPERTY = 9553;

// Try DNS operation again later.
pub const DNS_ERROR_TRY_AGAIN_LATER = 9554;

// Record for given name and type is not unique.
pub const DNS_ERROR_NOT_UNIQUE = 9555;

// DNS name does not comply with RFC specifications.
pub const DNS_ERROR_NON_RFC_NAME = 9556;

// DNS name is a fully-qualified DNS name.
pub const DNS_STATUS_FQDN = 9557;

// DNS name is dotted (multi-label).
pub const DNS_STATUS_DOTTED_NAME = 9558;

// DNS name is a single-part name.
pub const DNS_STATUS_SINGLE_PART_NAME = 9559;

// DNS name contains an invalid character.
pub const DNS_ERROR_INVALID_NAME_CHAR = 9560;

// DNS name is entirely numeric.
pub const DNS_ERROR_NUMERIC_NAME = 9561;

// The operation requested is not permitted on a DNS root server.
pub const DNS_ERROR_NOT_ALLOWED_ON_ROOT_SERVER = 9562;

// The record could not be created because this part of the DNS namespace has been delegated to another server.
pub const DNS_ERROR_NOT_ALLOWED_UNDER_DELEGATION = 9563;

// The DNS server could not find a set of root hints.
pub const DNS_ERROR_CANNOT_FIND_ROOT_HINTS = 9564;

// The DNS server found root hints but they were not consistent across all adapters.
pub const DNS_ERROR_INCONSISTENT_ROOT_HINTS = 9565;

// The specified value is too small for this parameter.
pub const DNS_ERROR_DWORD_VALUE_TOO_SMALL = 9566;

// The specified value is too large for this parameter.
pub const DNS_ERROR_DWORD_VALUE_TOO_LARGE = 9567;

// This operation is not allowed while the DNS server is loading zones in the background. Please try again later.
pub const DNS_ERROR_BACKGROUND_LOADING = 9568;

// The operation requested is not permitted on against a DNS server running on a read-only DC.
pub const DNS_ERROR_NOT_ALLOWED_ON_RODC = 9569;

// No data is allowed to exist underneath a DNAME record.
pub const DNS_ERROR_NOT_ALLOWED_UNDER_DNAME = 9570;

// This operation requires credentials delegation.
pub const DNS_ERROR_DELEGATION_REQUIRED = 9571;

// Name resolution policy table has been corrupted. DNS resolution will fail until it is fixed. Contact your network administrator.
pub const DNS_ERROR_INVALID_POLICY_TABLE = 9572;

// Not allowed to remove all addresses.
pub const DNS_ERROR_ADDRESS_REQUIRED = 9573;

// Zone errors
pub const DNS_ERROR_ZONE_BASE = 9600;

// DNS zone does not exist.
pub const DNS_ERROR_ZONE_DOES_NOT_EXIST = 9601;

// DNS zone information not available.
pub const DNS_ERROR_NO_ZONE_INFO = 9602;

// Invalid operation for DNS zone.
pub const DNS_ERROR_INVALID_ZONE_OPERATION = 9603;

// Invalid DNS zone configuration.
pub const DNS_ERROR_ZONE_CONFIGURATION_ERROR = 9604;

// DNS zone has no start of authority (SOA) record.
pub const DNS_ERROR_ZONE_HAS_NO_SOA_RECORD = 9605;

// DNS zone has no Name Server (NS) record.
pub const DNS_ERROR_ZONE_HAS_NO_NS_RECORDS = 9606;

// DNS zone is locked.
pub const DNS_ERROR_ZONE_LOCKED = 9607;

// DNS zone creation failed.
pub const DNS_ERROR_ZONE_CREATION_FAILED = 9608;

// DNS zone already exists.
pub const DNS_ERROR_ZONE_ALREADY_EXISTS = 9609;

// DNS automatic zone already exists.
pub const DNS_ERROR_AUTOZONE_ALREADY_EXISTS = 9610;

// Invalid DNS zone type.
pub const DNS_ERROR_INVALID_ZONE_TYPE = 9611;

// Secondary DNS zone requires master IP address.
pub const DNS_ERROR_SECONDARY_REQUIRES_MASTER_IP = 9612;

// DNS zone not secondary.
pub const DNS_ERROR_ZONE_NOT_SECONDARY = 9613;

// Need secondary IP address.
pub const DNS_ERROR_NEED_SECONDARY_ADDRESSES = 9614;

// WINS initialization failed.
pub const DNS_ERROR_WINS_INIT_FAILED = 9615;

// Need WINS servers.
pub const DNS_ERROR_NEED_WINS_SERVERS = 9616;

// NBTSTAT initialization call failed.
pub const DNS_ERROR_NBSTAT_INIT_FAILED = 9617;

// Invalid delete of start of authority (SOA)
pub const DNS_ERROR_SOA_DELETE_INVALID = 9618;

// A conditional forwarding zone already exists for that name.
pub const DNS_ERROR_FORWARDER_ALREADY_EXISTS = 9619;

// This zone must be configured with one or more master DNS server IP addresses.
pub const DNS_ERROR_ZONE_REQUIRES_MASTER_IP = 9620;

// The operation cannot be performed because this zone is shut down.
pub const DNS_ERROR_ZONE_IS_SHUTDOWN = 9621;

// This operation cannot be performed because the zone is currently being signed. Please try again later.
pub const DNS_ERROR_ZONE_LOCKED_FOR_SIGNING = 9622;

// Datafile errors
pub const DNS_ERROR_DATAFILE_BASE = 9650;

// Primary DNS zone requires datafile.
pub const DNS_ERROR_PRIMARY_REQUIRES_DATAFILE = 9651;

// Invalid datafile name for DNS zone.
pub const DNS_ERROR_INVALID_DATAFILE_NAME = 9652;

// Failed to open datafile for DNS zone.
pub const DNS_ERROR_DATAFILE_OPEN_FAILURE = 9653;

// Failed to write datafile for DNS zone.
pub const DNS_ERROR_FILE_WRITEBACK_FAILED = 9654;

// Failure while reading datafile for DNS zone.
pub const DNS_ERROR_DATAFILE_PARSING = 9655;

// Database errors
pub const DNS_ERROR_DATABASE_BASE = 9700;

// DNS record does not exist.
pub const DNS_ERROR_RECORD_DOES_NOT_EXIST = 9701;

// DNS record format error.
pub const DNS_ERROR_RECORD_FORMAT = 9702;

// Node creation failure in DNS.
pub const DNS_ERROR_NODE_CREATION_FAILED = 9703;

// Unknown DNS record type.
pub const DNS_ERROR_UNKNOWN_RECORD_TYPE = 9704;

// DNS record timed out.
pub const DNS_ERROR_RECORD_TIMED_OUT = 9705;

// Name not in DNS zone.
pub const DNS_ERROR_NAME_NOT_IN_ZONE = 9706;

// CNAME loop detected.
pub const DNS_ERROR_CNAME_LOOP = 9707;

// Node is a CNAME DNS record.
pub const DNS_ERROR_NODE_IS_CNAME = 9708;

// A CNAME record already exists for given name.
pub const DNS_ERROR_CNAME_COLLISION = 9709;

// Record only at DNS zone root.
pub const DNS_ERROR_RECORD_ONLY_AT_ZONE_ROOT = 9710;

// DNS record already exists.
pub const DNS_ERROR_RECORD_ALREADY_EXISTS = 9711;

// Secondary DNS zone data error.
pub const DNS_ERROR_SECONDARY_DATA = 9712;

// Could not create DNS cache data.
pub const DNS_ERROR_NO_CREATE_CACHE_DATA = 9713;

// DNS name does not exist.
pub const DNS_ERROR_NAME_DOES_NOT_EXIST = 9714;

// Could not create pointer (PTR) record.
pub const DNS_WARNING_PTR_CREATE_FAILED = 9715;

// DNS domain was undeleted.
pub const DNS_WARNING_DOMAIN_UNDELETED = 9716;

// The directory service is unavailable.
pub const DNS_ERROR_DS_UNAVAILABLE = 9717;

// DNS zone already exists in the directory service.
pub const DNS_ERROR_DS_ZONE_ALREADY_EXISTS = 9718;

// DNS server not creating or reading the boot file for the directory service integrated DNS zone.
pub const DNS_ERROR_NO_BOOTFILE_IF_DS_ZONE = 9719;

// Node is a DNAME DNS record.
pub const DNS_ERROR_NODE_IS_DNAME = 9720;

// A DNAME record already exists for given name.
pub const DNS_ERROR_DNAME_COLLISION = 9721;

// An alias loop has been detected with either CNAME or DNAME records.
pub const DNS_ERROR_ALIAS_LOOP = 9722;

// Operation errors
pub const DNS_ERROR_OPERATION_BASE = 9750;

// DNS AXFR (zone transfer) complete.
pub const DNS_INFO_AXFR_COMPLETE = 9751;

// DNS zone transfer failed.
pub const DNS_ERROR_AXFR = 9752;

// Added local WINS server.
pub const DNS_INFO_ADDED_LOCAL_WINS = 9753;

// Secure update
pub const DNS_ERROR_SECURE_BASE = 9800;

// Secure update call needs to continue update request.
pub const DNS_STATUS_CONTINUE_NEEDED = 9801;

// Setup errors
pub const DNS_ERROR_SETUP_BASE = 9850;

// TCP/IP network protocol not installed.
pub const DNS_ERROR_NO_TCPIP = 9851;

// No DNS servers configured for local system.
pub const DNS_ERROR_NO_DNS_SERVERS = 9852;

// Directory partition (DP) errors
pub const DNS_ERROR_DP_BASE = 9900;

// The specified directory partition does not exist.
pub const DNS_ERROR_DP_DOES_NOT_EXIST = 9901;

// The specified directory partition already exists.
pub const DNS_ERROR_DP_ALREADY_EXISTS = 9902;

// This DNS server is not enlisted in the specified directory partition.
pub const DNS_ERROR_DP_NOT_ENLISTED = 9903;

// This DNS server is already enlisted in the specified directory partition.
pub const DNS_ERROR_DP_ALREADY_ENLISTED = 9904;

// The directory partition is not available at this time. Please wait a few minutes and try again.
pub const DNS_ERROR_DP_NOT_AVAILABLE = 9905;

// The operation failed because the domain naming master FSMO role could not be reached. The domain controller holding the domain naming master FSMO role is down or unable to service the request or is not running Windows Server 2003 or later.
pub const DNS_ERROR_DP_FSMO_ERROR = 9906;

// The RRL is not enabled.
pub const DNS_ERROR_RRL_NOT_ENABLED = 9911;

// The window size parameter is invalid. It should be greater than or equal to 1.
pub const DNS_ERROR_RRL_INVALID_WINDOW_SIZE = 9912;

// The IPv4 prefix length parameter is invalid. It should be less than or equal to 32.
pub const DNS_ERROR_RRL_INVALID_IPV4_PREFIX = 9913;

// The IPv6 prefix length parameter is invalid. It should be less than or equal to 128.
pub const DNS_ERROR_RRL_INVALID_IPV6_PREFIX = 9914;

// The TC Rate parameter is invalid. It should be less than 10.
pub const DNS_ERROR_RRL_INVALID_TC_RATE = 9915;

// The Leak Rate parameter is invalid. It should be either 0, or between 2 and 10.
pub const DNS_ERROR_RRL_INVALID_LEAK_RATE = 9916;

// The Leak Rate or TC Rate parameter is invalid. Leak Rate should be greater than TC Rate.
pub const DNS_ERROR_RRL_LEAK_RATE_LESSTHAN_TC_RATE = 9917;

// The virtualization instance already exists.
pub const DNS_ERROR_VIRTUALIZATION_INSTANCE_ALREADY_EXISTS = 9921;

// The virtualization instance does not exist.
pub const DNS_ERROR_VIRTUALIZATION_INSTANCE_DOES_NOT_EXIST = 9922;

// The virtualization tree is locked.
pub const DNS_ERROR_VIRTUALIZATION_TREE_LOCKED = 9923;

// Invalid virtualization instance name.
pub const DNS_ERROR_INVAILD_VIRTUALIZATION_INSTANCE_NAME = 9924;

// The default virtualization instance cannot be added, removed or modified.
pub const DNS_ERROR_DEFAULT_VIRTUALIZATION_INSTANCE = 9925;

// The scope already exists for the zone.
pub const DNS_ERROR_ZONESCOPE_ALREADY_EXISTS = 9951;

// The scope does not exist for the zone.
pub const DNS_ERROR_ZONESCOPE_DOES_NOT_EXIST = 9952;

// The scope is the same as the default zone scope.
pub const DNS_ERROR_DEFAULT_ZONESCOPE = 9953;

// The scope name contains invalid characters.
pub const DNS_ERROR_INVALID_ZONESCOPE_NAME = 9954;

// Operation not allowed when the zone has scopes.
pub const DNS_ERROR_NOT_ALLOWED_WITH_ZONESCOPES = 9955;

// Failed to load zone scope.
pub const DNS_ERROR_LOAD_ZONESCOPE_FAILED = 9956;

// Failed to write data file for DNS zone scope. Please verify the file exists and is writable.
pub const DNS_ERROR_ZONESCOPE_FILE_WRITEBACK_FAILED = 9957;

// The scope name contains invalid characters.
pub const DNS_ERROR_INVALID_SCOPE_NAME = 9958;

// The scope does not exist.
pub const DNS_ERROR_SCOPE_DOES_NOT_EXIST = 9959;

// The scope is the same as the default scope.
pub const DNS_ERROR_DEFAULT_SCOPE = 9960;

// The operation is invalid on the scope.
pub const DNS_ERROR_INVALID_SCOPE_OPERATION = 9961;

// The scope is locked.
pub const DNS_ERROR_SCOPE_LOCKED = 9962;

// The scope already exists.
pub const DNS_ERROR_SCOPE_ALREADY_EXISTS = 9963;

// A policy with the same name already exists on this level (server level or zone level) on the DNS server.
pub const DNS_ERROR_POLICY_ALREADY_EXISTS = 9971;

// No policy with this name exists on this level (server level or zone level) on the DNS server.
pub const DNS_ERROR_POLICY_DOES_NOT_EXIST = 9972;

// The criteria provided in the policy are invalid.
pub const DNS_ERROR_POLICY_INVALID_CRITERIA = 9973;

// At least one of the settings of this policy is invalid.
pub const DNS_ERROR_POLICY_INVALID_SETTINGS = 9974;

// The client subnet cannot be deleted while it is being accessed by a policy.
pub const DNS_ERROR_CLIENT_SUBNET_IS_ACCESSED = 9975;

// The client subnet does not exist on the DNS server.
pub const DNS_ERROR_CLIENT_SUBNET_DOES_NOT_EXIST = 9976;

// A client subnet with this name already exists on the DNS server.
pub const DNS_ERROR_CLIENT_SUBNET_ALREADY_EXISTS = 9977;

// The IP subnet specified does not exist in the client subnet.
pub const DNS_ERROR_SUBNET_DOES_NOT_EXIST = 9978;

// The IP subnet that is being added, already exists in the client subnet.
pub const DNS_ERROR_SUBNET_ALREADY_EXISTS = 9979;

// The policy is locked.
pub const DNS_ERROR_POLICY_LOCKED = 9980;

// The weight of the scope in the policy is invalid.
pub const DNS_ERROR_POLICY_INVALID_WEIGHT = 9981;

// The DNS policy name is invalid.
pub const DNS_ERROR_POLICY_INVALID_NAME = 9982;

// The policy is missing criteria.
pub const DNS_ERROR_POLICY_MISSING_CRITERIA = 9983;

// The name of the the client subnet record is invalid.
pub const DNS_ERROR_INVALID_CLIENT_SUBNET_NAME = 9984;

// Invalid policy processing order.
pub const DNS_ERROR_POLICY_PROCESSING_ORDER_INVALID = 9985;

// The scope information has not been provided for a policy that requires it.
pub const DNS_ERROR_POLICY_SCOPE_MISSING = 9986;

// The scope information has been provided for a policy that does not require it.
pub const DNS_ERROR_POLICY_SCOPE_NOT_ALLOWED = 9987;

// The server scope cannot be deleted because it is referenced by a DNS Policy.
pub const DNS_ERROR_SERVERSCOPE_IS_REFERENCED = 9988;

// The zone scope cannot be deleted because it is referenced by a DNS Policy.
pub const DNS_ERROR_ZONESCOPE_IS_REFERENCED = 9989;

// The criterion client subnet provided in the policy is invalid.
pub const DNS_ERROR_POLICY_INVALID_CRITERIA_CLIENT_SUBNET = 9990;

// The criterion transport protocol provided in the policy is invalid.
pub const DNS_ERROR_POLICY_INVALID_CRITERIA_TRANSPORT_PROTOCOL = 9991;

// The criterion network protocol provided in the policy is invalid.
pub const DNS_ERROR_POLICY_INVALID_CRITERIA_NETWORK_PROTOCOL = 9992;

// The criterion interface provided in the policy is invalid.
pub const DNS_ERROR_POLICY_INVALID_CRITERIA_INTERFACE = 9993;

// The criterion FQDN provided in the policy is invalid.
pub const DNS_ERROR_POLICY_INVALID_CRITERIA_FQDN = 9994;

// The criterion query type provided in the policy is invalid.
pub const DNS_ERROR_POLICY_INVALID_CRITERIA_QUERY_TYPE = 9995;

// The criterion time of day provided in the policy is invalid.
pub const DNS_ERROR_POLICY_INVALID_CRITERIA_TIME_OF_DAY = 9996;
pub const WSABASEERR = 10000;

// A blocking operation was interrupted by a call to WSACancelBlockingCall.
pub const WSAEINTR = 10004;

// The file handle supplied is not valid.
pub const WSAEBADF = 10009;

// An attempt was made to access a socket in a way forbidden by its access permissions.
pub const WSAEACCES = 10013;

// The system detected an invalid pointer address in attempting to use a pointer argument in a call.
pub const WSAEFAULT = 10014;

// An invalid argument was supplied.
pub const WSAEINVAL = 10022;

// Too many open sockets.
pub const WSAEMFILE = 10024;

// A non-blocking socket operation could not be completed immediately.
pub const WSAEWOULDBLOCK = 10035;

// A blocking operation is currently executing.
pub const WSAEINPROGRESS = 10036;

// An operation was attempted on a non-blocking socket that already had an operation in progress.
pub const WSAEALREADY = 10037;

// An operation was attempted on something that is not a socket.
pub const WSAENOTSOCK = 10038;

// A required address was omitted from an operation on a socket.
pub const WSAEDESTADDRREQ = 10039;

// A message sent on a datagram socket was larger than the internal message buffer or some other network limit, or the buffer used to receive a datagram into was smaller than the datagram itself.
pub const WSAEMSGSIZE = 10040;

// A protocol was specified in the socket function call that does not support the semantics of the socket type requested.
pub const WSAEPROTOTYPE = 10041;

// An unknown, invalid, or unsupported option or level was specified in a getsockopt or setsockopt call.
pub const WSAENOPROTOOPT = 10042;

// The requested protocol has not been configured into the system, or no implementation for it exists.
pub const WSAEPROTONOSUPPORT = 10043;

// The support for the specified socket type does not exist in this address family.
pub const WSAESOCKTNOSUPPORT = 10044;

// The attempted operation is not supported for the type of object referenced.
pub const WSAEOPNOTSUPP = 10045;

// The protocol family has not been configured into the system or no implementation for it exists.
pub const WSAEPFNOSUPPORT = 10046;

// An address incompatible with the requested protocol was used.
pub const WSAEAFNOSUPPORT = 10047;

// Only one usage of each socket address (protocol/network address/port) is normally permitted.
pub const WSAEADDRINUSE = 10048;

// The requested address is not valid in its context.
pub const WSAEADDRNOTAVAIL = 10049;

// A socket operation encountered a dead network.
pub const WSAENETDOWN = 10050;

// A socket operation was attempted to an unreachable network.
pub const WSAENETUNREACH = 10051;

// The connection has been broken due to keep-alive activity detecting a failure while the operation was in progress.
pub const WSAENETRESET = 10052;

// An established connection was aborted by the software in your host machine.
pub const WSAECONNABORTED = 10053;

// An existing connection was forcibly closed by the remote host.
pub const WSAECONNRESET = 10054;

// An operation on a socket could not be performed because the system lacked sufficient buffer space or because a queue was full.
pub const WSAENOBUFS = 10055;

// A connect request was made on an already connected socket.
pub const WSAEISCONN = 10056;

// A request to send or receive data was disallowed because the socket is not connected and (when sending on a datagram socket using a sendto call) no address was supplied.
pub const WSAENOTCONN = 10057;

// A request to send or receive data was disallowed because the socket had already been shut down in that direction with a previous shutdown call.
pub const WSAESHUTDOWN = 10058;

// Too many references to some kernel object.
pub const WSAETOOMANYREFS = 10059;

// A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond.
pub const WSAETIMEDOUT = 10060;

// No connection could be made because the target machine actively refused it.
pub const WSAECONNREFUSED = 10061;

// Cannot translate name.
pub const WSAELOOP = 10062;

// Name component or name was too long.
pub const WSAENAMETOOLONG = 10063;

// A socket operation failed because the destination host was down.
pub const WSAEHOSTDOWN = 10064;

// A socket operation was attempted to an unreachable host.
pub const WSAEHOSTUNREACH = 10065;

// Cannot remove a directory that is not empty.
pub const WSAENOTEMPTY = 10066;

// A Windows Sockets implementation may have a limit on the number of applications that may use it simultaneously.
pub const WSAEPROCLIM = 10067;

// Ran out of quota.
pub const WSAEUSERS = 10068;

// Ran out of disk quota.
pub const WSAEDQUOT = 10069;

// File handle reference is no longer available.
pub const WSAESTALE = 10070;

// Item is not available locally.
pub const WSAEREMOTE = 10071;

// WSAStartup cannot function at this time because the underlying system it uses to provide network services is currently unavailable.
pub const WSASYSNOTREADY = 10091;

// The Windows Sockets version requested is not supported.
pub const WSAVERNOTSUPPORTED = 10092;

// Either the application has not called WSAStartup, or WSAStartup failed.
pub const WSANOTINITIALISED = 10093;

// Returned by WSARecv or WSARecvFrom to indicate the remote party has initiated a graceful shutdown sequence.
pub const WSAEDISCON = 10101;

// No more results can be returned by WSALookupServiceNext.
pub const WSAENOMORE = 10102;

// A call to WSALookupServiceEnd was made while this call was still processing. The call has been canceled.
pub const WSAECANCELLED = 10103;

// The procedure call table is invalid.
pub const WSAEINVALIDPROCTABLE = 10104;

// The requested service provider is invalid.
pub const WSAEINVALIDPROVIDER = 10105;

// The requested service provider could not be loaded or initialized.
pub const WSAEPROVIDERFAILEDINIT = 10106;

// A system call has failed.
pub const WSASYSCALLFAILURE = 10107;

// No such service is known. The service cannot be found in the specified name space.
pub const WSASERVICE_NOT_FOUND = 10108;

// The specified class was not found.
pub const WSATYPE_NOT_FOUND = 10109;

// No more results can be returned by WSALookupServiceNext.
pub const WSA_E_NO_MORE = 10110;

// A call to WSALookupServiceEnd was made while this call was still processing. The call has been canceled.
pub const WSA_E_CANCELLED = 10111;

// A database query failed because it was actively refused.
pub const WSAEREFUSED = 10112;

// No such host is known.
pub const WSAHOST_NOT_FOUND = 11001;

// This is usually a temporary error during hostname resolution and means that the local server did not receive a response from an authoritative server.
pub const WSATRY_AGAIN = 11002;

// A non-recoverable error occurred during a database lookup.
pub const WSANO_RECOVERY = 11003;

// The requested name is valid, but no data of the requested type was found.
pub const WSANO_DATA = 11004;

// At least one reserve has arrived.
pub const WSA_QOS_RECEIVERS = 11005;

// At least one path has arrived.
pub const WSA_QOS_SENDERS = 11006;

// There are no senders.
pub const WSA_QOS_NO_SENDERS = 11007;

// There are no receivers.
pub const WSA_QOS_NO_RECEIVERS = 11008;

// Reserve has been confirmed.
pub const WSA_QOS_REQUEST_CONFIRMED = 11009;

// Error due to lack of resources.
pub const WSA_QOS_ADMISSION_FAILURE = 11010;

// Rejected for administrative reasons - bad credentials.
pub const WSA_QOS_POLICY_FAILURE = 11011;

// Unknown or conflicting style.
pub const WSA_QOS_BAD_STYLE = 11012;

// Problem with some part of the filterspec or providerspecific buffer in general.
pub const WSA_QOS_BAD_OBJECT = 11013;

// Problem with some part of the flowspec.
pub const WSA_QOS_TRAFFIC_CTRL_ERROR = 11014;

// General QOS error.
pub const WSA_QOS_GENERIC_ERROR = 11015;

// An invalid or unrecognized service type was found in the flowspec.
pub const WSA_QOS_ESERVICETYPE = 11016;

// An invalid or inconsistent flowspec was found in the QOS structure.
pub const WSA_QOS_EFLOWSPEC = 11017;

// Invalid QOS provider-specific buffer.
pub const WSA_QOS_EPROVSPECBUF = 11018;

// An invalid QOS filter style was used.
pub const WSA_QOS_EFILTERSTYLE = 11019;

// An invalid QOS filter type was used.
pub const WSA_QOS_EFILTERTYPE = 11020;

// An incorrect number of QOS FILTERSPECs were specified in the FLOWDESCRIPTOR.
pub const WSA_QOS_EFILTERCOUNT = 11021;

// An object with an invalid ObjectLength field was specified in the QOS provider-specific buffer.
pub const WSA_QOS_EOBJLENGTH = 11022;

// An incorrect number of flow descriptors was specified in the QOS structure.
pub const WSA_QOS_EFLOWCOUNT = 11023;

// An unrecognized object was found in the QOS provider-specific buffer.
pub const WSA_QOS_EUNKOWNPSOBJ = 11024;

// An invalid policy object was found in the QOS provider-specific buffer.
pub const WSA_QOS_EPOLICYOBJ = 11025;

// An invalid QOS flow descriptor was found in the flow descriptor list.
pub const WSA_QOS_EFLOWDESC = 11026;

// An invalid or inconsistent flowspec was found in the QOS provider specific buffer.
pub const WSA_QOS_EPSFLOWSPEC = 11027;

// An invalid FILTERSPEC was found in the QOS provider-specific buffer.
pub const WSA_QOS_EPSFILTERSPEC = 11028;

// An invalid shape discard mode object was found in the QOS provider specific buffer.
pub const WSA_QOS_ESDMODEOBJ = 11029;

// An invalid shaping rate object was found in the QOS provider-specific buffer.
pub const WSA_QOS_ESHAPERATEOBJ = 11030;

// A reserved policy element was found in the QOS provider-specific buffer.
pub const WSA_QOS_RESERVED_PETYPE = 11031;

// No such host is known securely.
pub const WSA_SECURE_HOST_NOT_FOUND = 11032;

// Name based IPSEC policy could not be added.
pub const WSA_IPSEC_NAME_POLICY_ERROR = 11033;

// The specified quick mode policy already exists.
pub const ERROR_IPSEC_QM_POLICY_EXISTS = 13000;

// The specified quick mode policy was not found.
pub const ERROR_IPSEC_QM_POLICY_NOT_FOUND = 13001;

// The specified quick mode policy is being used.
pub const ERROR_IPSEC_QM_POLICY_IN_USE = 13002;

// The specified main mode policy already exists.
pub const ERROR_IPSEC_MM_POLICY_EXISTS = 13003;

// The specified main mode policy was not found
pub const ERROR_IPSEC_MM_POLICY_NOT_FOUND = 13004;

// The specified main mode policy is being used.
pub const ERROR_IPSEC_MM_POLICY_IN_USE = 13005;

// The specified main mode filter already exists.
pub const ERROR_IPSEC_MM_FILTER_EXISTS = 13006;

// The specified main mode filter was not found.
pub const ERROR_IPSEC_MM_FILTER_NOT_FOUND = 13007;

// The specified transport mode filter already exists.
pub const ERROR_IPSEC_TRANSPORT_FILTER_EXISTS = 13008;

// The specified transport mode filter does not exist.
pub const ERROR_IPSEC_TRANSPORT_FILTER_NOT_FOUND = 13009;

// The specified main mode authentication list exists.
pub const ERROR_IPSEC_MM_AUTH_EXISTS = 13010;

// The specified main mode authentication list was not found.
pub const ERROR_IPSEC_MM_AUTH_NOT_FOUND = 13011;

// The specified main mode authentication list is being used.
pub const ERROR_IPSEC_MM_AUTH_IN_USE = 13012;

// The specified default main mode policy was not found.
pub const ERROR_IPSEC_DEFAULT_MM_POLICY_NOT_FOUND = 13013;

// The specified default main mode authentication list was not found.
pub const ERROR_IPSEC_DEFAULT_MM_AUTH_NOT_FOUND = 13014;

// The specified default quick mode policy was not found.
pub const ERROR_IPSEC_DEFAULT_QM_POLICY_NOT_FOUND = 13015;

// The specified tunnel mode filter exists.
pub const ERROR_IPSEC_TUNNEL_FILTER_EXISTS = 13016;

// The specified tunnel mode filter was not found.
pub const ERROR_IPSEC_TUNNEL_FILTER_NOT_FOUND = 13017;

// The Main Mode filter is pending deletion.
pub const ERROR_IPSEC_MM_FILTER_PENDING_DELETION = 13018;

// The transport filter is pending deletion.
pub const ERROR_IPSEC_TRANSPORT_FILTER_PENDING_DELETION = 13019;

// The tunnel filter is pending deletion.
pub const ERROR_IPSEC_TUNNEL_FILTER_PENDING_DELETION = 13020;

// The Main Mode policy is pending deletion.
pub const ERROR_IPSEC_MM_POLICY_PENDING_DELETION = 13021;

// The Main Mode authentication bundle is pending deletion.
pub const ERROR_IPSEC_MM_AUTH_PENDING_DELETION = 13022;

// The Quick Mode policy is pending deletion.
pub const ERROR_IPSEC_QM_POLICY_PENDING_DELETION = 13023;

// The Main Mode policy was successfully added, but some of the requested offers are not supported.
pub const WARNING_IPSEC_MM_POLICY_PRUNED = 13024;

// The Quick Mode policy was successfully added, but some of the requested offers are not supported.
pub const WARNING_IPSEC_QM_POLICY_PRUNED = 13025;

//  ERROR_IPSEC_IKE_NEG_STATUS_BEGIN
pub const ERROR_IPSEC_IKE_NEG_STATUS_BEGIN = 13800;

// IKE authentication credentials are unacceptable
pub const ERROR_IPSEC_IKE_AUTH_FAIL = 13801;

// IKE security attributes are unacceptable
pub const ERROR_IPSEC_IKE_ATTRIB_FAIL = 13802;

// IKE Negotiation in progress
pub const ERROR_IPSEC_IKE_NEGOTIATION_PENDING = 13803;

// General processing error
pub const ERROR_IPSEC_IKE_GENERAL_PROCESSING_ERROR = 13804;

// Negotiation timed out
pub const ERROR_IPSEC_IKE_TIMED_OUT = 13805;

// IKE failed to find valid machine certificate. Contact your Network Security Administrator about installing a valid certificate in the appropriate Certificate Store.
pub const ERROR_IPSEC_IKE_NO_CERT = 13806;

// IKE SA deleted by peer before establishment completed
pub const ERROR_IPSEC_IKE_SA_DELETED = 13807;

// IKE SA deleted before establishment completed
pub const ERROR_IPSEC_IKE_SA_REAPED = 13808;

// Negotiation request sat in Queue too long
pub const ERROR_IPSEC_IKE_MM_ACQUIRE_DROP = 13809;

// Negotiation request sat in Queue too long
pub const ERROR_IPSEC_IKE_QM_ACQUIRE_DROP = 13810;

// Negotiation request sat in Queue too long
pub const ERROR_IPSEC_IKE_QUEUE_DROP_MM = 13811;

// Negotiation request sat in Queue too long
pub const ERROR_IPSEC_IKE_QUEUE_DROP_NO_MM = 13812;

// No response from peer
pub const ERROR_IPSEC_IKE_DROP_NO_RESPONSE = 13813;

// Negotiation took too long
pub const ERROR_IPSEC_IKE_MM_DELAY_DROP = 13814;

// Negotiation took too long
pub const ERROR_IPSEC_IKE_QM_DELAY_DROP = 13815;

// Unknown error occurred
pub const ERROR_IPSEC_IKE_ERROR = 13816;

// Certificate Revocation Check failed
pub const ERROR_IPSEC_IKE_CRL_FAILED = 13817;

// Invalid certificate key usage
pub const ERROR_IPSEC_IKE_INVALID_KEY_USAGE = 13818;

// Invalid certificate type
pub const ERROR_IPSEC_IKE_INVALID_CERT_TYPE = 13819;

// IKE negotiation failed because the machine certificate used does not have a private key. IPsec certificates require a private key. Contact your Network Security administrator about replacing with a certificate that has a private key.
pub const ERROR_IPSEC_IKE_NO_PRIVATE_KEY = 13820;

// Simultaneous rekeys were detected.
pub const ERROR_IPSEC_IKE_SIMULTANEOUS_REKEY = 13821;

// Failure in Diffie-Hellman computation
pub const ERROR_IPSEC_IKE_DH_FAIL = 13822;

// Don't know how to process critical payload
pub const ERROR_IPSEC_IKE_CRITICAL_PAYLOAD_NOT_RECOGNIZED = 13823;

// Invalid header
pub const ERROR_IPSEC_IKE_INVALID_HEADER = 13824;

// No policy configured
pub const ERROR_IPSEC_IKE_NO_POLICY = 13825;

// Failed to verify signature
pub const ERROR_IPSEC_IKE_INVALID_SIGNATURE = 13826;

// Failed to authenticate using Kerberos
pub const ERROR_IPSEC_IKE_KERBEROS_ERROR = 13827;

// Peer's certificate did not have a public key
pub const ERROR_IPSEC_IKE_NO_PUBLIC_KEY = 13828;

// Error processing error payload
pub const ERROR_IPSEC_IKE_PROCESS_ERR = 13829;

// Error processing SA payload
pub const ERROR_IPSEC_IKE_PROCESS_ERR_SA = 13830;

// Error processing Proposal payload
pub const ERROR_IPSEC_IKE_PROCESS_ERR_PROP = 13831;

// Error processing Transform payload
pub const ERROR_IPSEC_IKE_PROCESS_ERR_TRANS = 13832;

// Error processing KE payload
pub const ERROR_IPSEC_IKE_PROCESS_ERR_KE = 13833;

// Error processing ID payload
pub const ERROR_IPSEC_IKE_PROCESS_ERR_ID = 13834;

// Error processing Cert payload
pub const ERROR_IPSEC_IKE_PROCESS_ERR_CERT = 13835;

// Error processing Certificate Request payload
pub const ERROR_IPSEC_IKE_PROCESS_ERR_CERT_REQ = 13836;

// Error processing Hash payload
pub const ERROR_IPSEC_IKE_PROCESS_ERR_HASH = 13837;

// Error processing Signature payload
pub const ERROR_IPSEC_IKE_PROCESS_ERR_SIG = 13838;

// Error processing Nonce payload
pub const ERROR_IPSEC_IKE_PROCESS_ERR_NONCE = 13839;

// Error processing Notify payload
pub const ERROR_IPSEC_IKE_PROCESS_ERR_NOTIFY = 13840;

// Error processing Delete Payload
pub const ERROR_IPSEC_IKE_PROCESS_ERR_DELETE = 13841;

// Error processing VendorId payload
pub const ERROR_IPSEC_IKE_PROCESS_ERR_VENDOR = 13842;

// Invalid payload received
pub const ERROR_IPSEC_IKE_INVALID_PAYLOAD = 13843;

// Soft SA loaded
pub const ERROR_IPSEC_IKE_LOAD_SOFT_SA = 13844;

// Soft SA torn down
pub const ERROR_IPSEC_IKE_SOFT_SA_TORN_DOWN = 13845;

// Invalid cookie received.
pub const ERROR_IPSEC_IKE_INVALID_COOKIE = 13846;

// Peer failed to send valid machine certificate
pub const ERROR_IPSEC_IKE_NO_PEER_CERT = 13847;

// Certification Revocation check of peer's certificate failed
pub const ERROR_IPSEC_IKE_PEER_CRL_FAILED = 13848;

// New policy invalidated SAs formed with old policy
pub const ERROR_IPSEC_IKE_POLICY_CHANGE = 13849;

// There is no available Main Mode IKE policy.
pub const ERROR_IPSEC_IKE_NO_MM_POLICY = 13850;

// Failed to enabled TCB privilege.
pub const ERROR_IPSEC_IKE_NOTCBPRIV = 13851;

// Failed to load SECURITY.DLL.
pub const ERROR_IPSEC_IKE_SECLOADFAIL = 13852;

// Failed to obtain security function table dispatch address from SSPI.
pub const ERROR_IPSEC_IKE_FAILSSPINIT = 13853;

// Failed to query Kerberos package to obtain max token size.
pub const ERROR_IPSEC_IKE_FAILQUERYSSP = 13854;

// Failed to obtain Kerberos server credentials for ISAKMP/ERROR_IPSEC_IKE service. Kerberos authentication will not function. The most likely reason for this is lack of domain membership. This is normal if your computer is a member of a workgroup.
pub const ERROR_IPSEC_IKE_SRVACQFAIL = 13855;

// Failed to determine SSPI principal name for ISAKMP/ERROR_IPSEC_IKE service (QueryCredentialsAttributes).
pub const ERROR_IPSEC_IKE_SRVQUERYCRED = 13856;

// Failed to obtain new SPI for the inbound SA from IPsec driver. The most common cause for this is that the driver does not have the correct filter. Check your policy to verify the filters.
pub const ERROR_IPSEC_IKE_GETSPIFAIL = 13857;

// Given filter is invalid
pub const ERROR_IPSEC_IKE_INVALID_FILTER = 13858;

// Memory allocation failed.
pub const ERROR_IPSEC_IKE_OUT_OF_MEMORY = 13859;

// Failed to add Security Association to IPsec Driver. The most common cause for this is if the IKE negotiation took too long to complete. If the problem persists, reduce the load on the faulting machine.
pub const ERROR_IPSEC_IKE_ADD_UPDATE_KEY_FAILED = 13860;

// Invalid policy
pub const ERROR_IPSEC_IKE_INVALID_POLICY = 13861;

// Invalid DOI
pub const ERROR_IPSEC_IKE_UNKNOWN_DOI = 13862;

// Invalid situation
pub const ERROR_IPSEC_IKE_INVALID_SITUATION = 13863;

// Diffie-Hellman failure
pub const ERROR_IPSEC_IKE_DH_FAILURE = 13864;

// Invalid Diffie-Hellman group
pub const ERROR_IPSEC_IKE_INVALID_GROUP = 13865;

// Error encrypting payload
pub const ERROR_IPSEC_IKE_ENCRYPT = 13866;

// Error decrypting payload
pub const ERROR_IPSEC_IKE_DECRYPT = 13867;

// Policy match error
pub const ERROR_IPSEC_IKE_POLICY_MATCH = 13868;

// Unsupported ID
pub const ERROR_IPSEC_IKE_UNSUPPORTED_ID = 13869;

// Hash verification failed
pub const ERROR_IPSEC_IKE_INVALID_HASH = 13870;

// Invalid hash algorithm
pub const ERROR_IPSEC_IKE_INVALID_HASH_ALG = 13871;

// Invalid hash size
pub const ERROR_IPSEC_IKE_INVALID_HASH_SIZE = 13872;

// Invalid encryption algorithm
pub const ERROR_IPSEC_IKE_INVALID_ENCRYPT_ALG = 13873;

// Invalid authentication algorithm
pub const ERROR_IPSEC_IKE_INVALID_AUTH_ALG = 13874;

// Invalid certificate signature
pub const ERROR_IPSEC_IKE_INVALID_SIG = 13875;

// Load failed
pub const ERROR_IPSEC_IKE_LOAD_FAILED = 13876;

// Deleted via RPC call
pub const ERROR_IPSEC_IKE_RPC_DELETE = 13877;

// Temporary state created to perform reinitialization. This is not a real failure.
pub const ERROR_IPSEC_IKE_BENIGN_REINIT = 13878;

// The lifetime value received in the Responder Lifetime Notify is below the Windows 2000 configured minimum value. Please fix the policy on the peer machine.
pub const ERROR_IPSEC_IKE_INVALID_RESPONDER_LIFETIME_NOTIFY = 13879;

// The recipient cannot handle version of IKE specified in the header.
pub const ERROR_IPSEC_IKE_INVALID_MAJOR_VERSION = 13880;

// Key length in certificate is too small for configured security requirements.
pub const ERROR_IPSEC_IKE_INVALID_CERT_KEYLEN = 13881;

// Max number of established MM SAs to peer exceeded.
pub const ERROR_IPSEC_IKE_MM_LIMIT = 13882;

// IKE received a policy that disables negotiation.
pub const ERROR_IPSEC_IKE_NEGOTIATION_DISABLED = 13883;

// Reached maximum quick mode limit for the main mode. New main mode will be started.
pub const ERROR_IPSEC_IKE_QM_LIMIT = 13884;

// Main mode SA lifetime expired or peer sent a main mode delete.
pub const ERROR_IPSEC_IKE_MM_EXPIRED = 13885;

// Main mode SA assumed to be invalid because peer stopped responding.
pub const ERROR_IPSEC_IKE_PEER_MM_ASSUMED_INVALID = 13886;

// Certificate doesn't chain to a trusted root in IPsec policy.
pub const ERROR_IPSEC_IKE_CERT_CHAIN_POLICY_MISMATCH = 13887;

// Received unexpected message ID.
pub const ERROR_IPSEC_IKE_UNEXPECTED_MESSAGE_ID = 13888;

// Received invalid authentication offers.
pub const ERROR_IPSEC_IKE_INVALID_AUTH_PAYLOAD = 13889;

// Sent DoS cookie notify to initiator.
pub const ERROR_IPSEC_IKE_DOS_COOKIE_SENT = 13890;

// IKE service is shutting down.
pub const ERROR_IPSEC_IKE_SHUTTING_DOWN = 13891;

// Could not verify binding between CGA address and certificate.
pub const ERROR_IPSEC_IKE_CGA_AUTH_FAILED = 13892;

// Error processing NatOA payload.
pub const ERROR_IPSEC_IKE_PROCESS_ERR_NATOA = 13893;

// Parameters of the main mode are invalid for this quick mode.
pub const ERROR_IPSEC_IKE_INVALID_MM_FOR_QM = 13894;

// Quick mode SA was expired by IPsec driver.
pub const ERROR_IPSEC_IKE_QM_EXPIRED = 13895;

// Too many dynamically added IKEEXT filters were detected.
pub const ERROR_IPSEC_IKE_TOO_MANY_FILTERS = 13896;

//  ERROR_IPSEC_IKE_NEG_STATUS_END
pub const ERROR_IPSEC_IKE_NEG_STATUS_END = 13897;

// NAP reauth succeeded and must delete the dummy NAP IKEv2 tunnel.
pub const ERROR_IPSEC_IKE_KILL_DUMMY_NAP_TUNNEL = 13898;

// Error in assigning inner IP address to initiator in tunnel mode.
pub const ERROR_IPSEC_IKE_INNER_IP_ASSIGNMENT_FAILURE = 13899;

// Require configuration payload missing.
pub const ERROR_IPSEC_IKE_REQUIRE_CP_PAYLOAD_MISSING = 13900;

// A negotiation running as the security principle who issued the connection is in progress
pub const ERROR_IPSEC_KEY_MODULE_IMPERSONATION_NEGOTIATION_PENDING = 13901;

// SA was deleted due to IKEv1/AuthIP co-existence suppress check.
pub const ERROR_IPSEC_IKE_COEXISTENCE_SUPPRESS = 13902;

// Incoming SA request was dropped due to peer IP address rate limiting.
pub const ERROR_IPSEC_IKE_RATELIMIT_DROP = 13903;

// Peer does not support MOBIKE.
pub const ERROR_IPSEC_IKE_PEER_DOESNT_SUPPORT_MOBIKE = 13904;

// SA establishment is not authorized.
pub const ERROR_IPSEC_IKE_AUTHORIZATION_FAILURE = 13905;

// SA establishment is not authorized because there is not a sufficiently strong PKINIT-based credential.
pub const ERROR_IPSEC_IKE_STRONG_CRED_AUTHORIZATION_FAILURE = 13906;

// SA establishment is not authorized.  You may need to enter updated or different credentials such as a smartcard.
pub const ERROR_IPSEC_IKE_AUTHORIZATION_FAILURE_WITH_OPTIONAL_RETRY = 13907;

// SA establishment is not authorized because there is not a sufficiently strong PKINIT-based credential. This might be related to certificate-to-account mapping failure for the SA.
pub const ERROR_IPSEC_IKE_STRONG_CRED_AUTHORIZATION_AND_CERTMAP_FAILURE = 13908;

//  ERROR_IPSEC_IKE_NEG_STATUS_EXTENDED_END
pub const ERROR_IPSEC_IKE_NEG_STATUS_EXTENDED_END = 13909;

// The SPI in the packet does not match a valid IPsec SA.
pub const ERROR_IPSEC_BAD_SPI = 13910;

// Packet was received on an IPsec SA whose lifetime has expired.
pub const ERROR_IPSEC_SA_LIFETIME_EXPIRED = 13911;

// Packet was received on an IPsec SA that does not match the packet characteristics.
pub const ERROR_IPSEC_WRONG_SA = 13912;

// Packet sequence number replay check failed.
pub const ERROR_IPSEC_REPLAY_CHECK_FAILED = 13913;

// IPsec header and/or trailer in the packet is invalid.
pub const ERROR_IPSEC_INVALID_PACKET = 13914;

// IPsec integrity check failed.
pub const ERROR_IPSEC_INTEGRITY_CHECK_FAILED = 13915;

// IPsec dropped a clear text packet.
pub const ERROR_IPSEC_CLEAR_TEXT_DROP = 13916;

// IPsec dropped an incoming ESP packet in authenticated firewall mode. This drop is benign.
pub const ERROR_IPSEC_AUTH_FIREWALL_DROP = 13917;

// IPsec dropped a packet due to DoS throttling.
pub const ERROR_IPSEC_THROTTLE_DROP = 13918;

// IPsec DoS Protection matched an explicit block rule.
pub const ERROR_IPSEC_DOSP_BLOCK = 13925;

// IPsec DoS Protection received an IPsec specific multicast packet which is not allowed.
pub const ERROR_IPSEC_DOSP_RECEIVED_MULTICAST = 13926;

// IPsec DoS Protection received an incorrectly formatted packet.
pub const ERROR_IPSEC_DOSP_INVALID_PACKET = 13927;

// IPsec DoS Protection failed to look up state.
pub const ERROR_IPSEC_DOSP_STATE_LOOKUP_FAILED = 13928;

// IPsec DoS Protection failed to create state because the maximum number of entries allowed by policy has been reached.
pub const ERROR_IPSEC_DOSP_MAX_ENTRIES = 13929;

// IPsec DoS Protection received an IPsec negotiation packet for a keying module which is not allowed by policy.
pub const ERROR_IPSEC_DOSP_KEYMOD_NOT_ALLOWED = 13930;

// IPsec DoS Protection has not been enabled.
pub const ERROR_IPSEC_DOSP_NOT_INSTALLED = 13931;

// IPsec DoS Protection failed to create a per internal IP rate limit queue because the maximum number of queues allowed by policy has been reached.
pub const ERROR_IPSEC_DOSP_MAX_PER_IP_RATELIMIT_QUEUES = 13932;

// The requested section was not present in the activation context.
pub const ERROR_SXS_SECTION_NOT_FOUND = 14000;

// The application has failed to start because its side-by-side configuration is incorrect. Please see the application event log or use the command-line sxstrace.exe tool for more detail.
pub const ERROR_SXS_CANT_GEN_ACTCTX = 14001;

// The application binding data format is invalid.
pub const ERROR_SXS_INVALID_ACTCTXDATA_FORMAT = 14002;

// The referenced assembly is not installed on your system.
pub const ERROR_SXS_ASSEMBLY_NOT_FOUND = 14003;

// The manifest file does not begin with the required tag and format information.
pub const ERROR_SXS_MANIFEST_FORMAT_ERROR = 14004;

// The manifest file contains one or more syntax errors.
pub const ERROR_SXS_MANIFEST_PARSE_ERROR = 14005;

// The application attempted to activate a disabled activation context.
pub const ERROR_SXS_ACTIVATION_CONTEXT_DISABLED = 14006;

// The requested lookup key was not found in any active activation context.
pub const ERROR_SXS_KEY_NOT_FOUND = 14007;

// A component version required by the application conflicts with another component version already active.
pub const ERROR_SXS_VERSION_CONFLICT = 14008;

// The type requested activation context section does not match the query API used.
pub const ERROR_SXS_WRONG_SECTION_TYPE = 14009;

// Lack of system resources has required isolated activation to be disabled for the current thread of execution.
pub const ERROR_SXS_THREAD_QUERIES_DISABLED = 14010;

// An attempt to set the process default activation context failed because the process default activation context was already set.
pub const ERROR_SXS_PROCESS_DEFAULT_ALREADY_SET = 14011;

// The encoding group identifier specified is not recognized.
pub const ERROR_SXS_UNKNOWN_ENCODING_GROUP = 14012;

// The encoding requested is not recognized.
pub const ERROR_SXS_UNKNOWN_ENCODING = 14013;

// The manifest contains a reference to an invalid URI.
pub const ERROR_SXS_INVALID_XML_NAMESPACE_URI = 14014;

// The application manifest contains a reference to a dependent assembly which is not installed
pub const ERROR_SXS_ROOT_MANIFEST_DEPENDENCY_NOT_INSTALLED = 14015;

// The manifest for an assembly used by the application has a reference to a dependent assembly which is not installed
pub const ERROR_SXS_LEAF_MANIFEST_DEPENDENCY_NOT_INSTALLED = 14016;

// The manifest contains an attribute for the assembly identity which is not valid.
pub const ERROR_SXS_INVALID_ASSEMBLY_IDENTITY_ATTRIBUTE = 14017;

// The manifest is missing the required default namespace specification on the assembly element.
pub const ERROR_SXS_MANIFEST_MISSING_REQUIRED_DEFAULT_NAMESPACE = 14018;

// The manifest has a default namespace specified on the assembly element but its value is not "urn:schemas-microsoft-com:asm.v1".
pub const ERROR_SXS_MANIFEST_INVALID_REQUIRED_DEFAULT_NAMESPACE = 14019;

// The private manifest probed has crossed a path with an unsupported reparse point.
pub const ERROR_SXS_PRIVATE_MANIFEST_CROSS_PATH_WITH_REPARSE_POINT = 14020;

// Two or more components referenced directly or indirectly by the application manifest have files by the same name.
pub const ERROR_SXS_DUPLICATE_DLL_NAME = 14021;

// Two or more components referenced directly or indirectly by the application manifest have window classes with the same name.
pub const ERROR_SXS_DUPLICATE_WINDOWCLASS_NAME = 14022;

// Two or more components referenced directly or indirectly by the application manifest have the same COM server CLSIDs.
pub const ERROR_SXS_DUPLICATE_CLSID = 14023;

// Two or more components referenced directly or indirectly by the application manifest have proxies for the same COM interface IIDs.
pub const ERROR_SXS_DUPLICATE_IID = 14024;

// Two or more components referenced directly or indirectly by the application manifest have the same COM type library TLBIDs.
pub const ERROR_SXS_DUPLICATE_TLBID = 14025;

// Two or more components referenced directly or indirectly by the application manifest have the same COM ProgIDs.
pub const ERROR_SXS_DUPLICATE_PROGID = 14026;

// Two or more components referenced directly or indirectly by the application manifest are different versions of the same component which is not permitted.
pub const ERROR_SXS_DUPLICATE_ASSEMBLY_NAME = 14027;

// A component's file does not match the verification information present in the component manifest.
pub const ERROR_SXS_FILE_HASH_MISMATCH = 14028;

// The policy manifest contains one or more syntax errors.
pub const ERROR_SXS_POLICY_PARSE_ERROR = 14029;

// Manifest Parse Error : A string literal was expected, but no opening quote character was found.
pub const ERROR_SXS_XML_E_MISSINGQUOTE = 14030;

// Manifest Parse Error : Incorrect syntax was used in a comment.
pub const ERROR_SXS_XML_E_COMMENTSYNTAX = 14031;

// Manifest Parse Error : A name was started with an invalid character.
pub const ERROR_SXS_XML_E_BADSTARTNAMECHAR = 14032;

// Manifest Parse Error : A name contained an invalid character.
pub const ERROR_SXS_XML_E_BADNAMECHAR = 14033;

// Manifest Parse Error : A string literal contained an invalid character.
pub const ERROR_SXS_XML_E_BADCHARINSTRING = 14034;

// Manifest Parse Error : Invalid syntax for an xml declaration.
pub const ERROR_SXS_XML_E_XMLDECLSYNTAX = 14035;

// Manifest Parse Error : An Invalid character was found in text content.
pub const ERROR_SXS_XML_E_BADCHARDATA = 14036;

// Manifest Parse Error : Required white space was missing.
pub const ERROR_SXS_XML_E_MISSINGWHITESPACE = 14037;

// Manifest Parse Error : The character '>' was expected.
pub const ERROR_SXS_XML_E_EXPECTINGTAGEND = 14038;

// Manifest Parse Error : A semi colon character was expected.
pub const ERROR_SXS_XML_E_MISSINGSEMICOLON = 14039;

// Manifest Parse Error : Unbalanced parentheses.
pub const ERROR_SXS_XML_E_UNBALANCEDPAREN = 14040;

// Manifest Parse Error : Internal error.
pub const ERROR_SXS_XML_E_INTERNALERROR = 14041;

// Manifest Parse Error : Whitespace is not allowed at this location.
pub const ERROR_SXS_XML_E_UNEXPECTED_WHITESPACE = 14042;

// Manifest Parse Error : End of file reached in invalid state for current encoding.
pub const ERROR_SXS_XML_E_INCOMPLETE_ENCODING = 14043;

// Manifest Parse Error : Missing parenthesis.
pub const ERROR_SXS_XML_E_MISSING_PAREN = 14044;

// Manifest Parse Error : A single or double closing quote character (\' or \") is missing.
pub const ERROR_SXS_XML_E_EXPECTINGCLOSEQUOTE = 14045;

// Manifest Parse Error : Multiple colons are not allowed in a name.
pub const ERROR_SXS_XML_E_MULTIPLE_COLONS = 14046;

// Manifest Parse Error : Invalid character for decimal digit.
pub const ERROR_SXS_XML_E_INVALID_DECIMAL = 14047;

// Manifest Parse Error : Invalid character for hexadecimal digit.
pub const ERROR_SXS_XML_E_INVALID_HEXIDECIMAL = 14048;

// Manifest Parse Error : Invalid unicode character value for this platform.
pub const ERROR_SXS_XML_E_INVALID_UNICODE = 14049;

// Manifest Parse Error : Expecting whitespace or '?'.
pub const ERROR_SXS_XML_E_WHITESPACEORQUESTIONMARK = 14050;

// Manifest Parse Error : End tag was not expected at this location.
pub const ERROR_SXS_XML_E_UNEXPECTEDENDTAG = 14051;

// Manifest Parse Error : The following tags were not closed: %1.
pub const ERROR_SXS_XML_E_UNCLOSEDTAG = 14052;

// Manifest Parse Error : Duplicate attribute.
pub const ERROR_SXS_XML_E_DUPLICATEATTRIBUTE = 14053;

// Manifest Parse Error : Only one top level element is allowed in an XML document.
pub const ERROR_SXS_XML_E_MULTIPLEROOTS = 14054;

// Manifest Parse Error : Invalid at the top level of the document.
pub const ERROR_SXS_XML_E_INVALIDATROOTLEVEL = 14055;

// Manifest Parse Error : Invalid xml declaration.
pub const ERROR_SXS_XML_E_BADXMLDECL = 14056;

// Manifest Parse Error : XML document must have a top level element.
pub const ERROR_SXS_XML_E_MISSINGROOT = 14057;

// Manifest Parse Error : Unexpected end of file.
pub const ERROR_SXS_XML_E_UNEXPECTEDEOF = 14058;

// Manifest Parse Error : Parameter entities cannot be used inside markup declarations in an internal subset.
pub const ERROR_SXS_XML_E_BADPEREFINSUBSET = 14059;

// Manifest Parse Error : Element was not closed.
pub const ERROR_SXS_XML_E_UNCLOSEDSTARTTAG = 14060;

// Manifest Parse Error : End element was missing the character '>'.
pub const ERROR_SXS_XML_E_UNCLOSEDENDTAG = 14061;

// Manifest Parse Error : A string literal was not closed.
pub const ERROR_SXS_XML_E_UNCLOSEDSTRING = 14062;

// Manifest Parse Error : A comment was not closed.
pub const ERROR_SXS_XML_E_UNCLOSEDCOMMENT = 14063;

// Manifest Parse Error : A declaration was not closed.
pub const ERROR_SXS_XML_E_UNCLOSEDDECL = 14064;

// Manifest Parse Error : A CDATA section was not closed.
pub const ERROR_SXS_XML_E_UNCLOSEDCDATA = 14065;

// Manifest Parse Error : The namespace prefix is not allowed to start with the reserved string "xml".
pub const ERROR_SXS_XML_E_RESERVEDNAMESPACE = 14066;

// Manifest Parse Error : System does not support the specified encoding.
pub const ERROR_SXS_XML_E_INVALIDENCODING = 14067;

// Manifest Parse Error : Switch from current encoding to specified encoding not supported.
pub const ERROR_SXS_XML_E_INVALIDSWITCH = 14068;

// Manifest Parse Error : The name 'xml' is reserved and must be lower case.
pub const ERROR_SXS_XML_E_BADXMLCASE = 14069;

// Manifest Parse Error : The standalone attribute must have the value 'yes' or 'no'.
pub const ERROR_SXS_XML_E_INVALID_STANDALONE = 14070;

// Manifest Parse Error : The standalone attribute cannot be used in external entities.
pub const ERROR_SXS_XML_E_UNEXPECTED_STANDALONE = 14071;

// Manifest Parse Error : Invalid version number.
pub const ERROR_SXS_XML_E_INVALID_VERSION = 14072;

// Manifest Parse Error : Missing equals sign between attribute and attribute value.
pub const ERROR_SXS_XML_E_MISSINGEQUALS = 14073;

// Assembly Protection Error : Unable to recover the specified assembly.
pub const ERROR_SXS_PROTECTION_RECOVERY_FAILED = 14074;

// Assembly Protection Error : The public key for an assembly was too short to be allowed.
pub const ERROR_SXS_PROTECTION_PUBLIC_KEY_TOO_SHORT = 14075;

// Assembly Protection Error : The catalog for an assembly is not valid, or does not match the assembly's manifest.
pub const ERROR_SXS_PROTECTION_CATALOG_NOT_VALID = 14076;

// An HRESULT could not be translated to a corresponding Win32 error code.
pub const ERROR_SXS_UNTRANSLATABLE_HRESULT = 14077;

// Assembly Protection Error : The catalog for an assembly is missing.
pub const ERROR_SXS_PROTECTION_CATALOG_FILE_MISSING = 14078;

// The supplied assembly identity is missing one or more attributes which must be present in this context.
pub const ERROR_SXS_MISSING_ASSEMBLY_IDENTITY_ATTRIBUTE = 14079;

// The supplied assembly identity has one or more attribute names that contain characters not permitted in XML names.
pub const ERROR_SXS_INVALID_ASSEMBLY_IDENTITY_ATTRIBUTE_NAME = 14080;

// The referenced assembly could not be found.
pub const ERROR_SXS_ASSEMBLY_MISSING = 14081;

// The activation context activation stack for the running thread of execution is corrupt.
pub const ERROR_SXS_CORRUPT_ACTIVATION_STACK = 14082;

// The application isolation metadata for this process or thread has become corrupt.
pub const ERROR_SXS_CORRUPTION = 14083;

// The activation context being deactivated is not the most recently activated one.
pub const ERROR_SXS_EARLY_DEACTIVATION = 14084;

// The activation context being deactivated is not active for the current thread of execution.
pub const ERROR_SXS_INVALID_DEACTIVATION = 14085;

// The activation context being deactivated has already been deactivated.
pub const ERROR_SXS_MULTIPLE_DEACTIVATION = 14086;

// A component used by the isolation facility has requested to terminate the process.
pub const ERROR_SXS_PROCESS_TERMINATION_REQUESTED = 14087;

// A kernel mode component is releasing a reference on an activation context.
pub const ERROR_SXS_RELEASE_ACTIVATION_CONTEXT = 14088;

// The activation context of system default assembly could not be generated.
pub const ERROR_SXS_SYSTEM_DEFAULT_ACTIVATION_CONTEXT_EMPTY = 14089;

// The value of an attribute in an identity is not within the legal range.
pub const ERROR_SXS_INVALID_IDENTITY_ATTRIBUTE_VALUE = 14090;

// The name of an attribute in an identity is not within the legal range.
pub const ERROR_SXS_INVALID_IDENTITY_ATTRIBUTE_NAME = 14091;

// An identity contains two definitions for the same attribute.
pub const ERROR_SXS_IDENTITY_DUPLICATE_ATTRIBUTE = 14092;

// The identity string is malformed. This may be due to a trailing comma, more than two unnamed attributes, missing attribute name or missing attribute value.
pub const ERROR_SXS_IDENTITY_PARSE_ERROR = 14093;

// A string containing localized substitutable content was malformed. Either a dollar sign ($) was followed by something other than a left parenthesis or another dollar sign or an substitution's right parenthesis was not found.
pub const ERROR_MALFORMED_SUBSTITUTION_STRING = 14094;

// The public key token does not correspond to the public key specified.
pub const ERROR_SXS_INCORRECT_PUBLIC_KEY_TOKEN = 14095;

// A substitution string had no mapping.
pub const ERROR_UNMAPPED_SUBSTITUTION_STRING = 14096;

// The component must be locked before making the request.
pub const ERROR_SXS_ASSEMBLY_NOT_LOCKED = 14097;

// The component store has been corrupted.
pub const ERROR_SXS_COMPONENT_STORE_CORRUPT = 14098;

// An advanced installer failed during setup or servicing.
pub const ERROR_ADVANCED_INSTALLER_FAILED = 14099;

// The character encoding in the XML declaration did not match the encoding used in the document.
pub const ERROR_XML_ENCODING_MISMATCH = 14100;

// The identities of the manifests are identical but their contents are different.
pub const ERROR_SXS_MANIFEST_IDENTITY_SAME_BUT_CONTENTS_DIFFERENT = 14101;

// The component identities are different.
pub const ERROR_SXS_IDENTITIES_DIFFERENT = 14102;

// The assembly is not a deployment.
pub const ERROR_SXS_ASSEMBLY_IS_NOT_A_DEPLOYMENT = 14103;

// The file is not a part of the assembly.
pub const ERROR_SXS_FILE_NOT_PART_OF_ASSEMBLY = 14104;

// The size of the manifest exceeds the maximum allowed.
pub const ERROR_SXS_MANIFEST_TOO_BIG = 14105;

// The setting is not registered.
pub const ERROR_SXS_SETTING_NOT_REGISTERED = 14106;

// One or more required members of the transaction are not present.
pub const ERROR_SXS_TRANSACTION_CLOSURE_INCOMPLETE = 14107;

// The SMI primitive installer failed during setup or servicing.
pub const ERROR_SMI_PRIMITIVE_INSTALLER_FAILED = 14108;

// A generic command executable returned a result that indicates failure.
pub const ERROR_GENERIC_COMMAND_FAILED = 14109;

// A component is missing file verification information in its manifest.
pub const ERROR_SXS_FILE_HASH_MISSING = 14110;

// The specified channel path is invalid.
pub const ERROR_EVT_INVALID_CHANNEL_PATH = 15000;

// The specified query is invalid.
pub const ERROR_EVT_INVALID_QUERY = 15001;

// The publisher metadata cannot be found in the resource.
pub const ERROR_EVT_PUBLISHER_METADATA_NOT_FOUND = 15002;

// The template for an event definition cannot be found in the resource (error = %1).
pub const ERROR_EVT_EVENT_TEMPLATE_NOT_FOUND = 15003;

// The specified publisher name is invalid.
pub const ERROR_EVT_INVALID_PUBLISHER_NAME = 15004;

// The event data raised by the publisher is not compatible with the event template definition in the publisher's manifest
pub const ERROR_EVT_INVALID_EVENT_DATA = 15005;

// The specified channel could not be found. Check channel configuration.
pub const ERROR_EVT_CHANNEL_NOT_FOUND = 15007;

// The specified xml text was not well-formed. See Extended Error for more details.
pub const ERROR_EVT_MALFORMED_XML_TEXT = 15008;

// The caller is trying to subscribe to a direct channel which is not allowed. The events for a direct channel go directly to a logfile and cannot be subscribed to.
pub const ERROR_EVT_SUBSCRIPTION_TO_DIRECT_CHANNEL = 15009;

// Configuration error.
pub const ERROR_EVT_CONFIGURATION_ERROR = 15010;

// The query result is stale / invalid. This may be due to the log being cleared or rolling over after the query result was created. Users should handle this code by releasing the query result object and reissuing the query.
pub const ERROR_EVT_QUERY_RESULT_STALE = 15011;

// Query result is currently at an invalid position.
pub const ERROR_EVT_QUERY_RESULT_INVALID_POSITION = 15012;

// Registered MSXML doesn't support validation.
pub const ERROR_EVT_NON_VALIDATING_MSXML = 15013;

// An expression can only be followed by a change of scope operation if it itself evaluates to a node set and is not already part of some other change of scope operation.
pub const ERROR_EVT_FILTER_ALREADYSCOPED = 15014;

// Can't perform a step operation from a term that does not represent an element set.
pub const ERROR_EVT_FILTER_NOTELTSET = 15015;

// Left hand side arguments to binary operators must be either attributes, nodes or variables and right hand side arguments must be constants.
pub const ERROR_EVT_FILTER_INVARG = 15016;

// A step operation must involve either a node test or, in the case of a predicate, an algebraic expression against which to test each node in the node set identified by the preceeding node set can be evaluated.
pub const ERROR_EVT_FILTER_INVTEST = 15017;

// This data type is currently unsupported.
pub const ERROR_EVT_FILTER_INVTYPE = 15018;

// A syntax error occurred at position %1!d!
pub const ERROR_EVT_FILTER_PARSEERR = 15019;

// This operator is unsupported by this implementation of the filter.
pub const ERROR_EVT_FILTER_UNSUPPORTEDOP = 15020;

// The token encountered was unexpected.
pub const ERROR_EVT_FILTER_UNEXPECTEDTOKEN = 15021;

// The requested operation cannot be performed over an enabled direct channel. The channel must first be disabled before performing the requested operation.
pub const ERROR_EVT_INVALID_OPERATION_OVER_ENABLED_DIRECT_CHANNEL = 15022;

// Channel property %1!s! contains invalid value. The value has invalid type, is outside of valid range, can't be updated or is not supported by this type of channel.
pub const ERROR_EVT_INVALID_CHANNEL_PROPERTY_VALUE = 15023;

// Publisher property %1!s! contains invalid value. The value has invalid type, is outside of valid range, can't be updated or is not supported by this type of publisher.
pub const ERROR_EVT_INVALID_PUBLISHER_PROPERTY_VALUE = 15024;

// The channel fails to activate.
pub const ERROR_EVT_CHANNEL_CANNOT_ACTIVATE = 15025;

// The xpath expression exceeded supported complexity. Please symplify it or split it into two or more simple expressions.
pub const ERROR_EVT_FILTER_TOO_COMPLEX = 15026;

// the message resource is present but the message is not found in the string/message table
pub const ERROR_EVT_MESSAGE_NOT_FOUND = 15027;

// The message id for the desired message could not be found.
pub const ERROR_EVT_MESSAGE_ID_NOT_FOUND = 15028;

// The substitution string for insert index (%1) could not be found.
pub const ERROR_EVT_UNRESOLVED_VALUE_INSERT = 15029;

// The description string for parameter reference (%1) could not be found.
pub const ERROR_EVT_UNRESOLVED_PARAMETER_INSERT = 15030;

// The maximum number of replacements has been reached.
pub const ERROR_EVT_MAX_INSERTS_REACHED = 15031;

// The event definition could not be found for event id (%1).
pub const ERROR_EVT_EVENT_DEFINITION_NOT_FOUND = 15032;

// The locale specific resource for the desired message is not present.
pub const ERROR_EVT_MESSAGE_LOCALE_NOT_FOUND = 15033;

// The resource is too old to be compatible.
pub const ERROR_EVT_VERSION_TOO_OLD = 15034;

// The resource is too new to be compatible.
pub const ERROR_EVT_VERSION_TOO_NEW = 15035;

// The channel at index %1!d! of the query can't be opened.
pub const ERROR_EVT_CANNOT_OPEN_CHANNEL_OF_QUERY = 15036;

// The publisher has been disabled and its resource is not available. This usually occurs when the publisher is in the process of being uninstalled or upgraded.
pub const ERROR_EVT_PUBLISHER_DISABLED = 15037;

// Attempted to create a numeric type that is outside of its valid range.
pub const ERROR_EVT_FILTER_OUT_OF_RANGE = 15038;

// The subscription fails to activate.
pub const ERROR_EC_SUBSCRIPTION_CANNOT_ACTIVATE = 15080;

// The log of the subscription is in disabled state, and can not be used to forward events to. The log must first be enabled before the subscription can be activated.
pub const ERROR_EC_LOG_DISABLED = 15081;

// When forwarding events from local machine to itself, the query of the subscription can't contain target log of the subscription.
pub const ERROR_EC_CIRCULAR_FORWARDING = 15082;

// The credential store that is used to save credentials is full.
pub const ERROR_EC_CREDSTORE_FULL = 15083;

// The credential used by this subscription can't be found in credential store.
pub const ERROR_EC_CRED_NOT_FOUND = 15084;

// No active channel is found for the query.
pub const ERROR_EC_NO_ACTIVE_CHANNEL = 15085;

// The resource loader failed to find MUI file.
pub const ERROR_MUI_FILE_NOT_FOUND = 15100;

// The resource loader failed to load MUI file because the file fail to pass validation.
pub const ERROR_MUI_INVALID_FILE = 15101;

// The RC Manifest is corrupted with garbage data or unsupported version or missing required item.
pub const ERROR_MUI_INVALID_RC_CONFIG = 15102;

// The RC Manifest has invalid culture name.
pub const ERROR_MUI_INVALID_LOCALE_NAME = 15103;

// The RC Manifest has invalid ultimatefallback name.
pub const ERROR_MUI_INVALID_ULTIMATEFALLBACK_NAME = 15104;

// The resource loader cache doesn't have loaded MUI entry.
pub const ERROR_MUI_FILE_NOT_LOADED = 15105;

// User stopped resource enumeration.
pub const ERROR_RESOURCE_ENUM_USER_STOP = 15106;

// UI language installation failed.
pub const ERROR_MUI_INTLSETTINGS_UILANG_NOT_INSTALLED = 15107;

// Locale installation failed.
pub const ERROR_MUI_INTLSETTINGS_INVALID_LOCALE_NAME = 15108;

// A resource does not have default or neutral value.
pub const ERROR_MRM_RUNTIME_NO_DEFAULT_OR_NEUTRAL_RESOURCE = 15110;

// Invalid PRI config file.
pub const ERROR_MRM_INVALID_PRICONFIG = 15111;

// Invalid file type.
pub const ERROR_MRM_INVALID_FILE_TYPE = 15112;

// Unknown qualifier.
pub const ERROR_MRM_UNKNOWN_QUALIFIER = 15113;

// Invalid qualifier value.
pub const ERROR_MRM_INVALID_QUALIFIER_VALUE = 15114;

// No Candidate found.
pub const ERROR_MRM_NO_CANDIDATE = 15115;

// The ResourceMap or NamedResource has an item that does not have default or neutral resource..
pub const ERROR_MRM_NO_MATCH_OR_DEFAULT_CANDIDATE = 15116;

// Invalid ResourceCandidate type.
pub const ERROR_MRM_RESOURCE_TYPE_MISMATCH = 15117;

// Duplicate Resource Map.
pub const ERROR_MRM_DUPLICATE_MAP_NAME = 15118;

// Duplicate Entry.
pub const ERROR_MRM_DUPLICATE_ENTRY = 15119;

// Invalid Resource Identifier.
pub const ERROR_MRM_INVALID_RESOURCE_IDENTIFIER = 15120;

// Filepath too long.
pub const ERROR_MRM_FILEPATH_TOO_LONG = 15121;

// Unsupported directory type.
pub const ERROR_MRM_UNSUPPORTED_DIRECTORY_TYPE = 15122;

// Invalid PRI File.
pub const ERROR_MRM_INVALID_PRI_FILE = 15126;

// NamedResource Not Found.
pub const ERROR_MRM_NAMED_RESOURCE_NOT_FOUND = 15127;

// ResourceMap Not Found.
pub const ERROR_MRM_MAP_NOT_FOUND = 15135;

// Unsupported MRT profile type.
pub const ERROR_MRM_UNSUPPORTED_PROFILE_TYPE = 15136;

// Invalid qualifier operator.
pub const ERROR_MRM_INVALID_QUALIFIER_OPERATOR = 15137;

// Unable to determine qualifier value or qualifier value has not been set.
pub const ERROR_MRM_INDETERMINATE_QUALIFIER_VALUE = 15138;

// Automerge is enabled in the PRI file.
pub const ERROR_MRM_AUTOMERGE_ENABLED = 15139;

// Too many resources defined for package.
pub const ERROR_MRM_TOO_MANY_RESOURCES = 15140;

// Resource File can not be used for merge operation.
pub const ERROR_MRM_UNSUPPORTED_FILE_TYPE_FOR_MERGE = 15141;

// Load/UnloadPriFiles cannot be used with resource packages.
pub const ERROR_MRM_UNSUPPORTED_FILE_TYPE_FOR_LOAD_UNLOAD_PRI_FILE = 15142;

// Resource Contexts may not be created on threads that do not have a CoreWindow.
pub const ERROR_MRM_NO_CURRENT_VIEW_ON_THREAD = 15143;

// The singleton Resource Manager with different profile is already created.
pub const ERROR_DIFFERENT_PROFILE_RESOURCE_MANAGER_EXIST = 15144;

// The system component cannot operate given API operation
pub const ERROR_OPERATION_NOT_ALLOWED_FROM_SYSTEM_COMPONENT = 15145;

// The resource is a direct reference to a non-default resource candidate.
pub const ERROR_MRM_DIRECT_REF_TO_NON_DEFAULT_RESOURCE = 15146;

// Resource Map has been re-generated and the query string is not valid anymore.
pub const ERROR_MRM_GENERATION_COUNT_MISMATCH = 15147;

// The PRI files to be merged have incompatible versions.
pub const ERROR_PRI_MERGE_VERSION_MISMATCH = 15148;

// The primary PRI files to be merged does not contain a schema.
pub const ERROR_PRI_MERGE_MISSING_SCHEMA = 15149;

// Unable to load one of the PRI files to be merged.
pub const ERROR_PRI_MERGE_LOAD_FILE_FAILED = 15150;

// Unable to add one of the PRI files to the merged file.
pub const ERROR_PRI_MERGE_ADD_FILE_FAILED = 15151;

// Unable to create the merged PRI file.
pub const ERROR_PRI_MERGE_WRITE_FILE_FAILED = 15152;

// Packages for a PRI file merge must all be from the same package family.
pub const ERROR_PRI_MERGE_MULTIPLE_PACKAGE_FAMILIES_NOT_ALLOWED = 15153;

// Packages for a PRI file merge must not include multiple main packages.
pub const ERROR_PRI_MERGE_MULTIPLE_MAIN_PACKAGES_NOT_ALLOWED = 15154;

// Packages for a PRI file merge must not include bundle packages.
pub const ERROR_PRI_MERGE_BUNDLE_PACKAGES_NOT_ALLOWED = 15155;

// Packages for a PRI file merge must include one main package.
pub const ERROR_PRI_MERGE_MAIN_PACKAGE_REQUIRED = 15156;

// Packages for a PRI file merge must include at least one resource package.
pub const ERROR_PRI_MERGE_RESOURCE_PACKAGE_REQUIRED = 15157;

// Invalid name supplied for a canonical merged PRI file.
pub const ERROR_PRI_MERGE_INVALID_FILE_NAME = 15158;

// The monitor returned a DDC/CI capabilities string that did not comply with the ACCESS.bus 3.0, DDC/CI 1.1 or MCCS 2 Revision 1 specification.
pub const ERROR_MCA_INVALID_CAPABILITIES_STRING = 15200;

// The monitor's VCP Version (0xDF) VCP code returned an invalid version value.
pub const ERROR_MCA_INVALID_VCP_VERSION = 15201;

// The monitor does not comply with the MCCS specification it claims to support.
pub const ERROR_MCA_MONITOR_VIOLATES_MCCS_SPECIFICATION = 15202;

// The MCCS version in a monitor's mccs_ver capability does not match the MCCS version the monitor reports when the VCP Version (0xDF) VCP code is used.
pub const ERROR_MCA_MCCS_VERSION_MISMATCH = 15203;

// The Monitor Configuration API only works with monitors that support the MCCS 1.0 specification, MCCS 2.0 specification or the MCCS 2.0 Revision 1 specification.
pub const ERROR_MCA_UNSUPPORTED_MCCS_VERSION = 15204;

// An internal Monitor Configuration API error occurred.
pub const ERROR_MCA_INTERNAL_ERROR = 15205;

// The monitor returned an invalid monitor technology type. CRT, Plasma and LCD (TFT) are examples of monitor technology types. This error implies that the monitor violated the MCCS 2.0 or MCCS 2.0 Revision 1 specification.
pub const ERROR_MCA_INVALID_TECHNOLOGY_TYPE_RETURNED = 15206;

// The caller of SetMonitorColorTemperature specified a color temperature that the current monitor did not support. This error implies that the monitor violated the MCCS 2.0 or MCCS 2.0 Revision 1 specification.
pub const ERROR_MCA_UNSUPPORTED_COLOR_TEMPERATURE = 15207;

// The requested system device cannot be identified due to multiple indistinguishable devices potentially matching the identification criteria.
pub const ERROR_AMBIGUOUS_SYSTEM_DEVICE = 15250;

// The requested system device cannot be found.
pub const ERROR_SYSTEM_DEVICE_NOT_FOUND = 15299;

// Hash generation for the specified hash version and hash type is not enabled on the server.
pub const ERROR_HASH_NOT_SUPPORTED = 15300;

// The hash requested from the server is not available or no longer valid.
pub const ERROR_HASH_NOT_PRESENT = 15301;

// The secondary interrupt controller instance that manages the specified interrupt is not registered.
pub const ERROR_SECONDARY_IC_PROVIDER_NOT_REGISTERED = 15321;

// The information supplied by the GPIO client driver is invalid.
pub const ERROR_GPIO_CLIENT_INFORMATION_INVALID = 15322;

// The version specified by the GPIO client driver is not supported.
pub const ERROR_GPIO_VERSION_NOT_SUPPORTED = 15323;

// The registration packet supplied by the GPIO client driver is not valid.
pub const ERROR_GPIO_INVALID_REGISTRATION_PACKET = 15324;

// The requested operation is not suppported for the specified handle.
pub const ERROR_GPIO_OPERATION_DENIED = 15325;

// The requested connect mode conflicts with an existing mode on one or more of the specified pins.
pub const ERROR_GPIO_INCOMPATIBLE_CONNECT_MODE = 15326;

// The interrupt requested to be unmasked is not masked.
pub const ERROR_GPIO_INTERRUPT_ALREADY_UNMASKED = 15327;

// The requested run level switch cannot be completed successfully.
pub const ERROR_CANNOT_SWITCH_RUNLEVEL = 15400;

// must not be higher than the run level of its dependent services.
pub const ERROR_INVALID_RUNLEVEL_SETTING = 15401;

// one or more services will not stop or restart within the specified timeout.
pub const ERROR_RUNLEVEL_SWITCH_TIMEOUT = 15402;

// A run level switch agent did not respond within the specified timeout.
pub const ERROR_RUNLEVEL_SWITCH_AGENT_TIMEOUT = 15403;

// A run level switch is currently in progress.
pub const ERROR_RUNLEVEL_SWITCH_IN_PROGRESS = 15404;

// One or more services failed to start during the service startup phase of a run level switch.
pub const ERROR_SERVICES_FAILED_AUTOSTART = 15405;

// task needs more time to shutdown.
pub const ERROR_COM_TASK_STOP_PENDING = 15501;

// Package could not be opened.
pub const ERROR_INSTALL_OPEN_PACKAGE_FAILED = 15600;

// Package was not found.
pub const ERROR_INSTALL_PACKAGE_NOT_FOUND = 15601;

// Package data is invalid.
pub const ERROR_INSTALL_INVALID_PACKAGE = 15602;

// Package failed updates, dependency or conflict validation.
pub const ERROR_INSTALL_RESOLVE_DEPENDENCY_FAILED = 15603;

// There is not enough disk space on your computer. Please free up some space and try again.
pub const ERROR_INSTALL_OUT_OF_DISK_SPACE = 15604;

// There was a problem downloading your product.
pub const ERROR_INSTALL_NETWORK_FAILURE = 15605;

// Package could not be registered.
pub const ERROR_INSTALL_REGISTRATION_FAILURE = 15606;

// Package could not be unregistered.
pub const ERROR_INSTALL_DEREGISTRATION_FAILURE = 15607;

// User cancelled the install request.
pub const ERROR_INSTALL_CANCEL = 15608;

// Install failed. Please contact your software vendor.
pub const ERROR_INSTALL_FAILED = 15609;

// Removal failed. Please contact your software vendor.
pub const ERROR_REMOVE_FAILED = 15610;

// The provided package is already installed, and reinstallation of the package was blocked. Check the AppXDeployment-Server event log for details.
pub const ERROR_PACKAGE_ALREADY_EXISTS = 15611;

// The application cannot be started. Try reinstalling the application to fix the problem.
pub const ERROR_NEEDS_REMEDIATION = 15612;

// A Prerequisite for an install could not be satisfied.
pub const ERROR_INSTALL_PREREQUISITE_FAILED = 15613;

// The package repository is corrupted.
pub const ERROR_PACKAGE_REPOSITORY_CORRUPTED = 15614;

// To install this application you need either a Windows developer license or a sideloading-enabled system.
pub const ERROR_INSTALL_POLICY_FAILURE = 15615;

// The application cannot be started because it is currently updating.
pub const ERROR_PACKAGE_UPDATING = 15616;

// The package deployment operation is blocked by policy. Please contact your system administrator.
pub const ERROR_DEPLOYMENT_BLOCKED_BY_POLICY = 15617;

// The package could not be installed because resources it modifies are currently in use.
pub const ERROR_PACKAGES_IN_USE = 15618;

// The package could not be recovered because necessary data for recovery have been corrupted.
pub const ERROR_RECOVERY_FILE_CORRUPT = 15619;

// The signature is invalid. To register in developer mode, AppxSignature.p7x and AppxBlockMap.xml must be valid or should not be present.
pub const ERROR_INVALID_STAGED_SIGNATURE = 15620;

// An error occurred while deleting the package's previously existing application data.
pub const ERROR_DELETING_EXISTING_APPLICATIONDATA_STORE_FAILED = 15621;

// The package could not be installed because a higher version of this package is already installed.
pub const ERROR_INSTALL_PACKAGE_DOWNGRADE = 15622;

// An error in a system binary was detected. Try refreshing the PC to fix the problem.
pub const ERROR_SYSTEM_NEEDS_REMEDIATION = 15623;

// A corrupted CLR NGEN binary was detected on the system.
pub const ERROR_APPX_INTEGRITY_FAILURE_CLR_NGEN = 15624;

// The operation could not be resumed because necessary data for recovery have been corrupted.
pub const ERROR_RESILIENCY_FILE_CORRUPT = 15625;

// The package could not be installed because the Windows Firewall service is not running. Enable the Windows Firewall service and try again.
pub const ERROR_INSTALL_FIREWALL_SERVICE_NOT_RUNNING = 15626;

// Package move failed.
pub const ERROR_PACKAGE_MOVE_FAILED = 15627;

// The deployment operation failed because the volume is not empty.
pub const ERROR_INSTALL_VOLUME_NOT_EMPTY = 15628;

// The deployment operation failed because the volume is offline.
pub const ERROR_INSTALL_VOLUME_OFFLINE = 15629;

// The deployment operation failed because the specified volume is corrupt.
pub const ERROR_INSTALL_VOLUME_CORRUPT = 15630;

// The deployment operation failed because the specified application needs to be registered first.
pub const ERROR_NEEDS_REGISTRATION = 15631;

// The deployment operation failed because the package targets the wrong processor architecture.
pub const ERROR_INSTALL_WRONG_PROCESSOR_ARCHITECTURE = 15632;

// You have reached the maximum number of developer sideloaded packages allowed on this device. Please uninstall a sideloaded package and try again.
pub const ERROR_DEV_SIDELOAD_LIMIT_EXCEEDED = 15633;

// A main app package is required to install this optional package.  Install the main package first and try again.
pub const ERROR_INSTALL_OPTIONAL_PACKAGE_REQUIRES_MAIN_PACKAGE = 15634;

// This app package type is not supported on this filesystem
pub const ERROR_PACKAGE_NOT_SUPPORTED_ON_FILESYSTEM = 15635;

// Package move operation is blocked until the application has finished streaming
pub const ERROR_PACKAGE_MOVE_BLOCKED_BY_STREAMING = 15636;

// A main or another optional app package has the same application ID as this optional package.  Change the application ID for the optional package to avoid conflicts.
pub const ERROR_INSTALL_OPTIONAL_PACKAGE_APPLICATIONID_NOT_UNIQUE = 15637;

// This staging session has been held to allow another staging operation to be prioritized.
pub const ERROR_PACKAGE_STAGING_ONHOLD = 15638;

// A related set cannot be updated because the updated set is invalid. All packages in the related set must be updated at the same time.
pub const ERROR_INSTALL_INVALID_RELATED_SET_UPDATE = 15639;

// An optional package with a FullTrust entry point requires the main package to have the runFullTrust capability.
pub const ERROR_INSTALL_OPTIONAL_PACKAGE_REQUIRES_MAIN_PACKAGE_FULLTRUST_CAPABILITY = 15640;

// An error occurred because a user was logged off.
pub const ERROR_DEPLOYMENT_BLOCKED_BY_USER_LOG_OFF = 15641;

// An optional package provision requires the dependency main package to also be provisioned.
pub const ERROR_PROVISION_OPTIONAL_PACKAGE_REQUIRES_MAIN_PACKAGE_PROVISIONED = 15642;

// The packages failed the SmartScreen reputation check.
pub const ERROR_PACKAGES_REPUTATION_CHECK_FAILED = 15643;

// The SmartScreen reputation check operation timed out.
pub const ERROR_PACKAGES_REPUTATION_CHECK_TIMEDOUT = 15644;

// The process has no package identity.
pub const APPMODEL_ERROR_NO_PACKAGE = 15700;

// The package runtime information is corrupted.
pub const APPMODEL_ERROR_PACKAGE_RUNTIME_CORRUPT = 15701;

// The package identity is corrupted.
pub const APPMODEL_ERROR_PACKAGE_IDENTITY_CORRUPT = 15702;

// The process has no application identity.
pub const APPMODEL_ERROR_NO_APPLICATION = 15703;

// One or more AppModel Runtime group policy values could not be read. Please contact your system administrator with the contents of your AppModel Runtime event log.
pub const APPMODEL_ERROR_DYNAMIC_PROPERTY_READ_FAILED = 15704;

// One or more AppModel Runtime group policy values are invalid. Please contact your system administrator with the contents of your AppModel Runtime event log.
pub const APPMODEL_ERROR_DYNAMIC_PROPERTY_INVALID = 15705;

// The package is currently not available.
pub const APPMODEL_ERROR_PACKAGE_NOT_AVAILABLE = 15706;

// Loading the state store failed.
pub const ERROR_STATE_LOAD_STORE_FAILED = 15800;

// Retrieving the state version for the application failed.
pub const ERROR_STATE_GET_VERSION_FAILED = 15801;

// Setting the state version for the application failed.
pub const ERROR_STATE_SET_VERSION_FAILED = 15802;

// Resetting the structured state of the application failed.
pub const ERROR_STATE_STRUCTURED_RESET_FAILED = 15803;

// State Manager failed to open the container.
pub const ERROR_STATE_OPEN_CONTAINER_FAILED = 15804;

// State Manager failed to create the container.
pub const ERROR_STATE_CREATE_CONTAINER_FAILED = 15805;

// State Manager failed to delete the container.
pub const ERROR_STATE_DELETE_CONTAINER_FAILED = 15806;

// State Manager failed to read the setting.
pub const ERROR_STATE_READ_SETTING_FAILED = 15807;

// State Manager failed to write the setting.
pub const ERROR_STATE_WRITE_SETTING_FAILED = 15808;

// State Manager failed to delete the setting.
pub const ERROR_STATE_DELETE_SETTING_FAILED = 15809;

// State Manager failed to query the setting.
pub const ERROR_STATE_QUERY_SETTING_FAILED = 15810;

// State Manager failed to read the composite setting.
pub const ERROR_STATE_READ_COMPOSITE_SETTING_FAILED = 15811;

// State Manager failed to write the composite setting.
pub const ERROR_STATE_WRITE_COMPOSITE_SETTING_FAILED = 15812;

// State Manager failed to enumerate the containers.
pub const ERROR_STATE_ENUMERATE_CONTAINER_FAILED = 15813;

// State Manager failed to enumerate the settings.
pub const ERROR_STATE_ENUMERATE_SETTINGS_FAILED = 15814;

// The size of the state manager composite setting value has exceeded the limit.
pub const ERROR_STATE_COMPOSITE_SETTING_VALUE_SIZE_LIMIT_EXCEEDED = 15815;

// The size of the state manager setting value has exceeded the limit.
pub const ERROR_STATE_SETTING_VALUE_SIZE_LIMIT_EXCEEDED = 15816;

// The length of the state manager setting name has exceeded the limit.
pub const ERROR_STATE_SETTING_NAME_SIZE_LIMIT_EXCEEDED = 15817;

// The length of the state manager container name has exceeded the limit.
pub const ERROR_STATE_CONTAINER_NAME_SIZE_LIMIT_EXCEEDED = 15818;

// This API cannot be used in the context of the caller's application type.
pub const ERROR_API_UNAVAILABLE = 15841;

// This PC does not have a valid license for the application or product.
pub const STORE_ERROR_UNLICENSED = 15861;

// The authenticated user does not have a valid license for the application or product.
pub const STORE_ERROR_UNLICENSED_USER = 15862;

// The commerce transaction associated with this license is still pending verification.
pub const STORE_ERROR_PENDING_COM_TRANSACTION = 15863;

// The license has been revoked for this user.
pub const STORE_ERROR_LICENSE_REVOKED = 15864;

// Severity values
pub const SEVERITY_SUCCESS = 0;
pub const SEVERITY_ERROR = 1;

// Define bits here so macros are guaranteed to work
pub const FACILITY_NT_BIT = 0x10000000;

// ****** End of OBSOLETE functions.
pub const E_NOT_SET = HRESULT_FROM_WIN32(ERROR_NOT_FOUND);
pub const E_NOT_VALID_STATE = HRESULT_FROM_WIN32(ERROR_INVALID_STATE);
pub const E_NOT_SUFFICIENT_BUFFER = HRESULT_FROM_WIN32(ERROR_INSUFFICIENT_BUFFER);
pub const NOERROR = 0;

// Catastrophic failure
pub const E_UNEXPECTED = 0x8000FFFF;

// Not implemented
pub const E_NOTIMPL = 0x80004001;

// Ran out of memory
pub const E_OUTOFMEMORY = 0x8007000E;

// One or more arguments are invalid
pub const E_INVALIDARG = 0x80070057;

// No such interface supported
pub const E_NOINTERFACE = 0x80004002;

// Invalid pointer
pub const E_POINTER = 0x80004003;

// Invalid handle
pub const E_HANDLE = 0x80070006;

// Operation aborted
pub const E_ABORT = 0x80004004;

// Unspecified error
pub const E_FAIL = 0x80004005;

// General access denied error
pub const E_ACCESSDENIED = 0x80070005;

// The data necessary to complete this operation is not yet available.
pub const E_PENDING = 0x8000000A;

// The operation attempted to access data outside the valid range
pub const E_BOUNDS = 0x8000000B;

// A concurrent or interleaved operation changed the state of the object, invalidating this operation.
pub const E_CHANGED_STATE = 0x8000000C;

// An illegal state change was requested.
pub const E_ILLEGAL_STATE_CHANGE = 0x8000000D;

// A method was called at an unexpected time.
pub const E_ILLEGAL_METHOD_CALL = 0x8000000E;

// Typename or Namespace was not found in metadata file.
pub const RO_E_METADATA_NAME_NOT_FOUND = 0x8000000F;

// Name is an existing namespace rather than a typename.
pub const RO_E_METADATA_NAME_IS_NAMESPACE = 0x80000010;

// Typename has an invalid format.
pub const RO_E_METADATA_INVALID_TYPE_FORMAT = 0x80000011;

// Metadata file is invalid or corrupted.
pub const RO_E_INVALID_METADATA_FILE = 0x80000012;

// The object has been closed.
pub const RO_E_CLOSED = 0x80000013;

// Only one thread may access the object during a write operation.
pub const RO_E_EXCLUSIVE_WRITE = 0x80000014;

// Operation is prohibited during change notification.
pub const RO_E_CHANGE_NOTIFICATION_IN_PROGRESS = 0x80000015;

// The text associated with this error code could not be found.
pub const RO_E_ERROR_STRING_NOT_FOUND = 0x80000016;

// String not null terminated.
pub const E_STRING_NOT_NULL_TERMINATED = 0x80000017;

// A delegate was assigned when not allowed.
pub const E_ILLEGAL_DELEGATE_ASSIGNMENT = 0x80000018;

// An async operation was not properly started.
pub const E_ASYNC_OPERATION_NOT_STARTED = 0x80000019;

// The application is exiting and cannot service this request
pub const E_APPLICATION_EXITING = 0x8000001A;

// The application view is exiting and cannot service this request
pub const E_APPLICATION_VIEW_EXITING = 0x8000001B;

// The object must support the IAgileObject interface
pub const RO_E_MUST_BE_AGILE = 0x8000001C;

// Activating a single-threaded class from MTA is not supported
pub const RO_E_UNSUPPORTED_FROM_MTA = 0x8000001D;

// The object has been committed.
pub const RO_E_COMMITTED = 0x8000001E;

// A COM call to an ASTA was blocked because the call chain originated in or passed through another ASTA. This call pattern is deadlock-prone and disallowed by apartment call control.
pub const RO_E_BLOCKED_CROSS_ASTA_CALL = 0x8000001F;

// A universal application process cannot activate a packaged WinRT server that is declared to run full trust.
pub const RO_E_CANNOT_ACTIVATE_FULL_TRUST_SERVER = 0x80000020;

// A full trust packaged application process cannot activate a packaged WinRT server unless it is also declared to run full trust.
pub const RO_E_CANNOT_ACTIVATE_UNIVERSAL_APPLICATION_SERVER = 0x80000021;

// Thread local storage failure
pub const CO_E_INIT_TLS = 0x80004006;

// Get shared memory allocator failure
pub const CO_E_INIT_SHARED_ALLOCATOR = 0x80004007;

// Get memory allocator failure
pub const CO_E_INIT_MEMORY_ALLOCATOR = 0x80004008;

// Unable to initialize class cache
pub const CO_E_INIT_CLASS_CACHE = 0x80004009;

// Unable to initialize RPC services
pub const CO_E_INIT_RPC_CHANNEL = 0x8000400A;

// Cannot set thread local storage channel control
pub const CO_E_INIT_TLS_SET_CHANNEL_CONTROL = 0x8000400B;

// Could not allocate thread local storage channel control
pub const CO_E_INIT_TLS_CHANNEL_CONTROL = 0x8000400C;

// The user supplied memory allocator is unacceptable
pub const CO_E_INIT_UNACCEPTED_USER_ALLOCATOR = 0x8000400D;

// The OLE service mutex already exists
pub const CO_E_INIT_SCM_MUTEX_EXISTS = 0x8000400E;

// The OLE service file mapping already exists
pub const CO_E_INIT_SCM_FILE_MAPPING_EXISTS = 0x8000400F;

// Unable to map view of file for OLE service
pub const CO_E_INIT_SCM_MAP_VIEW_OF_FILE = 0x80004010;

// Failure attempting to launch OLE service
pub const CO_E_INIT_SCM_EXEC_FAILURE = 0x80004011;

// There was an attempt to call CoInitialize a second time while single threaded
pub const CO_E_INIT_ONLY_SINGLE_THREADED = 0x80004012;

// A Remote activation was necessary but was not allowed
pub const CO_E_CANT_REMOTE = 0x80004013;

// A Remote activation was necessary but the server name provided was invalid
pub const CO_E_BAD_SERVER_NAME = 0x80004014;

// The class is configured to run as a security id different from the caller
pub const CO_E_WRONG_SERVER_IDENTITY = 0x80004015;

// Use of Ole1 services requiring DDE windows is disabled
pub const CO_E_OLE1DDE_DISABLED = 0x80004016;

// A RunAs specification must be <domain name>\<user name> or simply <user name>
pub const CO_E_RUNAS_SYNTAX = 0x80004017;

// The server process could not be started. The pathname may be incorrect.
pub const CO_E_CREATEPROCESS_FAILURE = 0x80004018;

// The server process could not be started as the configured identity. The pathname may be incorrect or unavailable.
pub const CO_E_RUNAS_CREATEPROCESS_FAILURE = 0x80004019;

// The server process could not be started because the configured identity is incorrect. Check the username and password.
pub const CO_E_RUNAS_LOGON_FAILURE = 0x8000401A;

// The client is not allowed to launch this server.
pub const CO_E_LAUNCH_PERMSSION_DENIED = 0x8000401B;

// The service providing this server could not be started.
pub const CO_E_START_SERVICE_FAILURE = 0x8000401C;

// This computer was unable to communicate with the computer providing the server.
pub const CO_E_REMOTE_COMMUNICATION_FAILURE = 0x8000401D;

// The server did not respond after being launched.
pub const CO_E_SERVER_START_TIMEOUT = 0x8000401E;

// The registration information for this server is inconsistent or incomplete.
pub const CO_E_CLSREG_INCONSISTENT = 0x8000401F;

// The registration information for this interface is inconsistent or incomplete.
pub const CO_E_IIDREG_INCONSISTENT = 0x80004020;

// The operation attempted is not supported.
pub const CO_E_NOT_SUPPORTED = 0x80004021;

// A dll must be loaded.
pub const CO_E_RELOAD_DLL = 0x80004022;

// A Microsoft Software Installer error was encountered.
pub const CO_E_MSI_ERROR = 0x80004023;

// The specified activation could not occur in the client context as specified.
pub const CO_E_ATTEMPT_TO_CREATE_OUTSIDE_CLIENT_CONTEXT = 0x80004024;

// Activations on the server are paused.
pub const CO_E_SERVER_PAUSED = 0x80004025;

// Activations on the server are not paused.
pub const CO_E_SERVER_NOT_PAUSED = 0x80004026;

// The component or application containing the component has been disabled.
pub const CO_E_CLASS_DISABLED = 0x80004027;

// The common language runtime is not available
pub const CO_E_CLRNOTAVAILABLE = 0x80004028;

// The thread-pool rejected the submitted asynchronous work.
pub const CO_E_ASYNC_WORK_REJECTED = 0x80004029;

// The server started, but did not finish initializing in a timely fashion.
pub const CO_E_SERVER_INIT_TIMEOUT = 0x8000402A;

// Unable to complete the call since there is no COM+ security context inside IObjectControl.Activate.
pub const CO_E_NO_SECCTX_IN_ACTIVATE = 0x8000402B;

// The provided tracker configuration is invalid
pub const CO_E_TRACKER_CONFIG = 0x80004030;

// The provided thread pool configuration is invalid
pub const CO_E_THREADPOOL_CONFIG = 0x80004031;

// The provided side-by-side configuration is invalid
pub const CO_E_SXS_CONFIG = 0x80004032;

// The server principal name (SPN) obtained during security negotiation is malformed.
pub const CO_E_MALFORMED_SPN = 0x80004033;

// The caller failed to revoke a per-apartment registration before apartment shutdown.
pub const CO_E_UNREVOKED_REGISTRATION_ON_APARTMENT_SHUTDOWN = 0x80004034;

// The object has been rundown by the stub manager while there are external clients.
pub const CO_E_PREMATURE_STUB_RUNDOWN = 0x80004035;

// Invalid OLEVERB structure
pub const OLE_E_OLEVERB = 0x80040000;

// Invalid advise flags
pub const OLE_E_ADVF = 0x80040001;

// Can't enumerate any more, because the associated data is missing
pub const OLE_E_ENUM_NOMORE = 0x80040002;

// This implementation doesn't take advises
pub const OLE_E_ADVISENOTSUPPORTED = 0x80040003;

// There is no connection for this connection ID
pub const OLE_E_NOCONNECTION = 0x80040004;

// Need to run the object to perform this operation
pub const OLE_E_NOTRUNNING = 0x80040005;

// There is no cache to operate on
pub const OLE_E_NOCACHE = 0x80040006;

// Uninitialized object
pub const OLE_E_BLANK = 0x80040007;

// Linked object's source class has changed
pub const OLE_E_CLASSDIFF = 0x80040008;

// Not able to get the moniker of the object
pub const OLE_E_CANT_GETMONIKER = 0x80040009;

// Not able to bind to the source
pub const OLE_E_CANT_BINDTOSOURCE = 0x8004000A;

// Object is static; operation not allowed
pub const OLE_E_STATIC = 0x8004000B;

// User canceled out of save dialog
pub const OLE_E_PROMPTSAVECANCELLED = 0x8004000C;

// Invalid rectangle
pub const OLE_E_INVALIDRECT = 0x8004000D;

// compobj.dll is too old for the ole2.dll initialized
pub const OLE_E_WRONGCOMPOBJ = 0x8004000E;

// Invalid window handle
pub const OLE_E_INVALIDHWND = 0x8004000F;

// Object is not in any of the inplace active states
pub const OLE_E_NOT_INPLACEACTIVE = 0x80040010;

// Not able to convert object
pub const OLE_E_CANTCONVERT = 0x80040011;

// Not able to perform the operation because object is not given storage yet
pub const OLE_E_NOSTORAGE = 0x80040012;

// Invalid FORMATETC structure
pub const DV_E_FORMATETC = 0x80040064;

// Invalid DVTARGETDEVICE structure
pub const DV_E_DVTARGETDEVICE = 0x80040065;

// Invalid STDGMEDIUM structure
pub const DV_E_STGMEDIUM = 0x80040066;

// Invalid STATDATA structure
pub const DV_E_STATDATA = 0x80040067;

// Invalid lindex
pub const DV_E_LINDEX = 0x80040068;

// Invalid tymed
pub const DV_E_TYMED = 0x80040069;

// Invalid clipboard format
pub const DV_E_CLIPFORMAT = 0x8004006A;

// Invalid aspect(s)
pub const DV_E_DVASPECT = 0x8004006B;

// tdSize parameter of the DVTARGETDEVICE structure is invalid
pub const DV_E_DVTARGETDEVICE_SIZE = 0x8004006C;

// Object doesn't support IViewObject interface
pub const DV_E_NOIVIEWOBJECT = 0x8004006D;
pub const DRAGDROP_E_FIRST = 0x80040100;
pub const DRAGDROP_E_LAST = 0x8004010F;
pub const DRAGDROP_S_FIRST = 0x00040100;
pub const DRAGDROP_S_LAST = 0x0004010F;

// Trying to revoke a drop target that has not been registered
pub const DRAGDROP_E_NOTREGISTERED = 0x80040100;

// This window has already been registered as a drop target
pub const DRAGDROP_E_ALREADYREGISTERED = 0x80040101;

// Invalid window handle
pub const DRAGDROP_E_INVALIDHWND = 0x80040102;

// A drag operation is already in progress
pub const DRAGDROP_E_CONCURRENT_DRAG_ATTEMPTED = 0x80040103;
pub const CLASSFACTORY_E_FIRST = 0x80040110;
pub const CLASSFACTORY_E_LAST = 0x8004011F;
pub const CLASSFACTORY_S_FIRST = 0x00040110;
pub const CLASSFACTORY_S_LAST = 0x0004011F;

// Class does not support aggregation (or class object is remote)
pub const CLASS_E_NOAGGREGATION = 0x80040110;

// ClassFactory cannot supply requested class
pub const CLASS_E_CLASSNOTAVAILABLE = 0x80040111;

// Class is not licensed for use
pub const CLASS_E_NOTLICENSED = 0x80040112;
pub const MARSHAL_E_FIRST = 0x80040120;
pub const MARSHAL_E_LAST = 0x8004012F;
pub const MARSHAL_S_FIRST = 0x00040120;
pub const MARSHAL_S_LAST = 0x0004012F;
pub const DATA_E_FIRST = 0x80040130;
pub const DATA_E_LAST = 0x8004013F;
pub const DATA_S_FIRST = 0x00040130;
pub const DATA_S_LAST = 0x0004013F;
pub const VIEW_E_FIRST = 0x80040140;
pub const VIEW_E_LAST = 0x8004014F;
pub const VIEW_S_FIRST = 0x00040140;
pub const VIEW_S_LAST = 0x0004014F;

// Error drawing view
pub const VIEW_E_DRAW = 0x80040140;
pub const REGDB_E_FIRST = 0x80040150;
pub const REGDB_E_LAST = 0x8004015F;
pub const REGDB_S_FIRST = 0x00040150;
pub const REGDB_S_LAST = 0x0004015F;

// Could not read key from registry
pub const REGDB_E_READREGDB = 0x80040150;

// Could not write key to registry
pub const REGDB_E_WRITEREGDB = 0x80040151;

// Could not find the key in the registry
pub const REGDB_E_KEYMISSING = 0x80040152;

// Invalid value for registry
pub const REGDB_E_INVALIDVALUE = 0x80040153;

// Class not registered
pub const REGDB_E_CLASSNOTREG = 0x80040154;

// Interface not registered
pub const REGDB_E_IIDNOTREG = 0x80040155;

// Threading model entry is not valid
pub const REGDB_E_BADTHREADINGMODEL = 0x80040156;

// A registration in a package violates package-specific policies
pub const REGDB_E_PACKAGEPOLICYVIOLATION = 0x80040157;
pub const CAT_E_FIRST = 0x80040160;
pub const CAT_E_LAST = 0x80040161;

// CATID does not exist
pub const CAT_E_CATIDNOEXIST = 0x80040160;

// Description not found
pub const CAT_E_NODESCRIPTION = 0x80040161;
pub const CS_E_FIRST = 0x80040164;
pub const CS_E_LAST = 0x8004016F;

// No package in the software installation data in the Active Directory meets this criteria.
pub const CS_E_PACKAGE_NOTFOUND = 0x80040164;

// Deleting this will break the referential integrity of the software installation data in the Active Directory.
pub const CS_E_NOT_DELETABLE = 0x80040165;

// The CLSID was not found in the software installation data in the Active Directory.
pub const CS_E_CLASS_NOTFOUND = 0x80040166;

// The software installation data in the Active Directory is corrupt.
pub const CS_E_INVALID_VERSION = 0x80040167;

// There is no software installation data in the Active Directory.
pub const CS_E_NO_CLASSSTORE = 0x80040168;

// There is no software installation data object in the Active Directory.
pub const CS_E_OBJECT_NOTFOUND = 0x80040169;

// The software installation data object in the Active Directory already exists.
pub const CS_E_OBJECT_ALREADY_EXISTS = 0x8004016A;

// The path to the software installation data in the Active Directory is not correct.
pub const CS_E_INVALID_PATH = 0x8004016B;

// A network error interrupted the operation.
pub const CS_E_NETWORK_ERROR = 0x8004016C;

// The size of this object exceeds the maximum size set by the Administrator.
pub const CS_E_ADMIN_LIMIT_EXCEEDED = 0x8004016D;

// The schema for the software installation data in the Active Directory does not match the required schema.
pub const CS_E_SCHEMA_MISMATCH = 0x8004016E;

// An error occurred in the software installation data in the Active Directory.
pub const CS_E_INTERNAL_ERROR = 0x8004016F;
pub const CACHE_E_FIRST = 0x80040170;
pub const CACHE_E_LAST = 0x8004017F;
pub const CACHE_S_FIRST = 0x00040170;
pub const CACHE_S_LAST = 0x0004017F;

// Cache not updated
pub const CACHE_E_NOCACHE_UPDATED = 0x80040170;
pub const OLEOBJ_E_FIRST = 0x80040180;
pub const OLEOBJ_E_LAST = 0x8004018F;
pub const OLEOBJ_S_FIRST = 0x00040180;
pub const OLEOBJ_S_LAST = 0x0004018F;

// No verbs for OLE object
pub const OLEOBJ_E_NOVERBS = 0x80040180;

// Invalid verb for OLE object
pub const OLEOBJ_E_INVALIDVERB = 0x80040181;
pub const CLIENTSITE_E_FIRST = 0x80040190;
pub const CLIENTSITE_E_LAST = 0x8004019F;
pub const CLIENTSITE_S_FIRST = 0x00040190;
pub const CLIENTSITE_S_LAST = 0x0004019F;

// Undo is not available
pub const INPLACE_E_NOTUNDOABLE = 0x800401A0;

// Space for tools is not available
pub const INPLACE_E_NOTOOLSPACE = 0x800401A1;
pub const INPLACE_E_FIRST = 0x800401A0;
pub const INPLACE_E_LAST = 0x800401AF;
pub const INPLACE_S_FIRST = 0x000401A0;
pub const INPLACE_S_LAST = 0x000401AF;
pub const ENUM_E_FIRST = 0x800401B0;
pub const ENUM_E_LAST = 0x800401BF;
pub const ENUM_S_FIRST = 0x000401B0;
pub const ENUM_S_LAST = 0x000401BF;
pub const CONVERT10_E_FIRST = 0x800401C0;
pub const CONVERT10_E_LAST = 0x800401CF;
pub const CONVERT10_S_FIRST = 0x000401C0;
pub const CONVERT10_S_LAST = 0x000401CF;

// OLESTREAM Get method failed
pub const CONVERT10_E_OLESTREAM_GET = 0x800401C0;

// OLESTREAM Put method failed
pub const CONVERT10_E_OLESTREAM_PUT = 0x800401C1;

// Contents of the OLESTREAM not in correct format
pub const CONVERT10_E_OLESTREAM_FMT = 0x800401C2;

// There was an error in a Windows GDI call while converting the bitmap to a DIB
pub const CONVERT10_E_OLESTREAM_BITMAP_TO_DIB = 0x800401C3;

// Contents of the IStorage not in correct format
pub const CONVERT10_E_STG_FMT = 0x800401C4;

// Contents of IStorage is missing one of the standard streams
pub const CONVERT10_E_STG_NO_STD_STREAM = 0x800401C5;

// There was an error in a Windows GDI call while converting the DIB to a bitmap.
pub const CONVERT10_E_STG_DIB_TO_BITMAP = 0x800401C6;
pub const CLIPBRD_E_FIRST = 0x800401D0;
pub const CLIPBRD_E_LAST = 0x800401DF;
pub const CLIPBRD_S_FIRST = 0x000401D0;
pub const CLIPBRD_S_LAST = 0x000401DF;

// OpenClipboard Failed
pub const CLIPBRD_E_CANT_OPEN = 0x800401D0;

// EmptyClipboard Failed
pub const CLIPBRD_E_CANT_EMPTY = 0x800401D1;

// SetClipboard Failed
pub const CLIPBRD_E_CANT_SET = 0x800401D2;

// Data on clipboard is invalid
pub const CLIPBRD_E_BAD_DATA = 0x800401D3;

// CloseClipboard Failed
pub const CLIPBRD_E_CANT_CLOSE = 0x800401D4;
pub const MK_E_FIRST = 0x800401E0;
pub const MK_E_LAST = 0x800401EF;
pub const MK_S_FIRST = 0x000401E0;
pub const MK_S_LAST = 0x000401EF;

// Moniker needs to be connected manually
pub const MK_E_CONNECTMANUALLY = 0x800401E0;

// Operation exceeded deadline
pub const MK_E_EXCEEDEDDEADLINE = 0x800401E1;

// Moniker needs to be generic
pub const MK_E_NEEDGENERIC = 0x800401E2;

// Operation unavailable
pub const MK_E_UNAVAILABLE = 0x800401E3;

// Invalid syntax
pub const MK_E_SYNTAX = 0x800401E4;

// No object for moniker
pub const MK_E_NOOBJECT = 0x800401E5;

// Bad extension for file
pub const MK_E_INVALIDEXTENSION = 0x800401E6;

// Intermediate operation failed
pub const MK_E_INTERMEDIATEINTERFACENOTSUPPORTED = 0x800401E7;

// Moniker is not bindable
pub const MK_E_NOTBINDABLE = 0x800401E8;

// Moniker is not bound
pub const MK_E_NOTBOUND = 0x800401E9;

// Moniker cannot open file
pub const MK_E_CANTOPENFILE = 0x800401EA;

// User input required for operation to succeed
pub const MK_E_MUSTBOTHERUSER = 0x800401EB;

// Moniker class has no inverse
pub const MK_E_NOINVERSE = 0x800401EC;

// Moniker does not refer to storage
pub const MK_E_NOSTORAGE = 0x800401ED;

// No common prefix
pub const MK_E_NOPREFIX = 0x800401EE;

// Moniker could not be enumerated
pub const MK_E_ENUMERATION_FAILED = 0x800401EF;
pub const CO_E_FIRST = 0x800401F0;
pub const CO_E_LAST = 0x800401FF;
pub const CO_S_FIRST = 0x000401F0;
pub const CO_S_LAST = 0x000401FF;

// CoInitialize has not been called.
pub const CO_E_NOTINITIALIZED = 0x800401F0;

// CoInitialize has already been called.
pub const CO_E_ALREADYINITIALIZED = 0x800401F1;

// Class of object cannot be determined
pub const CO_E_CANTDETERMINECLASS = 0x800401F2;

// Invalid class string
pub const CO_E_CLASSSTRING = 0x800401F3;

// Invalid interface string
pub const CO_E_IIDSTRING = 0x800401F4;

// Application not found
pub const CO_E_APPNOTFOUND = 0x800401F5;

// Application cannot be run more than once
pub const CO_E_APPSINGLEUSE = 0x800401F6;

// Some error in application program
pub const CO_E_ERRORINAPP = 0x800401F7;

// DLL for class not found
pub const CO_E_DLLNOTFOUND = 0x800401F8;

// Error in the DLL
pub const CO_E_ERRORINDLL = 0x800401F9;

// Wrong OS or OS version for application
pub const CO_E_WRONGOSFORAPP = 0x800401FA;

// Object is not registered
pub const CO_E_OBJNOTREG = 0x800401FB;

// Object is already registered
pub const CO_E_OBJISREG = 0x800401FC;

// Object is not connected to server
pub const CO_E_OBJNOTCONNECTED = 0x800401FD;

// Application was launched but it didn't register a class factory
pub const CO_E_APPDIDNTREG = 0x800401FE;

// Object has been released
pub const CO_E_RELEASED = 0x800401FF;
pub const EVENT_E_FIRST = 0x80040200;
pub const EVENT_E_LAST = 0x8004021F;
pub const EVENT_S_FIRST = 0x00040200;
pub const EVENT_S_LAST = 0x0004021F;

// An event was able to invoke some but not all of the subscribers
pub const EVENT_S_SOME_SUBSCRIBERS_FAILED = 0x00040200;

// An event was unable to invoke any of the subscribers
pub const EVENT_E_ALL_SUBSCRIBERS_FAILED = 0x80040201;

// An event was delivered but there were no subscribers
pub const EVENT_S_NOSUBSCRIBERS = 0x00040202;

// A syntax error occurred trying to evaluate a query string
pub const EVENT_E_QUERYSYNTAX = 0x80040203;

// An invalid field name was used in a query string
pub const EVENT_E_QUERYFIELD = 0x80040204;

// An unexpected exception was raised
pub const EVENT_E_INTERNALEXCEPTION = 0x80040205;

// An unexpected internal error was detected
pub const EVENT_E_INTERNALERROR = 0x80040206;

// The owner SID on a per-user subscription doesn't exist
pub const EVENT_E_INVALID_PER_USER_SID = 0x80040207;

// A user-supplied component or subscriber raised an exception
pub const EVENT_E_USER_EXCEPTION = 0x80040208;

// An interface has too many methods to fire events from
pub const EVENT_E_TOO_MANY_METHODS = 0x80040209;

// A subscription cannot be stored unless its event class already exists
pub const EVENT_E_MISSING_EVENTCLASS = 0x8004020A;

// Not all the objects requested could be removed
pub const EVENT_E_NOT_ALL_REMOVED = 0x8004020B;

// COM+ is required for this operation, but is not installed
pub const EVENT_E_COMPLUS_NOT_INSTALLED = 0x8004020C;

// Cannot modify or delete an object that was not added using the COM+ Admin SDK
pub const EVENT_E_CANT_MODIFY_OR_DELETE_UNCONFIGURED_OBJECT = 0x8004020D;

// Cannot modify or delete an object that was added using the COM+ Admin SDK
pub const EVENT_E_CANT_MODIFY_OR_DELETE_CONFIGURED_OBJECT = 0x8004020E;

// The event class for this subscription is in an invalid partition
pub const EVENT_E_INVALID_EVENT_CLASS_PARTITION = 0x8004020F;

// The owner of the PerUser subscription is not logged on to the system specified
pub const EVENT_E_PER_USER_SID_NOT_LOGGED_ON = 0x80040210;

// TabletPC inking error code. The property was not found, or supported by the recognizer
pub const TPC_E_INVALID_PROPERTY = 0x80040241;

// TabletPC inking error code. No default tablet
pub const TPC_E_NO_DEFAULT_TABLET = 0x80040212;

// TabletPC inking error code. Unknown property specified
pub const TPC_E_UNKNOWN_PROPERTY = 0x8004021B;

// TabletPC inking error code. An invalid input rectangle was specified
pub const TPC_E_INVALID_INPUT_RECT = 0x80040219;

// TabletPC inking error code. The stroke object was deleted
pub const TPC_E_INVALID_STROKE = 0x80040222;

// TabletPC inking error code. Initialization failure
pub const TPC_E_INITIALIZE_FAIL = 0x80040223;

// TabletPC inking error code. The data required for the operation was not supplied
pub const TPC_E_NOT_RELEVANT = 0x80040232;

// TabletPC inking error code. Invalid packet description
pub const TPC_E_INVALID_PACKET_DESCRIPTION = 0x80040233;

// TabletPC inking error code. There are no handwriting recognizers registered
pub const TPC_E_RECOGNIZER_NOT_REGISTERED = 0x80040235;

// TabletPC inking error code. User does not have the necessary rights to read recognizer information
pub const TPC_E_INVALID_RIGHTS = 0x80040236;

// TabletPC inking error code. API calls were made in an incorrect order
pub const TPC_E_OUT_OF_ORDER_CALL = 0x80040237;

// TabletPC inking error code. Queue is full
pub const TPC_E_QUEUE_FULL = 0x80040238;

// TabletPC inking error code. RtpEnabled called multiple times
pub const TPC_E_INVALID_CONFIGURATION = 0x80040239;

// TabletPC inking error code. A recognizer returned invalid data
pub const TPC_E_INVALID_DATA_FROM_RECOGNIZER = 0x8004023A;

// TabletPC inking error code. String was truncated
pub const TPC_S_TRUNCATED = 0x00040252;

// TabletPC inking error code. Recognition or training was interrupted
pub const TPC_S_INTERRUPTED = 0x00040253;

// TabletPC inking error code. No personalization update to the recognizer because no training data found
pub const TPC_S_NO_DATA_TO_PROCESS = 0x00040254;
pub const XACT_E_FIRST = 0x8004D000;
pub const XACT_E_LAST = 0x8004D02B;
pub const XACT_S_FIRST = 0x0004D000;
pub const XACT_S_LAST = 0x0004D010;

// Another single phase resource manager has already been enlisted in this transaction.
pub const XACT_E_ALREADYOTHERSINGLEPHASE = 0x8004D000;

// A retaining commit or abort is not supported
pub const XACT_E_CANTRETAIN = 0x8004D001;

// The transaction failed to commit for an unknown reason. The transaction was aborted.
pub const XACT_E_COMMITFAILED = 0x8004D002;

// Cannot call commit on this transaction object because the calling application did not initiate the transaction.
pub const XACT_E_COMMITPREVENTED = 0x8004D003;

// Instead of committing, the resource heuristically aborted.
pub const XACT_E_HEURISTICABORT = 0x8004D004;

// Instead of aborting, the resource heuristically committed.
pub const XACT_E_HEURISTICCOMMIT = 0x8004D005;

// Some of the states of the resource were committed while others were aborted, likely because of heuristic decisions.
pub const XACT_E_HEURISTICDAMAGE = 0x8004D006;

// Some of the states of the resource may have been committed while others may have been aborted, likely because of heuristic decisions.
pub const XACT_E_HEURISTICDANGER = 0x8004D007;

// The requested isolation level is not valid or supported.
pub const XACT_E_ISOLATIONLEVEL = 0x8004D008;

// The transaction manager doesn't support an asynchronous operation for this method.
pub const XACT_E_NOASYNC = 0x8004D009;

// Unable to enlist in the transaction.
pub const XACT_E_NOENLIST = 0x8004D00A;

// The requested semantics of retention of isolation across retaining commit and abort boundaries cannot be supported by this transaction implementation, or isoFlags was not equal to zero.
pub const XACT_E_NOISORETAIN = 0x8004D00B;

// There is no resource presently associated with this enlistment
pub const XACT_E_NORESOURCE = 0x8004D00C;

// The transaction failed to commit due to the failure of optimistic concurrency control in at least one of the resource managers.
pub const XACT_E_NOTCURRENT = 0x8004D00D;

// The transaction has already been implicitly or explicitly committed or aborted
pub const XACT_E_NOTRANSACTION = 0x8004D00E;

// An invalid combination of flags was specified
pub const XACT_E_NOTSUPPORTED = 0x8004D00F;

// The resource manager id is not associated with this transaction or the transaction manager.
pub const XACT_E_UNKNOWNRMGRID = 0x8004D010;

// This method was called in the wrong state
pub const XACT_E_WRONGSTATE = 0x8004D011;

// The indicated unit of work does not match the unit of work expected by the resource manager.
pub const XACT_E_WRONGUOW = 0x8004D012;

// An enlistment in a transaction already exists.
pub const XACT_E_XTIONEXISTS = 0x8004D013;

// An import object for the transaction could not be found.
pub const XACT_E_NOIMPORTOBJECT = 0x8004D014;

// The transaction cookie is invalid.
pub const XACT_E_INVALIDCOOKIE = 0x8004D015;

// The transaction status is in doubt. A communication failure occurred, or a transaction manager or resource manager has failed
pub const XACT_E_INDOUBT = 0x8004D016;

// A time-out was specified, but time-outs are not supported.
pub const XACT_E_NOTIMEOUT = 0x8004D017;

// The requested operation is already in progress for the transaction.
pub const XACT_E_ALREADYINPROGRESS = 0x8004D018;

// The transaction has already been aborted.
pub const XACT_E_ABORTED = 0x8004D019;

// The Transaction Manager returned a log full error.
pub const XACT_E_LOGFULL = 0x8004D01A;

// The Transaction Manager is not available.
pub const XACT_E_TMNOTAVAILABLE = 0x8004D01B;

// A connection with the transaction manager was lost.
pub const XACT_E_CONNECTION_DOWN = 0x8004D01C;

// A request to establish a connection with the transaction manager was denied.
pub const XACT_E_CONNECTION_DENIED = 0x8004D01D;

// Resource manager reenlistment to determine transaction status timed out.
pub const XACT_E_REENLISTTIMEOUT = 0x8004D01E;

// This transaction manager failed to establish a connection with another TIP transaction manager.
pub const XACT_E_TIP_CONNECT_FAILED = 0x8004D01F;

// This transaction manager encountered a protocol error with another TIP transaction manager.
pub const XACT_E_TIP_PROTOCOL_ERROR = 0x8004D020;

// This transaction manager could not propagate a transaction from another TIP transaction manager.
pub const XACT_E_TIP_PULL_FAILED = 0x8004D021;

// The Transaction Manager on the destination machine is not available.
pub const XACT_E_DEST_TMNOTAVAILABLE = 0x8004D022;

// The Transaction Manager has disabled its support for TIP.
pub const XACT_E_TIP_DISABLED = 0x8004D023;

// The transaction manager has disabled its support for remote/network transactions.
pub const XACT_E_NETWORK_TX_DISABLED = 0x8004D024;

// The partner transaction manager has disabled its support for remote/network transactions.
pub const XACT_E_PARTNER_NETWORK_TX_DISABLED = 0x8004D025;

// The transaction manager has disabled its support for XA transactions.
pub const XACT_E_XA_TX_DISABLED = 0x8004D026;

// MSDTC was unable to read its configuration information.
pub const XACT_E_UNABLE_TO_READ_DTC_CONFIG = 0x8004D027;

// MSDTC was unable to load the dtc proxy dll.
pub const XACT_E_UNABLE_TO_LOAD_DTC_PROXY = 0x8004D028;

// The local transaction has aborted.
pub const XACT_E_ABORTING = 0x8004D029;

// The MSDTC transaction manager was unable to push the transaction to the destination transaction manager due to communication problems. Possible causes are: a firewall is present and it doesn't have an exception for the MSDTC process, the two machines cannot find each other by their NetBIOS names, or the support for network transactions is not enabled for one of the two transaction managers.
pub const XACT_E_PUSH_COMM_FAILURE = 0x8004D02A;

// The MSDTC transaction manager was unable to pull the transaction from the source transaction manager due to communication problems. Possible causes are: a firewall is present and it doesn't have an exception for the MSDTC process, the two machines cannot find each other by their NetBIOS names, or the support for network transactions is not enabled for one of the two transaction managers.
pub const XACT_E_PULL_COMM_FAILURE = 0x8004D02B;

// The MSDTC transaction manager has disabled its support for SNA LU 6.2 transactions.
pub const XACT_E_LU_TX_DISABLED = 0x8004D02C;

//  XACT_E_CLERKNOTFOUND
pub const XACT_E_CLERKNOTFOUND = 0x8004D080;

//  XACT_E_CLERKEXISTS
pub const XACT_E_CLERKEXISTS = 0x8004D081;

//  XACT_E_RECOVERYINPROGRESS
pub const XACT_E_RECOVERYINPROGRESS = 0x8004D082;

//  XACT_E_TRANSACTIONCLOSED
pub const XACT_E_TRANSACTIONCLOSED = 0x8004D083;

//  XACT_E_INVALIDLSN
pub const XACT_E_INVALIDLSN = 0x8004D084;

//  XACT_E_REPLAYREQUEST
pub const XACT_E_REPLAYREQUEST = 0x8004D085;

// An asynchronous operation was specified. The operation has begun, but its outcome is not known yet.
pub const XACT_S_ASYNC = 0x0004D000;

//  XACT_S_DEFECT
pub const XACT_S_DEFECT = 0x0004D001;

// The method call succeeded because the transaction was read-only.
pub const XACT_S_READONLY = 0x0004D002;

// The transaction was successfully aborted. However, this is a coordinated transaction, and some number of enlisted resources were aborted outright because they could not support abort-retaining semantics
pub const XACT_S_SOMENORETAIN = 0x0004D003;

// No changes were made during this call, but the sink wants another chance to look if any other sinks make further changes.
pub const XACT_S_OKINFORM = 0x0004D004;

// The sink is content and wishes the transaction to proceed. Changes were made to one or more resources during this call.
pub const XACT_S_MADECHANGESCONTENT = 0x0004D005;

// The sink is for the moment and wishes the transaction to proceed, but if other changes are made following this return by other event sinks then this sink wants another chance to look
pub const XACT_S_MADECHANGESINFORM = 0x0004D006;

// The transaction was successfully aborted. However, the abort was non-retaining.
pub const XACT_S_ALLNORETAIN = 0x0004D007;

// An abort operation was already in progress.
pub const XACT_S_ABORTING = 0x0004D008;

// The resource manager has performed a single-phase commit of the transaction.
pub const XACT_S_SINGLEPHASE = 0x0004D009;

// The local transaction has not aborted.
pub const XACT_S_LOCALLY_OK = 0x0004D00A;

// The resource manager has requested to be the coordinator (last resource manager) for the transaction.
pub const XACT_S_LASTRESOURCEMANAGER = 0x0004D010;
pub const CONTEXT_E_FIRST = 0x8004E000;
pub const CONTEXT_E_LAST = 0x8004E02F;
pub const CONTEXT_S_FIRST = 0x0004E000;
pub const CONTEXT_S_LAST = 0x0004E02F;

// The root transaction wanted to commit, but transaction aborted
pub const CONTEXT_E_ABORTED = 0x8004E002;

// You made a method call on a COM+ component that has a transaction that has already aborted or in the process of aborting.
pub const CONTEXT_E_ABORTING = 0x8004E003;

// There is no MTS object context
pub const CONTEXT_E_NOCONTEXT = 0x8004E004;

// The component is configured to use synchronization and this method call would cause a deadlock to occur.
pub const CONTEXT_E_WOULD_DEADLOCK = 0x8004E005;

// The component is configured to use synchronization and a thread has timed out waiting to enter the context.
pub const CONTEXT_E_SYNCH_TIMEOUT = 0x8004E006;

// You made a method call on a COM+ component that has a transaction that has already committed or aborted.
pub const CONTEXT_E_OLDREF = 0x8004E007;

// The specified role was not configured for the application
pub const CONTEXT_E_ROLENOTFOUND = 0x8004E00C;

// COM+ was unable to talk to the Microsoft Distributed Transaction Coordinator
pub const CONTEXT_E_TMNOTAVAILABLE = 0x8004E00F;

// An unexpected error occurred during COM+ Activation.
pub const CO_E_ACTIVATIONFAILED = 0x8004E021;

// COM+ Activation failed. Check the event log for more information
pub const CO_E_ACTIVATIONFAILED_EVENTLOGGED = 0x8004E022;

// COM+ Activation failed due to a catalog or configuration error.
pub const CO_E_ACTIVATIONFAILED_CATALOGERROR = 0x8004E023;

// COM+ activation failed because the activation could not be completed in the specified amount of time.
pub const CO_E_ACTIVATIONFAILED_TIMEOUT = 0x8004E024;

// COM+ Activation failed because an initialization function failed. Check the event log for more information.
pub const CO_E_INITIALIZATIONFAILED = 0x8004E025;

// The requested operation requires that JIT be in the current context and it is not
pub const CONTEXT_E_NOJIT = 0x8004E026;

// The requested operation requires that the current context have a Transaction, and it does not
pub const CONTEXT_E_NOTRANSACTION = 0x8004E027;

// The components threading model has changed after install into a COM+ Application. Please re-install component.
pub const CO_E_THREADINGMODEL_CHANGED = 0x8004E028;

// IIS intrinsics not available. Start your work with IIS.
pub const CO_E_NOIISINTRINSICS = 0x8004E029;

// An attempt to write a cookie failed.
pub const CO_E_NOCOOKIES = 0x8004E02A;

// An attempt to use a database generated a database specific error.
pub const CO_E_DBERROR = 0x8004E02B;

// The COM+ component you created must use object pooling to work.
pub const CO_E_NOTPOOLED = 0x8004E02C;

// The COM+ component you created must use object construction to work correctly.
pub const CO_E_NOTCONSTRUCTED = 0x8004E02D;

// The COM+ component requires synchronization, and it is not configured for it.
pub const CO_E_NOSYNCHRONIZATION = 0x8004E02E;

// The TxIsolation Level property for the COM+ component being created is stronger than the TxIsolationLevel for the "root" component for the transaction. The creation failed.
pub const CO_E_ISOLEVELMISMATCH = 0x8004E02F;

// The component attempted to make a cross-context call between invocations of EnterTransactionScopeand ExitTransactionScope. This is not allowed. Cross-context calls cannot be made while inside of a transaction scope.
pub const CO_E_CALL_OUT_OF_TX_SCOPE_NOT_ALLOWED = 0x8004E030;

// The component made a call to EnterTransactionScope, but did not make a corresponding call to ExitTransactionScope before returning.
pub const CO_E_EXIT_TRANSACTION_SCOPE_NOT_CALLED = 0x8004E031;

// Use the registry database to provide the requested information
pub const OLE_S_USEREG = 0x00040000;

// Success, but static
pub const OLE_S_STATIC = 0x00040001;

// Macintosh clipboard format
pub const OLE_S_MAC_CLIPFORMAT = 0x00040002;

// Successful drop took place
pub const DRAGDROP_S_DROP = 0x00040100;

// Drag-drop operation canceled
pub const DRAGDROP_S_CANCEL = 0x00040101;

// Use the default cursor
pub const DRAGDROP_S_USEDEFAULTCURSORS = 0x00040102;

// Data has same FORMATETC
pub const DATA_S_SAMEFORMATETC = 0x00040130;

// View is already frozen
pub const VIEW_S_ALREADY_FROZEN = 0x00040140;

// FORMATETC not supported
pub const CACHE_S_FORMATETC_NOTSUPPORTED = 0x00040170;

// Same cache
pub const CACHE_S_SAMECACHE = 0x00040171;

// Some cache(s) not updated
pub const CACHE_S_SOMECACHES_NOTUPDATED = 0x00040172;

// Invalid verb for OLE object
pub const OLEOBJ_S_INVALIDVERB = 0x00040180;

// Verb number is valid but verb cannot be done now
pub const OLEOBJ_S_CANNOT_DOVERB_NOW = 0x00040181;

// Invalid window handle passed
pub const OLEOBJ_S_INVALIDHWND = 0x00040182;

// Message is too long; some of it had to be truncated before displaying
pub const INPLACE_S_TRUNCATED = 0x000401A0;

// Unable to convert OLESTREAM to IStorage
pub const CONVERT10_S_NO_PRESENTATION = 0x000401C0;

// Moniker reduced to itself
pub const MK_S_REDUCED_TO_SELF = 0x000401E2;

// Common prefix is this moniker
pub const MK_S_ME = 0x000401E4;

// Common prefix is input moniker
pub const MK_S_HIM = 0x000401E5;

// Common prefix is both monikers
pub const MK_S_US = 0x000401E6;

// Moniker is already registered in running object table
pub const MK_S_MONIKERALREADYREGISTERED = 0x000401E7;

// The task is ready to run at its next scheduled time.
pub const SCHED_S_TASK_READY = 0x00041300;

// The task is currently running.
pub const SCHED_S_TASK_RUNNING = 0x00041301;

// The task will not run at the scheduled times because it has been disabled.
pub const SCHED_S_TASK_DISABLED = 0x00041302;

// The task has not yet run.
pub const SCHED_S_TASK_HAS_NOT_RUN = 0x00041303;

// There are no more runs scheduled for this task.
pub const SCHED_S_TASK_NO_MORE_RUNS = 0x00041304;

// One or more of the properties that are needed to run this task on a schedule have not been set.
pub const SCHED_S_TASK_NOT_SCHEDULED = 0x00041305;

// The last run of the task was terminated by the user.
pub const SCHED_S_TASK_TERMINATED = 0x00041306;

// Either the task has no triggers or the existing triggers are disabled or not set.
pub const SCHED_S_TASK_NO_VALID_TRIGGERS = 0x00041307;

// Event triggers don't have set run times.
pub const SCHED_S_EVENT_TRIGGER = 0x00041308;

// Trigger not found.
pub const SCHED_E_TRIGGER_NOT_FOUND = 0x80041309;

// One or more of the properties that are needed to run this task have not been set.
pub const SCHED_E_TASK_NOT_READY = 0x8004130A;

// There is no running instance of the task.
pub const SCHED_E_TASK_NOT_RUNNING = 0x8004130B;

// The Task Scheduler Service is not installed on this computer.
pub const SCHED_E_SERVICE_NOT_INSTALLED = 0x8004130C;

// The task object could not be opened.
pub const SCHED_E_CANNOT_OPEN_TASK = 0x8004130D;

// The object is either an invalid task object or is not a task object.
pub const SCHED_E_INVALID_TASK = 0x8004130E;

// No account information could be found in the Task Scheduler security database for the task indicated.
pub const SCHED_E_ACCOUNT_INFORMATION_NOT_SET = 0x8004130F;

// Unable to establish existence of the account specified.
pub const SCHED_E_ACCOUNT_NAME_NOT_FOUND = 0x80041310;

// Corruption was detected in the Task Scheduler security database; the database has been reset.
pub const SCHED_E_ACCOUNT_DBASE_CORRUPT = 0x80041311;

// Task Scheduler security services are available only on Windows NT.
pub const SCHED_E_NO_SECURITY_SERVICES = 0x80041312;

// The task object version is either unsupported or invalid.
pub const SCHED_E_UNKNOWN_OBJECT_VERSION = 0x80041313;

// The task has been configured with an unsupported combination of account settings and run time options.
pub const SCHED_E_UNSUPPORTED_ACCOUNT_OPTION = 0x80041314;

// The Task Scheduler Service is not running.
pub const SCHED_E_SERVICE_NOT_RUNNING = 0x80041315;

// The task XML contains an unexpected node.
pub const SCHED_E_UNEXPECTEDNODE = 0x80041316;

// The task XML contains an element or attribute from an unexpected namespace.
pub const SCHED_E_NAMESPACE = 0x80041317;

// The task XML contains a value which is incorrectly formatted or out of range.
pub const SCHED_E_INVALIDVALUE = 0x80041318;

// The task XML is missing a required element or attribute.
pub const SCHED_E_MISSINGNODE = 0x80041319;

// The task XML is malformed.
pub const SCHED_E_MALFORMEDXML = 0x8004131A;

// The task is registered, but not all specified triggers will start the task, check task scheduler event log for detailed information.
pub const SCHED_S_SOME_TRIGGERS_FAILED = 0x0004131B;

// The task is registered, but may fail to start. Batch logon privilege needs to be enabled for the task principal.
pub const SCHED_S_BATCH_LOGON_PROBLEM = 0x0004131C;

// The task XML contains too many nodes of the same type.
pub const SCHED_E_TOO_MANY_NODES = 0x8004131D;

// The task cannot be started after the trigger's end boundary.
pub const SCHED_E_PAST_END_BOUNDARY = 0x8004131E;

// An instance of this task is already running.
pub const SCHED_E_ALREADY_RUNNING = 0x8004131F;

// The task will not run because the user is not logged on.
pub const SCHED_E_USER_NOT_LOGGED_ON = 0x80041320;

// The task image is corrupt or has been tampered with.
pub const SCHED_E_INVALID_TASK_HASH = 0x80041321;

// The Task Scheduler service is not available.
pub const SCHED_E_SERVICE_NOT_AVAILABLE = 0x80041322;

// The Task Scheduler service is too busy to handle your request. Please try again later.
pub const SCHED_E_SERVICE_TOO_BUSY = 0x80041323;

// The Task Scheduler service attempted to run the task, but the task did not run due to one of the constraints in the task definition.
pub const SCHED_E_TASK_ATTEMPTED = 0x80041324;

// The Task Scheduler service has asked the task to run.
pub const SCHED_S_TASK_QUEUED = 0x00041325;

// The task is disabled.
pub const SCHED_E_TASK_DISABLED = 0x80041326;

// The task has properties that are not compatible with previous versions of Windows.
pub const SCHED_E_TASK_NOT_V1_COMPAT = 0x80041327;

// The task settings do not allow the task to start on demand.
pub const SCHED_E_START_ON_DEMAND = 0x80041328;

// The combination of properties that task is using is not compatible with the scheduling engine.
pub const SCHED_E_TASK_NOT_UBPM_COMPAT = 0x80041329;

// The task definition uses a deprecated feature.
pub const SCHED_E_DEPRECATED_FEATURE_USED = 0x80041330;

// Attempt to create a class object failed
pub const CO_E_CLASS_CREATE_FAILED = 0x80080001;

// OLE service could not bind object
pub const CO_E_SCM_ERROR = 0x80080002;

// RPC communication failed with OLE service
pub const CO_E_SCM_RPC_FAILURE = 0x80080003;

// Bad path to object
pub const CO_E_BAD_PATH = 0x80080004;

// Server execution failed
pub const CO_E_SERVER_EXEC_FAILURE = 0x80080005;

// OLE service could not communicate with the object server
pub const CO_E_OBJSRV_RPC_FAILURE = 0x80080006;

// Moniker path could not be normalized
pub const MK_E_NO_NORMALIZED = 0x80080007;

// Object server is stopping when OLE service contacts it
pub const CO_E_SERVER_STOPPING = 0x80080008;

// An invalid root block pointer was specified
pub const MEM_E_INVALID_ROOT = 0x80080009;

// An allocation chain contained an invalid link pointer
pub const MEM_E_INVALID_LINK = 0x80080010;

// The requested allocation size was too large
pub const MEM_E_INVALID_SIZE = 0x80080011;

// Not all the requested interfaces were available
pub const CO_S_NOTALLINTERFACES = 0x00080012;

// The specified machine name was not found in the cache.
pub const CO_S_MACHINENAMENOTFOUND = 0x00080013;

// The activation requires a display name to be present under the CLSID key.
pub const CO_E_MISSING_DISPLAYNAME = 0x80080015;

// The activation requires that the RunAs value for the application is Activate As Activator.
pub const CO_E_RUNAS_VALUE_MUST_BE_AAA = 0x80080016;

// The class is not configured to support Elevated activation.
pub const CO_E_ELEVATION_DISABLED = 0x80080017;

// Appx packaging API has encountered an internal error.
pub const APPX_E_PACKAGING_INTERNAL = 0x80080200;

// The file is not a valid Appx package because its contents are interleaved.
pub const APPX_E_INTERLEAVING_NOT_ALLOWED = 0x80080201;

// The file is not a valid Appx package because it contains OPC relationships.
pub const APPX_E_RELATIONSHIPS_NOT_ALLOWED = 0x80080202;

// The file is not a valid Appx package because it is missing a manifest or block map, or missing a signature file when the code integrity file is present.
pub const APPX_E_MISSING_REQUIRED_FILE = 0x80080203;

// The Appx package's manifest is invalid.
pub const APPX_E_INVALID_MANIFEST = 0x80080204;

// The Appx package's block map is invalid.
pub const APPX_E_INVALID_BLOCKMAP = 0x80080205;

// The Appx package's content cannot be read because it is corrupt.
pub const APPX_E_CORRUPT_CONTENT = 0x80080206;

// The computed hash value of the block does not match the one stored in the block map.
pub const APPX_E_BLOCK_HASH_INVALID = 0x80080207;

// The requested byte range is over 4GB when translated to byte range of blocks.
pub const APPX_E_REQUESTED_RANGE_TOO_LARGE = 0x80080208;

// The SIP_SUBJECTINFO structure used to sign the package didn't contain the required data.
pub const APPX_E_INVALID_SIP_CLIENT_DATA = 0x80080209;

// The APPX_KEY_INFO structure used to encrypt or decrypt the package contains invalid data.
pub const APPX_E_INVALID_KEY_INFO = 0x8008020A;

// The Appx package's content group map is invalid.
pub const APPX_E_INVALID_CONTENTGROUPMAP = 0x8008020B;

// The .appinstaller file is invalid.
pub const APPX_E_INVALID_APPINSTALLER = 0x8008020C;

// The background task activation is spurious.
pub const BT_E_SPURIOUS_ACTIVATION = 0x80080300;

// Unknown interface.
pub const DISP_E_UNKNOWNINTERFACE = 0x80020001;

// Member not found.
pub const DISP_E_MEMBERNOTFOUND = 0x80020003;

// Parameter not found.
pub const DISP_E_PARAMNOTFOUND = 0x80020004;

// Type mismatch.
pub const DISP_E_TYPEMISMATCH = 0x80020005;

// Unknown name.
pub const DISP_E_UNKNOWNNAME = 0x80020006;

// No named arguments.
pub const DISP_E_NONAMEDARGS = 0x80020007;

// Bad variable type.
pub const DISP_E_BADVARTYPE = 0x80020008;

// Exception occurred.
pub const DISP_E_EXCEPTION = 0x80020009;

// Out of present range.
pub const DISP_E_OVERFLOW = 0x8002000A;

// Invalid index.
pub const DISP_E_BADINDEX = 0x8002000B;

// Unknown language.
pub const DISP_E_UNKNOWNLCID = 0x8002000C;

// Memory is locked.
pub const DISP_E_ARRAYISLOCKED = 0x8002000D;

// Invalid number of parameters.
pub const DISP_E_BADPARAMCOUNT = 0x8002000E;

// Parameter not optional.
pub const DISP_E_PARAMNOTOPTIONAL = 0x8002000F;

// Invalid callee.
pub const DISP_E_BADCALLEE = 0x80020010;

// Does not support a collection.
pub const DISP_E_NOTACOLLECTION = 0x80020011;

// Division by zero.
pub const DISP_E_DIVBYZERO = 0x80020012;

// Buffer too small
pub const DISP_E_BUFFERTOOSMALL = 0x80020013;

// Buffer too small.
pub const TYPE_E_BUFFERTOOSMALL = 0x80028016;

// Field name not defined in the record.
pub const TYPE_E_FIELDNOTFOUND = 0x80028017;

// Old format or invalid type library.
pub const TYPE_E_INVDATAREAD = 0x80028018;

// Old format or invalid type library.
pub const TYPE_E_UNSUPFORMAT = 0x80028019;

// Error accessing the OLE registry.
pub const TYPE_E_REGISTRYACCESS = 0x8002801C;

// Library not registered.
pub const TYPE_E_LIBNOTREGISTERED = 0x8002801D;

// Bound to unknown type.
pub const TYPE_E_UNDEFINEDTYPE = 0x80028027;

// Qualified name disallowed.
pub const TYPE_E_QUALIFIEDNAMEDISALLOWED = 0x80028028;

// Invalid forward reference, or reference to uncompiled type.
pub const TYPE_E_INVALIDSTATE = 0x80028029;

// Type mismatch.
pub const TYPE_E_WRONGTYPEKIND = 0x8002802A;

// Element not found.
pub const TYPE_E_ELEMENTNOTFOUND = 0x8002802B;

// Ambiguous name.
pub const TYPE_E_AMBIGUOUSNAME = 0x8002802C;

// Name already exists in the library.
pub const TYPE_E_NAMECONFLICT = 0x8002802D;

// Unknown LCID.
pub const TYPE_E_UNKNOWNLCID = 0x8002802E;

// Function not defined in specified DLL.
pub const TYPE_E_DLLFUNCTIONNOTFOUND = 0x8002802F;

// Wrong module kind for the operation.
pub const TYPE_E_BADMODULEKIND = 0x800288BD;

// Size may not exceed 64K.
pub const TYPE_E_SIZETOOBIG = 0x800288C5;

// Duplicate ID in inheritance hierarchy.
pub const TYPE_E_DUPLICATEID = 0x800288C6;

// Incorrect inheritance depth in standard OLE hmember.
pub const TYPE_E_INVALIDID = 0x800288CF;

// Type mismatch.
pub const TYPE_E_TYPEMISMATCH = 0x80028CA0;

// Invalid number of arguments.
pub const TYPE_E_OUTOFBOUNDS = 0x80028CA1;

// I/O Error.
pub const TYPE_E_IOERROR = 0x80028CA2;

// Error creating unique tmp file.
pub const TYPE_E_CANTCREATETMPFILE = 0x80028CA3;

// Error loading type library/DLL.
pub const TYPE_E_CANTLOADLIBRARY = 0x80029C4A;

// Inconsistent property functions.
pub const TYPE_E_INCONSISTENTPROPFUNCS = 0x80029C83;

// Circular dependency between types/modules.
pub const TYPE_E_CIRCULARTYPE = 0x80029C84;

// Unable to perform requested operation.
pub const STG_E_INVALIDFUNCTION = 0x80030001;

// %1 could not be found.
pub const STG_E_FILENOTFOUND = 0x80030002;

// The path %1 could not be found.
pub const STG_E_PATHNOTFOUND = 0x80030003;

// There are insufficient resources to open another file.
pub const STG_E_TOOMANYOPENFILES = 0x80030004;

// Access Denied.
pub const STG_E_ACCESSDENIED = 0x80030005;

// Attempted an operation on an invalid object.
pub const STG_E_INVALIDHANDLE = 0x80030006;

// There is insufficient memory available to complete operation.
pub const STG_E_INSUFFICIENTMEMORY = 0x80030008;

// Invalid pointer error.
pub const STG_E_INVALIDPOINTER = 0x80030009;

// There are no more entries to return.
pub const STG_E_NOMOREFILES = 0x80030012;

// Disk is write-protected.
pub const STG_E_DISKISWRITEPROTECTED = 0x80030013;

// An error occurred during a seek operation.
pub const STG_E_SEEKERROR = 0x80030019;

// A disk error occurred during a write operation.
pub const STG_E_WRITEFAULT = 0x8003001D;

// A disk error occurred during a read operation.
pub const STG_E_READFAULT = 0x8003001E;

// A share violation has occurred.
pub const STG_E_SHAREVIOLATION = 0x80030020;

// A lock violation has occurred.
pub const STG_E_LOCKVIOLATION = 0x80030021;

// %1 already exists.
pub const STG_E_FILEALREADYEXISTS = 0x80030050;

// Invalid parameter error.
pub const STG_E_INVALIDPARAMETER = 0x80030057;

// There is insufficient disk space to complete operation.
pub const STG_E_MEDIUMFULL = 0x80030070;

// Illegal write of non-simple property to simple property set.
pub const STG_E_PROPSETMISMATCHED = 0x800300F0;

// An API call exited abnormally.
pub const STG_E_ABNORMALAPIEXIT = 0x800300FA;

// The file %1 is not a valid compound file.
pub const STG_E_INVALIDHEADER = 0x800300FB;

// The name %1 is not valid.
pub const STG_E_INVALIDNAME = 0x800300FC;

// An unexpected error occurred.
pub const STG_E_UNKNOWN = 0x800300FD;

// That function is not implemented.
pub const STG_E_UNIMPLEMENTEDFUNCTION = 0x800300FE;

// Invalid flag error.
pub const STG_E_INVALIDFLAG = 0x800300FF;

// Attempted to use an object that is busy.
pub const STG_E_INUSE = 0x80030100;

// The storage has been changed since the last commit.
pub const STG_E_NOTCURRENT = 0x80030101;

// Attempted to use an object that has ceased to exist.
pub const STG_E_REVERTED = 0x80030102;

// Can't save.
pub const STG_E_CANTSAVE = 0x80030103;

// The compound file %1 was produced with an incompatible version of storage.
pub const STG_E_OLDFORMAT = 0x80030104;

// The compound file %1 was produced with a newer version of storage.
pub const STG_E_OLDDLL = 0x80030105;

// Share.exe or equivalent is required for operation.
pub const STG_E_SHAREREQUIRED = 0x80030106;

// Illegal operation called on non-file based storage.
pub const STG_E_NOTFILEBASEDSTORAGE = 0x80030107;

// Illegal operation called on object with extant marshallings.
pub const STG_E_EXTANTMARSHALLINGS = 0x80030108;

// The docfile has been corrupted.
pub const STG_E_DOCFILECORRUPT = 0x80030109;

// OLE32.DLL has been loaded at the wrong address.
pub const STG_E_BADBASEADDRESS = 0x80030110;

// The compound file is too large for the current implementation
pub const STG_E_DOCFILETOOLARGE = 0x80030111;

// The compound file was not created with the STGM_SIMPLE flag
pub const STG_E_NOTSIMPLEFORMAT = 0x80030112;

// The file download was aborted abnormally. The file is incomplete.
pub const STG_E_INCOMPLETE = 0x80030201;

// The file download has been terminated.
pub const STG_E_TERMINATED = 0x80030202;

// The underlying file was converted to compound file format.
pub const STG_S_CONVERTED = 0x00030200;

// The storage operation should block until more data is available.
pub const STG_S_BLOCK = 0x00030201;

// The storage operation should retry immediately.
pub const STG_S_RETRYNOW = 0x00030202;

// The notified event sink will not influence the storage operation.
pub const STG_S_MONITORING = 0x00030203;

// Multiple opens prevent consolidated. (commit succeeded).
pub const STG_S_MULTIPLEOPENS = 0x00030204;

// Consolidation of the storage file failed. (commit succeeded).
pub const STG_S_CONSOLIDATIONFAILED = 0x00030205;

// Consolidation of the storage file is inappropriate. (commit succeeded).
pub const STG_S_CANNOTCONSOLIDATE = 0x00030206;

// The device needs to be power cycled. (commit succeeded).
pub const STG_S_POWER_CYCLE_REQUIRED = 0x00030207;

// The specified firmware slot is invalid.
pub const STG_E_FIRMWARE_SLOT_INVALID = 0x80030208;

// The specified firmware image is invalid.
pub const STG_E_FIRMWARE_IMAGE_INVALID = 0x80030209;

// The storage device is unresponsive.
pub const STG_E_DEVICE_UNRESPONSIVE = 0x8003020A;

// Generic Copy Protection Error.
pub const STG_E_STATUS_COPY_PROTECTION_FAILURE = 0x80030305;

// Copy Protection Error - DVD CSS Authentication failed.
pub const STG_E_CSS_AUTHENTICATION_FAILURE = 0x80030306;

// Copy Protection Error - The given sector does not have a valid CSS key.
pub const STG_E_CSS_KEY_NOT_PRESENT = 0x80030307;

// Copy Protection Error - DVD session key not established.
pub const STG_E_CSS_KEY_NOT_ESTABLISHED = 0x80030308;

// Copy Protection Error - The read failed because the sector is encrypted.
pub const STG_E_CSS_SCRAMBLED_SECTOR = 0x80030309;

// Copy Protection Error - The current DVD's region does not correspond to the region setting of the drive.
pub const STG_E_CSS_REGION_MISMATCH = 0x8003030A;

// Copy Protection Error - The drive's region setting may be permanent or the number of user resets has been exhausted.
pub const STG_E_RESETS_EXHAUSTED = 0x8003030B;

// Call was rejected by callee.
pub const RPC_E_CALL_REJECTED = 0x80010001;

// Call was canceled by the message filter.
pub const RPC_E_CALL_CANCELED = 0x80010002;

// The caller is dispatching an intertask SendMessage call and cannot call out via PostMessage.
pub const RPC_E_CANTPOST_INSENDCALL = 0x80010003;

// The caller is dispatching an asynchronous call and cannot make an outgoing call on behalf of this call.
pub const RPC_E_CANTCALLOUT_INASYNCCALL = 0x80010004;

// It is illegal to call out while inside message filter.
pub const RPC_E_CANTCALLOUT_INEXTERNALCALL = 0x80010005;

// The connection terminated or is in a bogus state and cannot be used any more. Other connections are still valid.
pub const RPC_E_CONNECTION_TERMINATED = 0x80010006;

// The callee (server [not server application]) is not available and disappeared; all connections are invalid. The call may have executed.
pub const RPC_E_SERVER_DIED = 0x80010007;

// The caller (client) disappeared while the callee (server) was processing a call.
pub const RPC_E_CLIENT_DIED = 0x80010008;

// The data packet with the marshalled parameter data is incorrect.
pub const RPC_E_INVALID_DATAPACKET = 0x80010009;

// The call was not transmitted properly; the message queue was full and was not emptied after yielding.
pub const RPC_E_CANTTRANSMIT_CALL = 0x8001000A;

// The client (caller) cannot marshall the parameter data - low memory, etc.
pub const RPC_E_CLIENT_CANTMARSHAL_DATA = 0x8001000B;

// The client (caller) cannot unmarshall the return data - low memory, etc.
pub const RPC_E_CLIENT_CANTUNMARSHAL_DATA = 0x8001000C;

// The server (callee) cannot marshall the return data - low memory, etc.
pub const RPC_E_SERVER_CANTMARSHAL_DATA = 0x8001000D;

// The server (callee) cannot unmarshall the parameter data - low memory, etc.
pub const RPC_E_SERVER_CANTUNMARSHAL_DATA = 0x8001000E;

// Received data is invalid; could be server or client data.
pub const RPC_E_INVALID_DATA = 0x8001000F;

// A particular parameter is invalid and cannot be (un)marshalled.
pub const RPC_E_INVALID_PARAMETER = 0x80010010;

// There is no second outgoing call on same channel in DDE conversation.
pub const RPC_E_CANTCALLOUT_AGAIN = 0x80010011;

// The callee (server [not server application]) is not available and disappeared; all connections are invalid. The call did not execute.
pub const RPC_E_SERVER_DIED_DNE = 0x80010012;

// System call failed.
pub const RPC_E_SYS_CALL_FAILED = 0x80010100;

// Could not allocate some required resource (memory, events, ...)
pub const RPC_E_OUT_OF_RESOURCES = 0x80010101;

// Attempted to make calls on more than one thread in single threaded mode.
pub const RPC_E_ATTEMPTED_MULTITHREAD = 0x80010102;

// The requested interface is not registered on the server object.
pub const RPC_E_NOT_REGISTERED = 0x80010103;

// RPC could not call the server or could not return the results of calling the server.
pub const RPC_E_FAULT = 0x80010104;

// The server threw an exception.
pub const RPC_E_SERVERFAULT = 0x80010105;

// Cannot change thread mode after it is set.
pub const RPC_E_CHANGED_MODE = 0x80010106;

// The method called does not exist on the server.
pub const RPC_E_INVALIDMETHOD = 0x80010107;

// The object invoked has disconnected from its clients.
pub const RPC_E_DISCONNECTED = 0x80010108;

// The object invoked chose not to process the call now. Try again later.
pub const RPC_E_RETRY = 0x80010109;

// The message filter indicated that the application is busy.
pub const RPC_E_SERVERCALL_RETRYLATER = 0x8001010A;

// The message filter rejected the call.
pub const RPC_E_SERVERCALL_REJECTED = 0x8001010B;

// A call control interfaces was called with invalid data.
pub const RPC_E_INVALID_CALLDATA = 0x8001010C;

// An outgoing call cannot be made since the application is dispatching an input-synchronous call.
pub const RPC_E_CANTCALLOUT_ININPUTSYNCCALL = 0x8001010D;

// The application called an interface that was marshalled for a different thread.
pub const RPC_E_WRONG_THREAD = 0x8001010E;

// CoInitialize has not been called on the current thread.
pub const RPC_E_THREAD_NOT_INIT = 0x8001010F;

// The version of OLE on the client and server machines does not match.
pub const RPC_E_VERSION_MISMATCH = 0x80010110;

// OLE received a packet with an invalid header.
pub const RPC_E_INVALID_HEADER = 0x80010111;

// OLE received a packet with an invalid extension.
pub const RPC_E_INVALID_EXTENSION = 0x80010112;

// The requested object or interface does not exist.
pub const RPC_E_INVALID_IPID = 0x80010113;

// The requested object does not exist.
pub const RPC_E_INVALID_OBJECT = 0x80010114;

// OLE has sent a request and is waiting for a reply.
pub const RPC_S_CALLPENDING = 0x80010115;

// OLE is waiting before retrying a request.
pub const RPC_S_WAITONTIMER = 0x80010116;

// Call context cannot be accessed after call completed.
pub const RPC_E_CALL_COMPLETE = 0x80010117;

// Impersonate on unsecure calls is not supported.
pub const RPC_E_UNSECURE_CALL = 0x80010118;

// Security must be initialized before any interfaces are marshalled or unmarshalled. It cannot be changed once initialized.
pub const RPC_E_TOO_LATE = 0x80010119;

// No security packages are installed on this machine or the user is not logged on or there are no compatible security packages between the client and server.
pub const RPC_E_NO_GOOD_SECURITY_PACKAGES = 0x8001011A;

// Access is denied.
pub const RPC_E_ACCESS_DENIED = 0x8001011B;

// Remote calls are not allowed for this process.
pub const RPC_E_REMOTE_DISABLED = 0x8001011C;

// The marshaled interface data packet (OBJREF) has an invalid or unknown format.
pub const RPC_E_INVALID_OBJREF = 0x8001011D;

// No context is associated with this call. This happens for some custom marshalled calls and on the client side of the call.
pub const RPC_E_NO_CONTEXT = 0x8001011E;

// This operation returned because the timeout period expired.
pub const RPC_E_TIMEOUT = 0x8001011F;

// There are no synchronize objects to wait on.
pub const RPC_E_NO_SYNC = 0x80010120;

// Full subject issuer chain SSL principal name expected from the server.
pub const RPC_E_FULLSIC_REQUIRED = 0x80010121;

// Principal name is not a valid MSSTD name.
pub const RPC_E_INVALID_STD_NAME = 0x80010122;

// Unable to impersonate DCOM client
pub const CO_E_FAILEDTOIMPERSONATE = 0x80010123;

// Unable to obtain server's security context
pub const CO_E_FAILEDTOGETSECCTX = 0x80010124;

// Unable to open the access token of the current thread
pub const CO_E_FAILEDTOOPENTHREADTOKEN = 0x80010125;

// Unable to obtain user info from an access token
pub const CO_E_FAILEDTOGETTOKENINFO = 0x80010126;

// The client who called IAccessControl::IsAccessPermitted was not the trustee provided to the method
pub const CO_E_TRUSTEEDOESNTMATCHCLIENT = 0x80010127;

// Unable to obtain the client's security blanket
pub const CO_E_FAILEDTOQUERYCLIENTBLANKET = 0x80010128;

// Unable to set a discretionary ACL into a security descriptor
pub const CO_E_FAILEDTOSETDACL = 0x80010129;

// The system function, AccessCheck, returned false
pub const CO_E_ACCESSCHECKFAILED = 0x8001012A;

// Either NetAccessDel or NetAccessAdd returned an error code.
pub const CO_E_NETACCESSAPIFAILED = 0x8001012B;

// One of the trustee strings provided by the user did not conform to the <Domain>\<Name> syntax and it was not the "*" string
pub const CO_E_WRONGTRUSTEENAMESYNTAX = 0x8001012C;

// One of the security identifiers provided by the user was invalid
pub const CO_E_INVALIDSID = 0x8001012D;

// Unable to convert a wide character trustee string to a multibyte trustee string
pub const CO_E_CONVERSIONFAILED = 0x8001012E;

// Unable to find a security identifier that corresponds to a trustee string provided by the user
pub const CO_E_NOMATCHINGSIDFOUND = 0x8001012F;

// The system function, LookupAccountSID, failed
pub const CO_E_LOOKUPACCSIDFAILED = 0x80010130;

// Unable to find a trustee name that corresponds to a security identifier provided by the user
pub const CO_E_NOMATCHINGNAMEFOUND = 0x80010131;

// The system function, LookupAccountName, failed
pub const CO_E_LOOKUPACCNAMEFAILED = 0x80010132;

// Unable to set or reset a serialization handle
pub const CO_E_SETSERLHNDLFAILED = 0x80010133;

// Unable to obtain the Windows directory
pub const CO_E_FAILEDTOGETWINDIR = 0x80010134;

// Path too long
pub const CO_E_PATHTOOLONG = 0x80010135;

// Unable to generate a uuid.
pub const CO_E_FAILEDTOGENUUID = 0x80010136;

// Unable to create file
pub const CO_E_FAILEDTOCREATEFILE = 0x80010137;

// Unable to close a serialization handle or a file handle.
pub const CO_E_FAILEDTOCLOSEHANDLE = 0x80010138;

// The number of ACEs in an ACL exceeds the system limit.
pub const CO_E_EXCEEDSYSACLLIMIT = 0x80010139;

// Not all the DENY_ACCESS ACEs are arranged in front of the GRANT_ACCESS ACEs in the stream.
pub const CO_E_ACESINWRONGORDER = 0x8001013A;

// The version of ACL format in the stream is not supported by this implementation of IAccessControl
pub const CO_E_INCOMPATIBLESTREAMVERSION = 0x8001013B;

// Unable to open the access token of the server process
pub const CO_E_FAILEDTOOPENPROCESSTOKEN = 0x8001013C;

// Unable to decode the ACL in the stream provided by the user
pub const CO_E_DECODEFAILED = 0x8001013D;

// The COM IAccessControl object is not initialized
pub const CO_E_ACNOTINITIALIZED = 0x8001013F;

// Call Cancellation is disabled
pub const CO_E_CANCEL_DISABLED = 0x80010140;

// An internal error occurred.
pub const RPC_E_UNEXPECTED = 0x8001FFFF;

// The specified event is currently not being audited.
pub const ERROR_AUDITING_DISABLED = 0xC0090001;

// The SID filtering operation removed all SIDs.
pub const ERROR_ALL_SIDS_FILTERED = 0xC0090002;

// Business rule scripts are disabled for the calling application.
pub const ERROR_BIZRULES_NOT_ENABLED = 0xC0090003;

// Bad UID.
pub const NTE_BAD_UID = 0x80090001;

// Bad Hash.
pub const NTE_BAD_HASH = 0x80090002;

// Bad Key.
pub const NTE_BAD_KEY = 0x80090003;

// Bad Length.
pub const NTE_BAD_LEN = 0x80090004;

// Bad Data.
pub const NTE_BAD_DATA = 0x80090005;

// Invalid Signature.
pub const NTE_BAD_SIGNATURE = 0x80090006;

// Bad Version of provider.
pub const NTE_BAD_VER = 0x80090007;

// Invalid algorithm specified.
pub const NTE_BAD_ALGID = 0x80090008;

// Invalid flags specified.
pub const NTE_BAD_FLAGS = 0x80090009;

// Invalid type specified.
pub const NTE_BAD_TYPE = 0x8009000A;

// Key not valid for use in specified state.
pub const NTE_BAD_KEY_STATE = 0x8009000B;

// Hash not valid for use in specified state.
pub const NTE_BAD_HASH_STATE = 0x8009000C;

// Key does not exist.
pub const NTE_NO_KEY = 0x8009000D;

// Insufficient memory available for the operation.
pub const NTE_NO_MEMORY = 0x8009000E;

// Object already exists.
pub const NTE_EXISTS = 0x8009000F;

// Access denied.
pub const NTE_PERM = 0x80090010;

// Object was not found.
pub const NTE_NOT_FOUND = 0x80090011;

// Data already encrypted.
pub const NTE_DOUBLE_ENCRYPT = 0x80090012;

// Invalid provider specified.
pub const NTE_BAD_PROVIDER = 0x80090013;

// Invalid provider type specified.
pub const NTE_BAD_PROV_TYPE = 0x80090014;

// Provider's public key is invalid.
pub const NTE_BAD_PUBLIC_KEY = 0x80090015;

// Keyset does not exist
pub const NTE_BAD_KEYSET = 0x80090016;

// Provider type not defined.
pub const NTE_PROV_TYPE_NOT_DEF = 0x80090017;

// Provider type as registered is invalid.
pub const NTE_PROV_TYPE_ENTRY_BAD = 0x80090018;

// The keyset is not defined.
pub const NTE_KEYSET_NOT_DEF = 0x80090019;

// Keyset as registered is invalid.
pub const NTE_KEYSET_ENTRY_BAD = 0x8009001A;

// Provider type does not match registered value.
pub const NTE_PROV_TYPE_NO_MATCH = 0x8009001B;

// The digital signature file is corrupt.
pub const NTE_SIGNATURE_FILE_BAD = 0x8009001C;

// Provider DLL failed to initialize correctly.
pub const NTE_PROVIDER_DLL_FAIL = 0x8009001D;

// Provider DLL could not be found.
pub const NTE_PROV_DLL_NOT_FOUND = 0x8009001E;

// The Keyset parameter is invalid.
pub const NTE_BAD_KEYSET_PARAM = 0x8009001F;

// An internal error occurred.
pub const NTE_FAIL = 0x80090020;

// A base error occurred.
pub const NTE_SYS_ERR = 0x80090021;

// Provider could not perform the action since the context was acquired as silent.
pub const NTE_SILENT_CONTEXT = 0x80090022;

// The security token does not have storage space available for an additional container.
pub const NTE_TOKEN_KEYSET_STORAGE_FULL = 0x80090023;

// The profile for the user is a temporary profile.
pub const NTE_TEMPORARY_PROFILE = 0x80090024;

// The key parameters could not be set because the CSP uses fixed parameters.
pub const NTE_FIXEDPARAMETER = 0x80090025;

// The supplied handle is invalid.
pub const NTE_INVALID_HANDLE = 0x80090026;

// The parameter is incorrect.
pub const NTE_INVALID_PARAMETER = 0x80090027;

// The buffer supplied to a function was too small.
pub const NTE_BUFFER_TOO_SMALL = 0x80090028;

// The requested operation is not supported.
pub const NTE_NOT_SUPPORTED = 0x80090029;

// No more data is available.
pub const NTE_NO_MORE_ITEMS = 0x8009002A;

// The supplied buffers overlap incorrectly.
pub const NTE_BUFFERS_OVERLAP = 0x8009002B;

// The specified data could not be decrypted.
pub const NTE_DECRYPTION_FAILURE = 0x8009002C;

// An internal consistency check failed.
pub const NTE_INTERNAL_ERROR = 0x8009002D;

// This operation requires input from the user.
pub const NTE_UI_REQUIRED = 0x8009002E;

// The cryptographic provider does not support HMAC.
pub const NTE_HMAC_NOT_SUPPORTED = 0x8009002F;

// The device that is required by this cryptographic provider is not ready for use.
pub const NTE_DEVICE_NOT_READY = 0x80090030;

// The dictionary attack mitigation is triggered and the provided authorization was ignored by the provider.
pub const NTE_AUTHENTICATION_IGNORED = 0x80090031;

// The validation of the provided data failed the integrity or signature validation.
pub const NTE_VALIDATION_FAILED = 0x80090032;

// Incorrect password.
pub const NTE_INCORRECT_PASSWORD = 0x80090033;

// Encryption failed.
pub const NTE_ENCRYPTION_FAILURE = 0x80090034;

// The device that is required by this cryptographic provider is not found on this platform.
pub const NTE_DEVICE_NOT_FOUND = 0x80090035;

// The action was cancelled by the user.
pub const NTE_USER_CANCELLED = 0x80090036;

// The password is no longer valid and must be changed.
pub const NTE_PASSWORD_CHANGE_REQUIRED = 0x80090037;

// The operation cannot be completed from Terminal Server client sessions.
pub const NTE_NOT_ACTIVE_CONSOLE = 0x80090038;

// Not enough memory is available to complete this request
pub const SEC_E_INSUFFICIENT_MEMORY = 0x80090300;

// The handle specified is invalid
pub const SEC_E_INVALID_HANDLE = 0x80090301;

// The function requested is not supported
pub const SEC_E_UNSUPPORTED_FUNCTION = 0x80090302;

// The specified target is unknown or unreachable
pub const SEC_E_TARGET_UNKNOWN = 0x80090303;

// The Local Security Authority cannot be contacted
pub const SEC_E_INTERNAL_ERROR = 0x80090304;

// The requested security package does not exist
pub const SEC_E_SECPKG_NOT_FOUND = 0x80090305;

// The caller is not the owner of the desired credentials
pub const SEC_E_NOT_OWNER = 0x80090306;

// The security package failed to initialize, and cannot be installed
pub const SEC_E_CANNOT_INSTALL = 0x80090307;

// The token supplied to the function is invalid
pub const SEC_E_INVALID_TOKEN = 0x80090308;

// The security package is not able to marshall the logon buffer, so the logon attempt has failed
pub const SEC_E_CANNOT_PACK = 0x80090309;

// The per-message Quality of Protection is not supported by the security package
pub const SEC_E_QOP_NOT_SUPPORTED = 0x8009030A;

// The security context does not allow impersonation of the client
pub const SEC_E_NO_IMPERSONATION = 0x8009030B;

// The logon attempt failed
pub const SEC_E_LOGON_DENIED = 0x8009030C;

// The credentials supplied to the package were not recognized
pub const SEC_E_UNKNOWN_CREDENTIALS = 0x8009030D;

// No credentials are available in the security package
pub const SEC_E_NO_CREDENTIALS = 0x8009030E;

// The message or signature supplied for verification has been altered
pub const SEC_E_MESSAGE_ALTERED = 0x8009030F;

// The message supplied for verification is out of sequence
pub const SEC_E_OUT_OF_SEQUENCE = 0x80090310;

// No authority could be contacted for authentication.
pub const SEC_E_NO_AUTHENTICATING_AUTHORITY = 0x80090311;

// The function completed successfully, but must be called again to complete the context
pub const SEC_I_CONTINUE_NEEDED = 0x00090312;

// The function completed successfully, but CompleteToken must be called
pub const SEC_I_COMPLETE_NEEDED = 0x00090313;

// The function completed successfully, but both CompleteToken and this function must be called to complete the context
pub const SEC_I_COMPLETE_AND_CONTINUE = 0x00090314;

// The logon was completed, but no network authority was available. The logon was made using locally known information
pub const SEC_I_LOCAL_LOGON = 0x00090315;

// The requested security package does not exist
pub const SEC_E_BAD_PKGID = 0x80090316;

// The context has expired and can no longer be used.
pub const SEC_E_CONTEXT_EXPIRED = 0x80090317;

// The context has expired and can no longer be used.
pub const SEC_I_CONTEXT_EXPIRED = 0x00090317;

// The supplied message is incomplete. The signature was not verified.
pub const SEC_E_INCOMPLETE_MESSAGE = 0x80090318;

// The credentials supplied were not complete, and could not be verified. The context could not be initialized.
pub const SEC_E_INCOMPLETE_CREDENTIALS = 0x80090320;

// The buffers supplied to a function was too small.
pub const SEC_E_BUFFER_TOO_SMALL = 0x80090321;

// The credentials supplied were not complete, and could not be verified. Additional information can be returned from the context.
pub const SEC_I_INCOMPLETE_CREDENTIALS = 0x00090320;

// The context data must be renegotiated with the peer.
pub const SEC_I_RENEGOTIATE = 0x00090321;

// The target principal name is incorrect.
pub const SEC_E_WRONG_PRINCIPAL = 0x80090322;

// There is no LSA mode context associated with this context.
pub const SEC_I_NO_LSA_CONTEXT = 0x00090323;

// The clocks on the client and server machines are skewed.
pub const SEC_E_TIME_SKEW = 0x80090324;

// The certificate chain was issued by an authority that is not trusted.
pub const SEC_E_UNTRUSTED_ROOT = 0x80090325;

// The message received was unexpected or badly formatted.
pub const SEC_E_ILLEGAL_MESSAGE = 0x80090326;

// An unknown error occurred while processing the certificate.
pub const SEC_E_CERT_UNKNOWN = 0x80090327;

// The received certificate has expired.
pub const SEC_E_CERT_EXPIRED = 0x80090328;

// The specified data could not be encrypted.
pub const SEC_E_ENCRYPT_FAILURE = 0x80090329;

// The specified data could not be decrypted.
pub const SEC_E_DECRYPT_FAILURE = 0x80090330;

// The client and server cannot communicate, because they do not possess a common algorithm.
pub const SEC_E_ALGORITHM_MISMATCH = 0x80090331;

// The security context could not be established due to a failure in the requested quality of service (e.g. mutual authentication or delegation).
pub const SEC_E_SECURITY_QOS_FAILED = 0x80090332;

// A security context was deleted before the context was completed. This is considered a logon failure.
pub const SEC_E_UNFINISHED_CONTEXT_DELETED = 0x80090333;

// The client is trying to negotiate a context and the server requires user-to-user but didn't send a TGT reply.
pub const SEC_E_NO_TGT_REPLY = 0x80090334;

// Unable to accomplish the requested task because the local machine does not have any IP addresses.
pub const SEC_E_NO_IP_ADDRESSES = 0x80090335;

// The supplied credential handle does not match the credential associated with the security context.
pub const SEC_E_WRONG_CREDENTIAL_HANDLE = 0x80090336;

// The crypto system or checksum function is invalid because a required function is unavailable.
pub const SEC_E_CRYPTO_SYSTEM_INVALID = 0x80090337;

// The number of maximum ticket referrals has been exceeded.
pub const SEC_E_MAX_REFERRALS_EXCEEDED = 0x80090338;

// The local machine must be a Kerberos KDC (domain controller) and it is not.
pub const SEC_E_MUST_BE_KDC = 0x80090339;

// The other end of the security negotiation is requires strong crypto but it is not supported on the local machine.
pub const SEC_E_STRONG_CRYPTO_NOT_SUPPORTED = 0x8009033A;

// The KDC reply contained more than one principal name.
pub const SEC_E_TOO_MANY_PRINCIPALS = 0x8009033B;

// Expected to find PA data for a hint of what etype to use, but it was not found.
pub const SEC_E_NO_PA_DATA = 0x8009033C;

// The client certificate does not contain a valid UPN, or does not match the client name in the logon request. Please contact your administrator.
pub const SEC_E_PKINIT_NAME_MISMATCH = 0x8009033D;

// Smartcard logon is required and was not used.
pub const SEC_E_SMARTCARD_LOGON_REQUIRED = 0x8009033E;

// A system shutdown is in progress.
pub const SEC_E_SHUTDOWN_IN_PROGRESS = 0x8009033F;

// An invalid request was sent to the KDC.
pub const SEC_E_KDC_INVALID_REQUEST = 0x80090340;

// The KDC was unable to generate a referral for the service requested.
pub const SEC_E_KDC_UNABLE_TO_REFER = 0x80090341;

// The encryption type requested is not supported by the KDC.
pub const SEC_E_KDC_UNKNOWN_ETYPE = 0x80090342;

// An unsupported preauthentication mechanism was presented to the Kerberos package.
pub const SEC_E_UNSUPPORTED_PREAUTH = 0x80090343;

// The requested operation cannot be completed. The computer must be trusted for delegation and the current user account must be configured to allow delegation.
pub const SEC_E_DELEGATION_REQUIRED = 0x80090345;

// Client's supplied SSPI channel bindings were incorrect.
pub const SEC_E_BAD_BINDINGS = 0x80090346;

// The received certificate was mapped to multiple accounts.
pub const SEC_E_MULTIPLE_ACCOUNTS = 0x80090347;

//  SEC_E_NO_KERB_KEY
pub const SEC_E_NO_KERB_KEY = 0x80090348;

// The certificate is not valid for the requested usage.
pub const SEC_E_CERT_WRONG_USAGE = 0x80090349;

// The system cannot contact a domain controller to service the authentication request. Please try again later.
pub const SEC_E_DOWNGRADE_DETECTED = 0x80090350;

// The smartcard certificate used for authentication has been revoked. Please contact your system administrator. There may be additional information in the event log.
pub const SEC_E_SMARTCARD_CERT_REVOKED = 0x80090351;

// An untrusted certificate authority was detected while processing the smartcard certificate used for authentication. Please contact your system administrator.
pub const SEC_E_ISSUING_CA_UNTRUSTED = 0x80090352;

// The revocation status of the smartcard certificate used for authentication could not be determined. Please contact your system administrator.
pub const SEC_E_REVOCATION_OFFLINE_C = 0x80090353;

// The smartcard certificate used for authentication was not trusted. Please contact your system administrator.
pub const SEC_E_PKINIT_CLIENT_FAILURE = 0x80090354;

// The smartcard certificate used for authentication has expired. Please contact your system administrator.
pub const SEC_E_SMARTCARD_CERT_EXPIRED = 0x80090355;

// The Kerberos subsystem encountered an error. A service for user protocol request was made against a domain controller which does not support service for user.
pub const SEC_E_NO_S4U_PROT_SUPPORT = 0x80090356;

// An attempt was made by this server to make a Kerberos constrained delegation request for a target outside of the server's realm. This is not supported, and indicates a misconfiguration on this server's allowed to delegate to list. Please contact your administrator.
pub const SEC_E_CROSSREALM_DELEGATION_FAILURE = 0x80090357;

// The revocation status of the domain controller certificate used for smartcard authentication could not be determined. There is additional information in the system event log. Please contact your system administrator.
pub const SEC_E_REVOCATION_OFFLINE_KDC = 0x80090358;

// An untrusted certificate authority was detected while processing the domain controller certificate used for authentication. There is additional information in the system event log. Please contact your system administrator.
pub const SEC_E_ISSUING_CA_UNTRUSTED_KDC = 0x80090359;

// The domain controller certificate used for smartcard logon has expired. Please contact your system administrator with the contents of your system event log.
pub const SEC_E_KDC_CERT_EXPIRED = 0x8009035A;

// The domain controller certificate used for smartcard logon has been revoked. Please contact your system administrator with the contents of your system event log.
pub const SEC_E_KDC_CERT_REVOKED = 0x8009035B;

// A signature operation must be performed before the user can authenticate.
pub const SEC_I_SIGNATURE_NEEDED = 0x0009035C;

// One or more of the parameters passed to the function was invalid.
pub const SEC_E_INVALID_PARAMETER = 0x8009035D;

// Client policy does not allow credential delegation to target server.
pub const SEC_E_DELEGATION_POLICY = 0x8009035E;

// Client policy does not allow credential delegation to target server with NLTM only authentication.
pub const SEC_E_POLICY_NLTM_ONLY = 0x8009035F;

// The recipient rejected the renegotiation request.
pub const SEC_I_NO_RENEGOTIATION = 0x00090360;

// The required security context does not exist.
pub const SEC_E_NO_CONTEXT = 0x80090361;

// The PKU2U protocol encountered an error while attempting to utilize the associated certificates.
pub const SEC_E_PKU2U_CERT_FAILURE = 0x80090362;

// The identity of the server computer could not be verified.
pub const SEC_E_MUTUAL_AUTH_FAILED = 0x80090363;

// The returned buffer is only a fragment of the message.  More fragments need to be returned.
pub const SEC_I_MESSAGE_FRAGMENT = 0x00090364;

// Only https scheme is allowed.
pub const SEC_E_ONLY_HTTPS_ALLOWED = 0x80090365;

// The function completed successfully, but must be called again to complete the context.  Early start can be used.
pub const SEC_I_CONTINUE_NEEDED_MESSAGE_OK = 0x00090366;

// No common application protocol exists between the client and the server. Application protocol negotiation failed.
pub const SEC_E_APPLICATION_PROTOCOL_MISMATCH = 0x80090367;

// An asynchronous SSPI routine has been called and the work is pending completion.
pub const SEC_I_ASYNC_CALL_PENDING = 0x00090368;

// You can't sign in with a user ID in this format. Try using your email address instead.
pub const SEC_E_INVALID_UPN_NAME = 0x80090369;

// An error occurred while performing an operation on a cryptographic message.
pub const CRYPT_E_MSG_ERROR = 0x80091001;

// Unknown cryptographic algorithm.
pub const CRYPT_E_UNKNOWN_ALGO = 0x80091002;

// The object identifier is poorly formatted.
pub const CRYPT_E_OID_FORMAT = 0x80091003;

// Invalid cryptographic message type.
pub const CRYPT_E_INVALID_MSG_TYPE = 0x80091004;

// Unexpected cryptographic message encoding.
pub const CRYPT_E_UNEXPECTED_ENCODING = 0x80091005;

// The cryptographic message does not contain an expected authenticated attribute.
pub const CRYPT_E_AUTH_ATTR_MISSING = 0x80091006;

// The hash value is not correct.
pub const CRYPT_E_HASH_VALUE = 0x80091007;

// The index value is not valid.
pub const CRYPT_E_INVALID_INDEX = 0x80091008;

// The content of the cryptographic message has already been decrypted.
pub const CRYPT_E_ALREADY_DECRYPTED = 0x80091009;

// The content of the cryptographic message has not been decrypted yet.
pub const CRYPT_E_NOT_DECRYPTED = 0x8009100A;

// The enveloped-data message does not contain the specified recipient.
pub const CRYPT_E_RECIPIENT_NOT_FOUND = 0x8009100B;

// Invalid control type.
pub const CRYPT_E_CONTROL_TYPE = 0x8009100C;

// Invalid issuer and/or serial number.
pub const CRYPT_E_ISSUER_SERIALNUMBER = 0x8009100D;

// Cannot find the original signer.
pub const CRYPT_E_SIGNER_NOT_FOUND = 0x8009100E;

// The cryptographic message does not contain all of the requested attributes.
pub const CRYPT_E_ATTRIBUTES_MISSING = 0x8009100F;

// The streamed cryptographic message is not ready to return data.
pub const CRYPT_E_STREAM_MSG_NOT_READY = 0x80091010;

// The streamed cryptographic message requires more data to complete the decode operation.
pub const CRYPT_E_STREAM_INSUFFICIENT_DATA = 0x80091011;

// The protected data needs to be re-protected.
pub const CRYPT_I_NEW_PROTECTION_REQUIRED = 0x00091012;

// The length specified for the output data was insufficient.
pub const CRYPT_E_BAD_LEN = 0x80092001;

// An error occurred during encode or decode operation.
pub const CRYPT_E_BAD_ENCODE = 0x80092002;

// An error occurred while reading or writing to a file.
pub const CRYPT_E_FILE_ERROR = 0x80092003;

// Cannot find object or property.
pub const CRYPT_E_NOT_FOUND = 0x80092004;

// The object or property already exists.
pub const CRYPT_E_EXISTS = 0x80092005;

// No provider was specified for the store or object.
pub const CRYPT_E_NO_PROVIDER = 0x80092006;

// The specified certificate is self signed.
pub const CRYPT_E_SELF_SIGNED = 0x80092007;

// The previous certificate or CRL context was deleted.
pub const CRYPT_E_DELETED_PREV = 0x80092008;

// Cannot find the requested object.
pub const CRYPT_E_NO_MATCH = 0x80092009;

// The certificate does not have a property that references a private key.
pub const CRYPT_E_UNEXPECTED_MSG_TYPE = 0x8009200A;

// Cannot find the certificate and private key for decryption.
pub const CRYPT_E_NO_KEY_PROPERTY = 0x8009200B;

// Cannot find the certificate and private key to use for decryption.
pub const CRYPT_E_NO_DECRYPT_CERT = 0x8009200C;

// Not a cryptographic message or the cryptographic message is not formatted correctly.
pub const CRYPT_E_BAD_MSG = 0x8009200D;

// The signed cryptographic message does not have a signer for the specified signer index.
pub const CRYPT_E_NO_SIGNER = 0x8009200E;

// Final closure is pending until additional frees or closes.
pub const CRYPT_E_PENDING_CLOSE = 0x8009200F;

// The certificate is revoked.
pub const CRYPT_E_REVOKED = 0x80092010;

// No Dll or exported function was found to verify revocation.
pub const CRYPT_E_NO_REVOCATION_DLL = 0x80092011;

// The revocation function was unable to check revocation for the certificate.
pub const CRYPT_E_NO_REVOCATION_CHECK = 0x80092012;

// The revocation function was unable to check revocation because the revocation server was offline.
pub const CRYPT_E_REVOCATION_OFFLINE = 0x80092013;

// The certificate is not in the revocation server's database.
pub const CRYPT_E_NOT_IN_REVOCATION_DATABASE = 0x80092014;

// The string contains a non-numeric character.
pub const CRYPT_E_INVALID_NUMERIC_STRING = 0x80092020;

// The string contains a non-printable character.
pub const CRYPT_E_INVALID_PRINTABLE_STRING = 0x80092021;

// The string contains a character not in the 7 bit ASCII character set.
pub const CRYPT_E_INVALID_IA5_STRING = 0x80092022;

// The string contains an invalid X500 name attribute key, oid, value or delimiter.
pub const CRYPT_E_INVALID_X500_STRING = 0x80092023;

// The dwValueType for the CERT_NAME_VALUE is not one of the character strings. Most likely it is either a CERT_RDN_ENCODED_BLOB or CERT_RDN_OCTET_STRING.
pub const CRYPT_E_NOT_CHAR_STRING = 0x80092024;

// The Put operation cannot continue. The file needs to be resized. However, there is already a signature present. A complete signing operation must be done.
pub const CRYPT_E_FILERESIZED = 0x80092025;

// The cryptographic operation failed due to a local security option setting.
pub const CRYPT_E_SECURITY_SETTINGS = 0x80092026;

// No DLL or exported function was found to verify subject usage.
pub const CRYPT_E_NO_VERIFY_USAGE_DLL = 0x80092027;

// The called function was unable to do a usage check on the subject.
pub const CRYPT_E_NO_VERIFY_USAGE_CHECK = 0x80092028;

// Since the server was offline, the called function was unable to complete the usage check.
pub const CRYPT_E_VERIFY_USAGE_OFFLINE = 0x80092029;

// The subject was not found in a Certificate Trust List (CTL).
pub const CRYPT_E_NOT_IN_CTL = 0x8009202A;

// None of the signers of the cryptographic message or certificate trust list is trusted.
pub const CRYPT_E_NO_TRUSTED_SIGNER = 0x8009202B;

// The public key's algorithm parameters are missing.
pub const CRYPT_E_MISSING_PUBKEY_PARA = 0x8009202C;

// An object could not be located using the object locator infrastructure with the given name.
pub const CRYPT_E_OBJECT_LOCATOR_OBJECT_NOT_FOUND = 0x8009202D;

// See asn1code.h for a definition of the OSS runtime errors. The OSS error values are offset by CRYPT_E_OSS_ERROR.
pub const CRYPT_E_OSS_ERROR = 0x80093000;

// OSS ASN.1 Error: Output Buffer is too small.
pub const OSS_MORE_BUF = 0x80093001;

// OSS ASN.1 Error: Signed integer is encoded as a unsigned integer.
pub const OSS_NEGATIVE_UINTEGER = 0x80093002;

// OSS ASN.1 Error: Unknown ASN.1 data type.
pub const OSS_PDU_RANGE = 0x80093003;

// OSS ASN.1 Error: Output buffer is too small, the decoded data has been truncated.
pub const OSS_MORE_INPUT = 0x80093004;

// OSS ASN.1 Error: Invalid data.
pub const OSS_DATA_ERROR = 0x80093005;

// OSS ASN.1 Error: Invalid argument.
pub const OSS_BAD_ARG = 0x80093006;

// OSS ASN.1 Error: Encode/Decode version mismatch.
pub const OSS_BAD_VERSION = 0x80093007;

// OSS ASN.1 Error: Out of memory.
pub const OSS_OUT_MEMORY = 0x80093008;

// OSS ASN.1 Error: Encode/Decode Error.
pub const OSS_PDU_MISMATCH = 0x80093009;

// OSS ASN.1 Error: Internal Error.
pub const OSS_LIMITED = 0x8009300A;

// OSS ASN.1 Error: Invalid data.
pub const OSS_BAD_PTR = 0x8009300B;

// OSS ASN.1 Error: Invalid data.
pub const OSS_BAD_TIME = 0x8009300C;

// OSS ASN.1 Error: Unsupported BER indefinite-length encoding.
pub const OSS_INDEFINITE_NOT_SUPPORTED = 0x8009300D;

// OSS ASN.1 Error: Access violation.
pub const OSS_MEM_ERROR = 0x8009300E;

// OSS ASN.1 Error: Invalid data.
pub const OSS_BAD_TABLE = 0x8009300F;

// OSS ASN.1 Error: Invalid data.
pub const OSS_TOO_LONG = 0x80093010;

// OSS ASN.1 Error: Invalid data.
pub const OSS_CONSTRAINT_VIOLATED = 0x80093011;

// OSS ASN.1 Error: Internal Error.
pub const OSS_FATAL_ERROR = 0x80093012;

// OSS ASN.1 Error: Multi-threading conflict.
pub const OSS_ACCESS_SERIALIZATION_ERROR = 0x80093013;

// OSS ASN.1 Error: Invalid data.
pub const OSS_NULL_TBL = 0x80093014;

// OSS ASN.1 Error: Invalid data.
pub const OSS_NULL_FCN = 0x80093015;

// OSS ASN.1 Error: Invalid data.
pub const OSS_BAD_ENCRULES = 0x80093016;

// OSS ASN.1 Error: Encode/Decode function not implemented.
pub const OSS_UNAVAIL_ENCRULES = 0x80093017;

// OSS ASN.1 Error: Trace file error.
pub const OSS_CANT_OPEN_TRACE_WINDOW = 0x80093018;

// OSS ASN.1 Error: Function not implemented.
pub const OSS_UNIMPLEMENTED = 0x80093019;

// OSS ASN.1 Error: Program link error.
pub const OSS_OID_DLL_NOT_LINKED = 0x8009301A;

// OSS ASN.1 Error: Trace file error.
pub const OSS_CANT_OPEN_TRACE_FILE = 0x8009301B;

// OSS ASN.1 Error: Trace file error.
pub const OSS_TRACE_FILE_ALREADY_OPEN = 0x8009301C;

// OSS ASN.1 Error: Invalid data.
pub const OSS_TABLE_MISMATCH = 0x8009301D;

// OSS ASN.1 Error: Invalid data.
pub const OSS_TYPE_NOT_SUPPORTED = 0x8009301E;

// OSS ASN.1 Error: Program link error.
pub const OSS_REAL_DLL_NOT_LINKED = 0x8009301F;

// OSS ASN.1 Error: Program link error.
pub const OSS_REAL_CODE_NOT_LINKED = 0x80093020;

// OSS ASN.1 Error: Program link error.
pub const OSS_OUT_OF_RANGE = 0x80093021;

// OSS ASN.1 Error: Program link error.
pub const OSS_COPIER_DLL_NOT_LINKED = 0x80093022;

// OSS ASN.1 Error: Program link error.
pub const OSS_CONSTRAINT_DLL_NOT_LINKED = 0x80093023;

// OSS ASN.1 Error: Program link error.
pub const OSS_COMPARATOR_DLL_NOT_LINKED = 0x80093024;

// OSS ASN.1 Error: Program link error.
pub const OSS_COMPARATOR_CODE_NOT_LINKED = 0x80093025;

// OSS ASN.1 Error: Program link error.
pub const OSS_MEM_MGR_DLL_NOT_LINKED = 0x80093026;

// OSS ASN.1 Error: Program link error.
pub const OSS_PDV_DLL_NOT_LINKED = 0x80093027;

// OSS ASN.1 Error: Program link error.
pub const OSS_PDV_CODE_NOT_LINKED = 0x80093028;

// OSS ASN.1 Error: Program link error.
pub const OSS_API_DLL_NOT_LINKED = 0x80093029;

// OSS ASN.1 Error: Program link error.
pub const OSS_BERDER_DLL_NOT_LINKED = 0x8009302A;

// OSS ASN.1 Error: Program link error.
pub const OSS_PER_DLL_NOT_LINKED = 0x8009302B;

// OSS ASN.1 Error: Program link error.
pub const OSS_OPEN_TYPE_ERROR = 0x8009302C;

// OSS ASN.1 Error: System resource error.
pub const OSS_MUTEX_NOT_CREATED = 0x8009302D;

// OSS ASN.1 Error: Trace file error.
pub const OSS_CANT_CLOSE_TRACE_FILE = 0x8009302E;

// ASN1 Certificate encode/decode error code base. The ASN1 error values are offset by CRYPT_E_ASN1_ERROR.
pub const CRYPT_E_ASN1_ERROR = 0x80093100;

// ASN1 internal encode or decode error.
pub const CRYPT_E_ASN1_INTERNAL = 0x80093101;

// ASN1 unexpected end of data.
pub const CRYPT_E_ASN1_EOD = 0x80093102;

// ASN1 corrupted data.
pub const CRYPT_E_ASN1_CORRUPT = 0x80093103;

// ASN1 value too large.
pub const CRYPT_E_ASN1_LARGE = 0x80093104;

// ASN1 constraint violated.
pub const CRYPT_E_ASN1_CONSTRAINT = 0x80093105;

// ASN1 out of memory.
pub const CRYPT_E_ASN1_MEMORY = 0x80093106;

// ASN1 buffer overflow.
pub const CRYPT_E_ASN1_OVERFLOW = 0x80093107;

// ASN1 function not supported for this PDU.
pub const CRYPT_E_ASN1_BADPDU = 0x80093108;

// ASN1 bad arguments to function call.
pub const CRYPT_E_ASN1_BADARGS = 0x80093109;

// ASN1 bad real value.
pub const CRYPT_E_ASN1_BADREAL = 0x8009310A;

// ASN1 bad tag value met.
pub const CRYPT_E_ASN1_BADTAG = 0x8009310B;

// ASN1 bad choice value.
pub const CRYPT_E_ASN1_CHOICE = 0x8009310C;

// ASN1 bad encoding rule.
pub const CRYPT_E_ASN1_RULE = 0x8009310D;

// ASN1 bad unicode (UTF8).
pub const CRYPT_E_ASN1_UTF8 = 0x8009310E;

// ASN1 bad PDU type.
pub const CRYPT_E_ASN1_PDU_TYPE = 0x80093133;

// ASN1 not yet implemented.
pub const CRYPT_E_ASN1_NYI = 0x80093134;

// ASN1 skipped unknown extension(s).
pub const CRYPT_E_ASN1_EXTENDED = 0x80093201;

// ASN1 end of data expected
pub const CRYPT_E_ASN1_NOEOD = 0x80093202;

// The request subject name is invalid or too long.
pub const CERTSRV_E_BAD_REQUESTSUBJECT = 0x80094001;

// The request does not exist.
pub const CERTSRV_E_NO_REQUEST = 0x80094002;

// The request's current status does not allow this operation.
pub const CERTSRV_E_BAD_REQUESTSTATUS = 0x80094003;

// The requested property value is empty.
pub const CERTSRV_E_PROPERTY_EMPTY = 0x80094004;

// The certification authority's certificate contains invalid data.
pub const CERTSRV_E_INVALID_CA_CERTIFICATE = 0x80094005;

// Certificate service has been suspended for a database restore operation.
pub const CERTSRV_E_SERVER_SUSPENDED = 0x80094006;

// The certificate contains an encoded length that is potentially incompatible with older enrollment software.
pub const CERTSRV_E_ENCODING_LENGTH = 0x80094007;

// The operation is denied. The user has multiple roles assigned and the certification authority is configured to enforce role separation.
pub const CERTSRV_E_ROLECONFLICT = 0x80094008;

// The operation is denied. It can only be performed by a certificate manager that is allowed to manage certificates for the current requester.
pub const CERTSRV_E_RESTRICTEDOFFICER = 0x80094009;

// Cannot archive private key. The certification authority is not configured for key archival.
pub const CERTSRV_E_KEY_ARCHIVAL_NOT_CONFIGURED = 0x8009400A;

// Cannot archive private key. The certification authority could not verify one or more key recovery certificates.
pub const CERTSRV_E_NO_VALID_KRA = 0x8009400B;

// The request is incorrectly formatted. The encrypted private key must be in an unauthenticated attribute in an outermost signature.
pub const CERTSRV_E_BAD_REQUEST_KEY_ARCHIVAL = 0x8009400C;

// At least one security principal must have the permission to manage this CA.
pub const CERTSRV_E_NO_CAADMIN_DEFINED = 0x8009400D;

// The request contains an invalid renewal certificate attribute.
pub const CERTSRV_E_BAD_RENEWAL_CERT_ATTRIBUTE = 0x8009400E;

// An attempt was made to open a Certification Authority database session, but there are already too many active sessions. The server may need to be configured to allow additional sessions.
pub const CERTSRV_E_NO_DB_SESSIONS = 0x8009400F;

// A memory reference caused a data alignment fault.
pub const CERTSRV_E_ALIGNMENT_FAULT = 0x80094010;

// The permissions on this certification authority do not allow the current user to enroll for certificates.
pub const CERTSRV_E_ENROLL_DENIED = 0x80094011;

// The permissions on the certificate template do not allow the current user to enroll for this type of certificate.
pub const CERTSRV_E_TEMPLATE_DENIED = 0x80094012;

// The contacted domain controller cannot support signed LDAP traffic. Update the domain controller or configure Certificate Services to use SSL for Active Directory access.
pub const CERTSRV_E_DOWNLEVEL_DC_SSL_OR_UPGRADE = 0x80094013;

// The request was denied by a certificate manager or CA administrator.
pub const CERTSRV_E_ADMIN_DENIED_REQUEST = 0x80094014;

// An enrollment policy server cannot be located.
pub const CERTSRV_E_NO_POLICY_SERVER = 0x80094015;

// A signature algorithm or public key length does not meet the system's minimum required strength.
pub const CERTSRV_E_WEAK_SIGNATURE_OR_KEY = 0x80094016;

// Failed to create an attested key.  This computer or the cryptographic provider may not meet the hardware requirements to support key attestation.
pub const CERTSRV_E_KEY_ATTESTATION_NOT_SUPPORTED = 0x80094017;

// No encryption certificate was specified.
pub const CERTSRV_E_ENCRYPTION_CERT_REQUIRED = 0x80094018;

// The requested certificate template is not supported by this CA.
pub const CERTSRV_E_UNSUPPORTED_CERT_TYPE = 0x80094800;

// The request contains no certificate template information.
pub const CERTSRV_E_NO_CERT_TYPE = 0x80094801;

// The request contains conflicting template information.
pub const CERTSRV_E_TEMPLATE_CONFLICT = 0x80094802;

// The request is missing a required Subject Alternate name extension.
pub const CERTSRV_E_SUBJECT_ALT_NAME_REQUIRED = 0x80094803;

// The request is missing a required private key for archival by the server.
pub const CERTSRV_E_ARCHIVED_KEY_REQUIRED = 0x80094804;

// The request is missing a required SMIME capabilities extension.
pub const CERTSRV_E_SMIME_REQUIRED = 0x80094805;

// The request was made on behalf of a subject other than the caller. The certificate template must be configured to require at least one signature to authorize the request.
pub const CERTSRV_E_BAD_RENEWAL_SUBJECT = 0x80094806;

// The request template version is newer than the supported template version.
pub const CERTSRV_E_BAD_TEMPLATE_VERSION = 0x80094807;

// The template is missing a required signature policy attribute.
pub const CERTSRV_E_TEMPLATE_POLICY_REQUIRED = 0x80094808;

// The request is missing required signature policy information.
pub const CERTSRV_E_SIGNATURE_POLICY_REQUIRED = 0x80094809;

// The request is missing one or more required signatures.
pub const CERTSRV_E_SIGNATURE_COUNT = 0x8009480A;

// One or more signatures did not include the required application or issuance policies. The request is missing one or more required valid signatures.
pub const CERTSRV_E_SIGNATURE_REJECTED = 0x8009480B;

// The request is missing one or more required signature issuance policies.
pub const CERTSRV_E_ISSUANCE_POLICY_REQUIRED = 0x8009480C;

// The UPN is unavailable and cannot be added to the Subject Alternate name.
pub const CERTSRV_E_SUBJECT_UPN_REQUIRED = 0x8009480D;

// The Active Directory GUID is unavailable and cannot be added to the Subject Alternate name.
pub const CERTSRV_E_SUBJECT_DIRECTORY_GUID_REQUIRED = 0x8009480E;

// The DNS name is unavailable and cannot be added to the Subject Alternate name.
pub const CERTSRV_E_SUBJECT_DNS_REQUIRED = 0x8009480F;

// The request includes a private key for archival by the server, but key archival is not enabled for the specified certificate template.
pub const CERTSRV_E_ARCHIVED_KEY_UNEXPECTED = 0x80094810;

// The public key does not meet the minimum size required by the specified certificate template.
pub const CERTSRV_E_KEY_LENGTH = 0x80094811;

// The EMail name is unavailable and cannot be added to the Subject or Subject Alternate name.
pub const CERTSRV_E_SUBJECT_EMAIL_REQUIRED = 0x80094812;

// One or more certificate templates to be enabled on this certification authority could not be found.
pub const CERTSRV_E_UNKNOWN_CERT_TYPE = 0x80094813;

// The certificate template renewal period is longer than the certificate validity period. The template should be reconfigured or the CA certificate renewed.
pub const CERTSRV_E_CERT_TYPE_OVERLAP = 0x80094814;

// The certificate template requires too many RA signatures. Only one RA signature is allowed.
pub const CERTSRV_E_TOO_MANY_SIGNATURES = 0x80094815;

// The certificate template requires renewal with the same public key, but the request uses a different public key.
pub const CERTSRV_E_RENEWAL_BAD_PUBLIC_KEY = 0x80094816;

// The certification authority cannot interpret or verify the endorsement key information supplied in the request, or the information is inconsistent.
pub const CERTSRV_E_INVALID_EK = 0x80094817;

// The certification authority cannot validate the Attestation Identity Key Id Binding.
pub const CERTSRV_E_INVALID_IDBINDING = 0x80094818;

// The certification authority cannot validate the private key attestation data.
pub const CERTSRV_E_INVALID_ATTESTATION = 0x80094819;

// The request does not support private key attestation as defined in the certificate template.
pub const CERTSRV_E_KEY_ATTESTATION = 0x8009481A;

// The request public key is not consistent with the private key attestation data.
pub const CERTSRV_E_CORRUPT_KEY_ATTESTATION = 0x8009481B;

// The private key attestation challenge cannot be validated because the encryption certificate has expired, or the certificate or key is unavailable.
pub const CERTSRV_E_EXPIRED_CHALLENGE = 0x8009481C;

// The attestation response could not be validated. It is either unexpected or incorrect.
pub const CERTSRV_E_INVALID_RESPONSE = 0x8009481D;

// A valid Request ID was not detected in the request attributes, or an invalid one was submitted.
pub const CERTSRV_E_INVALID_REQUESTID = 0x8009481E;

// The key is not exportable.
pub const XENROLL_E_KEY_NOT_EXPORTABLE = 0x80095000;

// You cannot add the root CA certificate into your local store.
pub const XENROLL_E_CANNOT_ADD_ROOT_CERT = 0x80095001;

// The key archival hash attribute was not found in the response.
pub const XENROLL_E_RESPONSE_KA_HASH_NOT_FOUND = 0x80095002;

// An unexpected key archival hash attribute was found in the response.
pub const XENROLL_E_RESPONSE_UNEXPECTED_KA_HASH = 0x80095003;

// There is a key archival hash mismatch between the request and the response.
pub const XENROLL_E_RESPONSE_KA_HASH_MISMATCH = 0x80095004;

// Signing certificate cannot include SMIME extension.
pub const XENROLL_E_KEYSPEC_SMIME_MISMATCH = 0x80095005;

// A system-level error occurred while verifying trust.
pub const TRUST_E_SYSTEM_ERROR = 0x80096001;

// The certificate for the signer of the message is invalid or not found.
pub const TRUST_E_NO_SIGNER_CERT = 0x80096002;

// One of the counter signatures was invalid.
pub const TRUST_E_COUNTER_SIGNER = 0x80096003;

// The signature of the certificate cannot be verified.
pub const TRUST_E_CERT_SIGNATURE = 0x80096004;

// The timestamp signature and/or certificate could not be verified or is malformed.
pub const TRUST_E_TIME_STAMP = 0x80096005;

// The digital signature of the object did not verify.
pub const TRUST_E_BAD_DIGEST = 0x80096010;

// The digital signature of the object is malformed. For technical detail, see security bulletin MS13-098.
pub const TRUST_E_MALFORMED_SIGNATURE = 0x80096011;

// A certificate's basic constraint extension has not been observed.
pub const TRUST_E_BASIC_CONSTRAINTS = 0x80096019;

// The certificate does not meet or contain the Authenticode(tm) financial extensions.
pub const TRUST_E_FINANCIAL_CRITERIA = 0x8009601E;

// Tried to reference a part of the file outside the proper range.
pub const MSSIPOTF_E_OUTOFMEMRANGE = 0x80097001;

// Could not retrieve an object from the file.
pub const MSSIPOTF_E_CANTGETOBJECT = 0x80097002;

// Could not find the head table in the file.
pub const MSSIPOTF_E_NOHEADTABLE = 0x80097003;

// The magic number in the head table is incorrect.
pub const MSSIPOTF_E_BAD_MAGICNUMBER = 0x80097004;

// The offset table has incorrect values.
pub const MSSIPOTF_E_BAD_OFFSET_TABLE = 0x80097005;

// Duplicate table tags or tags out of alphabetical order.
pub const MSSIPOTF_E_TABLE_TAGORDER = 0x80097006;

// A table does not start on a long word boundary.
pub const MSSIPOTF_E_TABLE_LONGWORD = 0x80097007;

// First table does not appear after header information.
pub const MSSIPOTF_E_BAD_FIRST_TABLE_PLACEMENT = 0x80097008;

// Two or more tables overlap.
pub const MSSIPOTF_E_TABLES_OVERLAP = 0x80097009;

// Too many pad bytes between tables or pad bytes are not 0.
pub const MSSIPOTF_E_TABLE_PADBYTES = 0x8009700A;

// File is too small to contain the last table.
pub const MSSIPOTF_E_FILETOOSMALL = 0x8009700B;

// A table checksum is incorrect.
pub const MSSIPOTF_E_TABLE_CHECKSUM = 0x8009700C;

// The file checksum is incorrect.
pub const MSSIPOTF_E_FILE_CHECKSUM = 0x8009700D;

// The signature does not have the correct attributes for the policy.
pub const MSSIPOTF_E_FAILED_POLICY = 0x80097010;

// The file did not pass the hints check.
pub const MSSIPOTF_E_FAILED_HINTS_CHECK = 0x80097011;

// The file is not an OpenType file.
pub const MSSIPOTF_E_NOT_OPENTYPE = 0x80097012;

// Failed on a file operation (open, map, read, write).
pub const MSSIPOTF_E_FILE = 0x80097013;

// A call to a CryptoAPI function failed.
pub const MSSIPOTF_E_CRYPT = 0x80097014;

// There is a bad version number in the file.
pub const MSSIPOTF_E_BADVERSION = 0x80097015;

// The structure of the DSIG table is incorrect.
pub const MSSIPOTF_E_DSIG_STRUCTURE = 0x80097016;

// A check failed in a partially constant table.
pub const MSSIPOTF_E_PCONST_CHECK = 0x80097017;

// Some kind of structural error.
pub const MSSIPOTF_E_STRUCTURE = 0x80097018;

// The requested credential requires confirmation.
pub const ERROR_CRED_REQUIRES_CONFIRMATION = 0x80097019;
pub const NTE_OP_OK = 0;

// Unknown trust provider.
pub const TRUST_E_PROVIDER_UNKNOWN = 0x800B0001;

// The trust verification action specified is not supported by the specified trust provider.
pub const TRUST_E_ACTION_UNKNOWN = 0x800B0002;

// The form specified for the subject is not one supported or known by the specified trust provider.
pub const TRUST_E_SUBJECT_FORM_UNKNOWN = 0x800B0003;

// The subject is not trusted for the specified action.
pub const TRUST_E_SUBJECT_NOT_TRUSTED = 0x800B0004;

// Error due to problem in ASN.1 encoding process.
pub const DIGSIG_E_ENCODE = 0x800B0005;

// Error due to problem in ASN.1 decoding process.
pub const DIGSIG_E_DECODE = 0x800B0006;

// Reading / writing Extensions where Attributes are appropriate, and vice versa.
pub const DIGSIG_E_EXTENSIBILITY = 0x800B0007;

// Unspecified cryptographic failure.
pub const DIGSIG_E_CRYPTO = 0x800B0008;

// The size of the data could not be determined.
pub const PERSIST_E_SIZEDEFINITE = 0x800B0009;

// The size of the indefinite-sized data could not be determined.
pub const PERSIST_E_SIZEINDEFINITE = 0x800B000A;

// This object does not read and write self-sizing data.
pub const PERSIST_E_NOTSELFSIZING = 0x800B000B;

// No signature was present in the subject.
pub const TRUST_E_NOSIGNATURE = 0x800B0100;

// A required certificate is not within its validity period when verifying against the current system clock or the timestamp in the signed file.
pub const CERT_E_EXPIRED = 0x800B0101;

// The validity periods of the certification chain do not nest correctly.
pub const CERT_E_VALIDITYPERIODNESTING = 0x800B0102;

// A certificate that can only be used as an end-entity is being used as a CA or vice versa.
pub const CERT_E_ROLE = 0x800B0103;

// A path length constraint in the certification chain has been violated.
pub const CERT_E_PATHLENCONST = 0x800B0104;

// A certificate contains an unknown extension that is marked 'critical'.
pub const CERT_E_CRITICAL = 0x800B0105;

// A certificate being used for a purpose other than the ones specified by its CA.
pub const CERT_E_PURPOSE = 0x800B0106;

// A parent of a given certificate in fact did not issue that child certificate.
pub const CERT_E_ISSUERCHAINING = 0x800B0107;

// A certificate is missing or has an empty value for an important field, such as a subject or issuer name.
pub const CERT_E_MALFORMED = 0x800B0108;

// A certificate chain processed, but terminated in a root certificate which is not trusted by the trust provider.
pub const CERT_E_UNTRUSTEDROOT = 0x800B0109;

// A certificate chain could not be built to a trusted root authority.
pub const CERT_E_CHAINING = 0x800B010A;

// Generic trust failure.
pub const TRUST_E_FAIL = 0x800B010B;

// A certificate was explicitly revoked by its issuer.
pub const CERT_E_REVOKED = 0x800B010C;

// The certification path terminates with the test root which is not trusted with the current policy settings.
pub const CERT_E_UNTRUSTEDTESTROOT = 0x800B010D;

// The revocation process could not continue - the certificate(s) could not be checked.
pub const CERT_E_REVOCATION_FAILURE = 0x800B010E;

// The certificate's CN name does not match the passed value.
pub const CERT_E_CN_NO_MATCH = 0x800B010F;

// The certificate is not valid for the requested usage.
pub const CERT_E_WRONG_USAGE = 0x800B0110;

// The certificate was explicitly marked as untrusted by the user.
pub const TRUST_E_EXPLICIT_DISTRUST = 0x800B0111;

// A certification chain processed correctly, but one of the CA certificates is not trusted by the policy provider.
pub const CERT_E_UNTRUSTEDCA = 0x800B0112;

// The certificate has invalid policy.
pub const CERT_E_INVALID_POLICY = 0x800B0113;

// The certificate has an invalid name. The name is not included in the permitted list or is explicitly excluded.
pub const CERT_E_INVALID_NAME = 0x800B0114;

// A non-empty line was encountered in the INF before the start of a section.
pub const SPAPI_E_EXPECTED_SECTION_NAME = 0x800F0000;

// A section name marker in the INF is not complete, or does not exist on a line by itself.
pub const SPAPI_E_BAD_SECTION_NAME_LINE = 0x800F0001;

// An INF section was encountered whose name exceeds the maximum section name length.
pub const SPAPI_E_SECTION_NAME_TOO_LONG = 0x800F0002;

// The syntax of the INF is invalid.
pub const SPAPI_E_GENERAL_SYNTAX = 0x800F0003;

// The style of the INF is different than what was requested.
pub const SPAPI_E_WRONG_INF_STYLE = 0x800F0100;

// The required section was not found in the INF.
pub const SPAPI_E_SECTION_NOT_FOUND = 0x800F0101;

// The required line was not found in the INF.
pub const SPAPI_E_LINE_NOT_FOUND = 0x800F0102;

// The files affected by the installation of this file queue have not been backed up for uninstall.
pub const SPAPI_E_NO_BACKUP = 0x800F0103;

// The INF or the device information set or element does not have an associated install class.
pub const SPAPI_E_NO_ASSOCIATED_CLASS = 0x800F0200;

// The INF or the device information set or element does not match the specified install class.
pub const SPAPI_E_CLASS_MISMATCH = 0x800F0201;

// An existing device was found that is a duplicate of the device being manually installed.
pub const SPAPI_E_DUPLICATE_FOUND = 0x800F0202;

// There is no driver selected for the device information set or element.
pub const SPAPI_E_NO_DRIVER_SELECTED = 0x800F0203;

// The requested device registry key does not exist.
pub const SPAPI_E_KEY_DOES_NOT_EXIST = 0x800F0204;

// The device instance name is invalid.
pub const SPAPI_E_INVALID_DEVINST_NAME = 0x800F0205;

// The install class is not present or is invalid.
pub const SPAPI_E_INVALID_CLASS = 0x800F0206;

// The device instance cannot be created because it already exists.
pub const SPAPI_E_DEVINST_ALREADY_EXISTS = 0x800F0207;

// The operation cannot be performed on a device information element that has not been registered.
pub const SPAPI_E_DEVINFO_NOT_REGISTERED = 0x800F0208;

// The device property code is invalid.
pub const SPAPI_E_INVALID_REG_PROPERTY = 0x800F0209;

// The INF from which a driver list is to be built does not exist.
pub const SPAPI_E_NO_INF = 0x800F020A;

// The device instance does not exist in the hardware tree.
pub const SPAPI_E_NO_SUCH_DEVINST = 0x800F020B;

// The icon representing this install class cannot be loaded.
pub const SPAPI_E_CANT_LOAD_CLASS_ICON = 0x800F020C;

// The class installer registry entry is invalid.
pub const SPAPI_E_INVALID_CLASS_INSTALLER = 0x800F020D;

// The class installer has indicated that the default action should be performed for this installation request.
pub const SPAPI_E_DI_DO_DEFAULT = 0x800F020E;

// The operation does not require any files to be copied.
pub const SPAPI_E_DI_NOFILECOPY = 0x800F020F;

// The specified hardware profile does not exist.
pub const SPAPI_E_INVALID_HWPROFILE = 0x800F0210;

// There is no device information element currently selected for this device information set.
pub const SPAPI_E_NO_DEVICE_SELECTED = 0x800F0211;

// The operation cannot be performed because the device information set is locked.
pub const SPAPI_E_DEVINFO_LIST_LOCKED = 0x800F0212;

// The operation cannot be performed because the device information element is locked.
pub const SPAPI_E_DEVINFO_DATA_LOCKED = 0x800F0213;

// The specified path does not contain any applicable device INFs.
pub const SPAPI_E_DI_BAD_PATH = 0x800F0214;

// No class installer parameters have been set for the device information set or element.
pub const SPAPI_E_NO_CLASSINSTALL_PARAMS = 0x800F0215;

// The operation cannot be performed because the file queue is locked.
pub const SPAPI_E_FILEQUEUE_LOCKED = 0x800F0216;

// A service installation section in this INF is invalid.
pub const SPAPI_E_BAD_SERVICE_INSTALLSECT = 0x800F0217;

// There is no class driver list for the device information element.
pub const SPAPI_E_NO_CLASS_DRIVER_LIST = 0x800F0218;

// The installation failed because a function driver was not specified for this device instance.
pub const SPAPI_E_NO_ASSOCIATED_SERVICE = 0x800F0219;

// There is presently no default device interface designated for this interface class.
pub const SPAPI_E_NO_DEFAULT_DEVICE_INTERFACE = 0x800F021A;

// The operation cannot be performed because the device interface is currently active.
pub const SPAPI_E_DEVICE_INTERFACE_ACTIVE = 0x800F021B;

// The operation cannot be performed because the device interface has been removed from the system.
pub const SPAPI_E_DEVICE_INTERFACE_REMOVED = 0x800F021C;

// An interface installation section in this INF is invalid.
pub const SPAPI_E_BAD_INTERFACE_INSTALLSECT = 0x800F021D;

// This interface class does not exist in the system.
pub const SPAPI_E_NO_SUCH_INTERFACE_CLASS = 0x800F021E;

// The reference string supplied for this interface device is invalid.
pub const SPAPI_E_INVALID_REFERENCE_STRING = 0x800F021F;

// The specified machine name does not conform to UNC naming conventions.
pub const SPAPI_E_INVALID_MACHINENAME = 0x800F0220;

// A general remote communication error occurred.
pub const SPAPI_E_REMOTE_COMM_FAILURE = 0x800F0221;

// The machine selected for remote communication is not available at this time.
pub const SPAPI_E_MACHINE_UNAVAILABLE = 0x800F0222;

// The Plug and Play service is not available on the remote machine.
pub const SPAPI_E_NO_CONFIGMGR_SERVICES = 0x800F0223;

// The property page provider registry entry is invalid.
pub const SPAPI_E_INVALID_PROPPAGE_PROVIDER = 0x800F0224;

// The requested device interface is not present in the system.
pub const SPAPI_E_NO_SUCH_DEVICE_INTERFACE = 0x800F0225;

// The device's co-installer has additional work to perform after installation is complete.
pub const SPAPI_E_DI_POSTPROCESSING_REQUIRED = 0x800F0226;

// The device's co-installer is invalid.
pub const SPAPI_E_INVALID_COINSTALLER = 0x800F0227;

// There are no compatible drivers for this device.
pub const SPAPI_E_NO_COMPAT_DRIVERS = 0x800F0228;

// There is no icon that represents this device or device type.
pub const SPAPI_E_NO_DEVICE_ICON = 0x800F0229;

// A logical configuration specified in this INF is invalid.
pub const SPAPI_E_INVALID_INF_LOGCONFIG = 0x800F022A;

// The class installer has denied the request to install or upgrade this device.
pub const SPAPI_E_DI_DONT_INSTALL = 0x800F022B;

// One of the filter drivers installed for this device is invalid.
pub const SPAPI_E_INVALID_FILTER_DRIVER = 0x800F022C;

// The driver selected for this device does not support this version of Windows.
pub const SPAPI_E_NON_WINDOWS_NT_DRIVER = 0x800F022D;

// The driver selected for this device does not support Windows.
pub const SPAPI_E_NON_WINDOWS_DRIVER = 0x800F022E;

// The third-party INF does not contain digital signature information.
pub const SPAPI_E_NO_CATALOG_FOR_OEM_INF = 0x800F022F;

// An invalid attempt was made to use a device installation file queue for verification of digital signatures relative to other platforms.
pub const SPAPI_E_DEVINSTALL_QUEUE_NONNATIVE = 0x800F0230;

// The device cannot be disabled.
pub const SPAPI_E_NOT_DISABLEABLE = 0x800F0231;

// The device could not be dynamically removed.
pub const SPAPI_E_CANT_REMOVE_DEVINST = 0x800F0232;

// Cannot copy to specified target.
pub const SPAPI_E_INVALID_TARGET = 0x800F0233;

// Driver is not intended for this platform.
pub const SPAPI_E_DRIVER_NONNATIVE = 0x800F0234;

// Operation not allowed in WOW64.
pub const SPAPI_E_IN_WOW64 = 0x800F0235;

// The operation involving unsigned file copying was rolled back, so that a system restore point could be set.
pub const SPAPI_E_SET_SYSTEM_RESTORE_POINT = 0x800F0236;

// An INF was copied into the Windows INF directory in an improper manner.
pub const SPAPI_E_INCORRECTLY_COPIED_INF = 0x800F0237;

// The Security Configuration Editor (SCE) APIs have been disabled on this Embedded product.
pub const SPAPI_E_SCE_DISABLED = 0x800F0238;

// An unknown exception was encountered.
pub const SPAPI_E_UNKNOWN_EXCEPTION = 0x800F0239;

// A problem was encountered when accessing the Plug and Play registry database.
pub const SPAPI_E_PNP_REGISTRY_ERROR = 0x800F023A;

// The requested operation is not supported for a remote machine.
pub const SPAPI_E_REMOTE_REQUEST_UNSUPPORTED = 0x800F023B;

// The specified file is not an installed OEM INF.
pub const SPAPI_E_NOT_AN_INSTALLED_OEM_INF = 0x800F023C;

// One or more devices are presently installed using the specified INF.
pub const SPAPI_E_INF_IN_USE_BY_DEVICES = 0x800F023D;

// The requested device install operation is obsolete.
pub const SPAPI_E_DI_FUNCTION_OBSOLETE = 0x800F023E;

// A file could not be verified because it does not have an associated catalog signed via Authenticode(tm).
pub const SPAPI_E_NO_AUTHENTICODE_CATALOG = 0x800F023F;

// Authenticode(tm) signature verification is not supported for the specified INF.
pub const SPAPI_E_AUTHENTICODE_DISALLOWED = 0x800F0240;

// The INF was signed with an Authenticode(tm) catalog from a trusted publisher.
pub const SPAPI_E_AUTHENTICODE_TRUSTED_PUBLISHER = 0x800F0241;

// The publisher of an Authenticode(tm) signed catalog has not yet been established as trusted.
pub const SPAPI_E_AUTHENTICODE_TRUST_NOT_ESTABLISHED = 0x800F0242;

// The publisher of an Authenticode(tm) signed catalog was not established as trusted.
pub const SPAPI_E_AUTHENTICODE_PUBLISHER_NOT_TRUSTED = 0x800F0243;

// The software was tested for compliance with Windows Logo requirements on a different version of Windows, and may not be compatible with this version.
pub const SPAPI_E_SIGNATURE_OSATTRIBUTE_MISMATCH = 0x800F0244;

// The file may only be validated by a catalog signed via Authenticode(tm).
pub const SPAPI_E_ONLY_VALIDATE_VIA_AUTHENTICODE = 0x800F0245;

// One of the installers for this device cannot perform the installation at this time.
pub const SPAPI_E_DEVICE_INSTALLER_NOT_READY = 0x800F0246;

// A problem was encountered while attempting to add the driver to the store.
pub const SPAPI_E_DRIVER_STORE_ADD_FAILED = 0x800F0247;

// The installation of this device is forbidden by system policy. Contact your system administrator.
pub const SPAPI_E_DEVICE_INSTALL_BLOCKED = 0x800F0248;

// The installation of this driver is forbidden by system policy. Contact your system administrator.
pub const SPAPI_E_DRIVER_INSTALL_BLOCKED = 0x800F0249;

// The specified INF is the wrong type for this operation.
pub const SPAPI_E_WRONG_INF_TYPE = 0x800F024A;

// The hash for the file is not present in the specified catalog file. The file is likely corrupt or the victim of tampering.
pub const SPAPI_E_FILE_HASH_NOT_IN_CATALOG = 0x800F024B;

// A problem was encountered while attempting to delete the driver from the store.
pub const SPAPI_E_DRIVER_STORE_DELETE_FAILED = 0x800F024C;

// An unrecoverable stack overflow was encountered.
pub const SPAPI_E_UNRECOVERABLE_STACK_OVERFLOW = 0x800F0300;

// No installed components were detected.
pub const SPAPI_E_ERROR_NOT_INSTALLED = 0x800F1000;

// An internal consistency check failed.
pub const SCARD_F_INTERNAL_ERROR = 0x80100001;

// The action was cancelled by an SCardCancel request.
pub const SCARD_E_CANCELLED = 0x80100002;

// The supplied handle was invalid.
pub const SCARD_E_INVALID_HANDLE = 0x80100003;

// One or more of the supplied parameters could not be properly interpreted.
pub const SCARD_E_INVALID_PARAMETER = 0x80100004;

// Registry startup information is missing or invalid.
pub const SCARD_E_INVALID_TARGET = 0x80100005;

// Not enough memory available to complete this command.
pub const SCARD_E_NO_MEMORY = 0x80100006;

// An internal consistency timer has expired.
pub const SCARD_F_WAITED_TOO_LONG = 0x80100007;

// The data buffer to receive returned data is too small for the returned data.
pub const SCARD_E_INSUFFICIENT_BUFFER = 0x80100008;

// The specified reader name is not recognized.
pub const SCARD_E_UNKNOWN_READER = 0x80100009;

// The user-specified timeout value has expired.
pub const SCARD_E_TIMEOUT = 0x8010000A;

// The smart card cannot be accessed because of other connections outstanding.
pub const SCARD_E_SHARING_VIOLATION = 0x8010000B;

// The operation requires a smart card, but no smart card is currently in the device.
pub const SCARD_E_NO_SMARTCARD = 0x8010000C;

// The specified smart card name is not recognized.
pub const SCARD_E_UNKNOWN_CARD = 0x8010000D;

// The system could not dispose of the media in the requested manner.
pub const SCARD_E_CANT_DISPOSE = 0x8010000E;

// The requested protocols are incompatible with the protocol currently in use with the smart card.
pub const SCARD_E_PROTO_MISMATCH = 0x8010000F;

// The reader or smart card is not ready to accept commands.
pub const SCARD_E_NOT_READY = 0x80100010;

// One or more of the supplied parameters values could not be properly interpreted.
pub const SCARD_E_INVALID_VALUE = 0x80100011;

// The action was cancelled by the system, presumably to log off or shut down.
pub const SCARD_E_SYSTEM_CANCELLED = 0x80100012;

// An internal communications error has been detected.
pub const SCARD_F_COMM_ERROR = 0x80100013;

// An internal error has been detected, but the source is unknown.
pub const SCARD_F_UNKNOWN_ERROR = 0x80100014;

// An ATR obtained from the registry is not a valid ATR string.
pub const SCARD_E_INVALID_ATR = 0x80100015;

// An attempt was made to end a non-existent transaction.
pub const SCARD_E_NOT_TRANSACTED = 0x80100016;

// The specified reader is not currently available for use.
pub const SCARD_E_READER_UNAVAILABLE = 0x80100017;

// The operation has been aborted to allow the server application to exit.
pub const SCARD_P_SHUTDOWN = 0x80100018;

// The PCI Receive buffer was too small.
pub const SCARD_E_PCI_TOO_SMALL = 0x80100019;

// The reader driver does not meet minimal requirements for support.
pub const SCARD_E_READER_UNSUPPORTED = 0x8010001A;

// The reader driver did not produce a unique reader name.
pub const SCARD_E_DUPLICATE_READER = 0x8010001B;

// The smart card does not meet minimal requirements for support.
pub const SCARD_E_CARD_UNSUPPORTED = 0x8010001C;

// The Smart Card Resource Manager is not running.
pub const SCARD_E_NO_SERVICE = 0x8010001D;

// The Smart Card Resource Manager has shut down.
pub const SCARD_E_SERVICE_STOPPED = 0x8010001E;

// An unexpected card error has occurred.
pub const SCARD_E_UNEXPECTED = 0x8010001F;

// No Primary Provider can be found for the smart card.
pub const SCARD_E_ICC_INSTALLATION = 0x80100020;

// The requested order of object creation is not supported.
pub const SCARD_E_ICC_CREATEORDER = 0x80100021;

// This smart card does not support the requested feature.
pub const SCARD_E_UNSUPPORTED_FEATURE = 0x80100022;

// The identified directory does not exist in the smart card.
pub const SCARD_E_DIR_NOT_FOUND = 0x80100023;

// The identified file does not exist in the smart card.
pub const SCARD_E_FILE_NOT_FOUND = 0x80100024;

// The supplied path does not represent a smart card directory.
pub const SCARD_E_NO_DIR = 0x80100025;

// The supplied path does not represent a smart card file.
pub const SCARD_E_NO_FILE = 0x80100026;

// Access is denied to this file.
pub const SCARD_E_NO_ACCESS = 0x80100027;

// The smart card does not have enough memory to store the information.
pub const SCARD_E_WRITE_TOO_MANY = 0x80100028;

// There was an error trying to set the smart card file object pointer.
pub const SCARD_E_BAD_SEEK = 0x80100029;

// The supplied PIN is incorrect.
pub const SCARD_E_INVALID_CHV = 0x8010002A;

// An unrecognized error code was returned from a layered component.
pub const SCARD_E_UNKNOWN_RES_MNG = 0x8010002B;

// The requested certificate does not exist.
pub const SCARD_E_NO_SUCH_CERTIFICATE = 0x8010002C;

// The requested certificate could not be obtained.
pub const SCARD_E_CERTIFICATE_UNAVAILABLE = 0x8010002D;

// Cannot find a smart card reader.
pub const SCARD_E_NO_READERS_AVAILABLE = 0x8010002E;

// A communications error with the smart card has been detected. Retry the operation.
pub const SCARD_E_COMM_DATA_LOST = 0x8010002F;

// The requested key container does not exist on the smart card.
pub const SCARD_E_NO_KEY_CONTAINER = 0x80100030;

// The Smart Card Resource Manager is too busy to complete this operation.
pub const SCARD_E_SERVER_TOO_BUSY = 0x80100031;

// The smart card PIN cache has expired.
pub const SCARD_E_PIN_CACHE_EXPIRED = 0x80100032;

// The smart card PIN cannot be cached.
pub const SCARD_E_NO_PIN_CACHE = 0x80100033;

// The smart card is read only and cannot be written to.
pub const SCARD_E_READ_ONLY_CARD = 0x80100034;

// The reader cannot communicate with the smart card, due to ATR configuration conflicts.
pub const SCARD_W_UNSUPPORTED_CARD = 0x80100065;

// The smart card is not responding to a reset.
pub const SCARD_W_UNRESPONSIVE_CARD = 0x80100066;

// Power has been removed from the smart card, so that further communication is not possible.
pub const SCARD_W_UNPOWERED_CARD = 0x80100067;

// The smart card has been reset, so any shared state information is invalid.
pub const SCARD_W_RESET_CARD = 0x80100068;

// The smart card has been removed, so that further communication is not possible.
pub const SCARD_W_REMOVED_CARD = 0x80100069;

// Access was denied because of a security violation.
pub const SCARD_W_SECURITY_VIOLATION = 0x8010006A;

// The card cannot be accessed because the wrong PIN was presented.
pub const SCARD_W_WRONG_CHV = 0x8010006B;

// The card cannot be accessed because the maximum number of PIN entry attempts has been reached.
pub const SCARD_W_CHV_BLOCKED = 0x8010006C;

// The end of the smart card file has been reached.
pub const SCARD_W_EOF = 0x8010006D;

// The action was cancelled by the user.
pub const SCARD_W_CANCELLED_BY_USER = 0x8010006E;

// No PIN was presented to the smart card.
pub const SCARD_W_CARD_NOT_AUTHENTICATED = 0x8010006F;

// The requested item could not be found in the cache.
pub const SCARD_W_CACHE_ITEM_NOT_FOUND = 0x80100070;

// The requested cache item is too old and was deleted from the cache.
pub const SCARD_W_CACHE_ITEM_STALE = 0x80100071;

// The new cache item exceeds the maximum per-item size defined for the cache.
pub const SCARD_W_CACHE_ITEM_TOO_BIG = 0x80100072;

// Errors occurred accessing one or more objects - the ErrorInfo collection may have more detail
pub const COMADMIN_E_OBJECTERRORS = 0x80110401;

// One or more of the object's properties are missing or invalid
pub const COMADMIN_E_OBJECTINVALID = 0x80110402;

// The object was not found in the catalog
pub const COMADMIN_E_KEYMISSING = 0x80110403;

// The object is already registered
pub const COMADMIN_E_ALREADYINSTALLED = 0x80110404;

// Error occurred writing to the application file
pub const COMADMIN_E_APP_FILE_WRITEFAIL = 0x80110407;

// Error occurred reading the application file
pub const COMADMIN_E_APP_FILE_READFAIL = 0x80110408;

// Invalid version number in application file
pub const COMADMIN_E_APP_FILE_VERSION = 0x80110409;

// The file path is invalid
pub const COMADMIN_E_BADPATH = 0x8011040A;

// The application is already installed
pub const COMADMIN_E_APPLICATIONEXISTS = 0x8011040B;

// The role already exists
pub const COMADMIN_E_ROLEEXISTS = 0x8011040C;

// An error occurred copying the file
pub const COMADMIN_E_CANTCOPYFILE = 0x8011040D;

// One or more users are not valid
pub const COMADMIN_E_NOUSER = 0x8011040F;

// One or more users in the application file are not valid
pub const COMADMIN_E_INVALIDUSERIDS = 0x80110410;

// The component's CLSID is missing or corrupt
pub const COMADMIN_E_NOREGISTRYCLSID = 0x80110411;

// The component's progID is missing or corrupt
pub const COMADMIN_E_BADREGISTRYPROGID = 0x80110412;

// Unable to set required authentication level for update request
pub const COMADMIN_E_AUTHENTICATIONLEVEL = 0x80110413;

// The identity or password set on the application is not valid
pub const COMADMIN_E_USERPASSWDNOTVALID = 0x80110414;

// Application file CLSIDs or IIDs do not match corresponding DLLs
pub const COMADMIN_E_CLSIDORIIDMISMATCH = 0x80110418;

// Interface information is either missing or changed
pub const COMADMIN_E_REMOTEINTERFACE = 0x80110419;

// DllRegisterServer failed on component install
pub const COMADMIN_E_DLLREGISTERSERVER = 0x8011041A;

// No server file share available
pub const COMADMIN_E_NOSERVERSHARE = 0x8011041B;

// DLL could not be loaded
pub const COMADMIN_E_DLLLOADFAILED = 0x8011041D;

// The registered TypeLib ID is not valid
pub const COMADMIN_E_BADREGISTRYLIBID = 0x8011041E;

// Application install directory not found
pub const COMADMIN_E_APPDIRNOTFOUND = 0x8011041F;

// Errors occurred while in the component registrar
pub const COMADMIN_E_REGISTRARFAILED = 0x80110423;

// The file does not exist
pub const COMADMIN_E_COMPFILE_DOESNOTEXIST = 0x80110424;

// The DLL could not be loaded
pub const COMADMIN_E_COMPFILE_LOADDLLFAIL = 0x80110425;

// GetClassObject failed in the DLL
pub const COMADMIN_E_COMPFILE_GETCLASSOBJ = 0x80110426;

// The DLL does not support the components listed in the TypeLib
pub const COMADMIN_E_COMPFILE_CLASSNOTAVAIL = 0x80110427;

// The TypeLib could not be loaded
pub const COMADMIN_E_COMPFILE_BADTLB = 0x80110428;

// The file does not contain components or component information
pub const COMADMIN_E_COMPFILE_NOTINSTALLABLE = 0x80110429;

// Changes to this object and its sub-objects have been disabled
pub const COMADMIN_E_NOTCHANGEABLE = 0x8011042A;

// The delete function has been disabled for this object
pub const COMADMIN_E_NOTDELETEABLE = 0x8011042B;

// The server catalog version is not supported
pub const COMADMIN_E_SESSION = 0x8011042C;

// The component move was disallowed, because the source or destination application is either a system application or currently locked against changes
pub const COMADMIN_E_COMP_MOVE_LOCKED = 0x8011042D;

// The component move failed because the destination application no longer exists
pub const COMADMIN_E_COMP_MOVE_BAD_DEST = 0x8011042E;

// The system was unable to register the TypeLib
pub const COMADMIN_E_REGISTERTLB = 0x80110430;

// This operation cannot be performed on the system application
pub const COMADMIN_E_SYSTEMAPP = 0x80110433;

// The component registrar referenced in this file is not available
pub const COMADMIN_E_COMPFILE_NOREGISTRAR = 0x80110434;

// A component in the same DLL is already installed
pub const COMADMIN_E_COREQCOMPINSTALLED = 0x80110435;

// The service is not installed
pub const COMADMIN_E_SERVICENOTINSTALLED = 0x80110436;

// One or more property settings are either invalid or in conflict with each other
pub const COMADMIN_E_PROPERTYSAVEFAILED = 0x80110437;

// The object you are attempting to add or rename already exists
pub const COMADMIN_E_OBJECTEXISTS = 0x80110438;

// The component already exists
pub const COMADMIN_E_COMPONENTEXISTS = 0x80110439;

// The registration file is corrupt
pub const COMADMIN_E_REGFILE_CORRUPT = 0x8011043B;

// The property value is too large
pub const COMADMIN_E_PROPERTY_OVERFLOW = 0x8011043C;

// Object was not found in registry
pub const COMADMIN_E_NOTINREGISTRY = 0x8011043E;

// This object is not poolable
pub const COMADMIN_E_OBJECTNOTPOOLABLE = 0x8011043F;

// A CLSID with the same GUID as the new application ID is already installed on this machine
pub const COMADMIN_E_APPLID_MATCHES_CLSID = 0x80110446;

// A role assigned to a component, interface, or method did not exist in the application
pub const COMADMIN_E_ROLE_DOES_NOT_EXIST = 0x80110447;

// You must have components in an application in order to start the application
pub const COMADMIN_E_START_APP_NEEDS_COMPONENTS = 0x80110448;

// This operation is not enabled on this platform
pub const COMADMIN_E_REQUIRES_DIFFERENT_PLATFORM = 0x80110449;

// Application Proxy is not exportable
pub const COMADMIN_E_CAN_NOT_EXPORT_APP_PROXY = 0x8011044A;

// Failed to start application because it is either a library application or an application proxy
pub const COMADMIN_E_CAN_NOT_START_APP = 0x8011044B;

// System application is not exportable
pub const COMADMIN_E_CAN_NOT_EXPORT_SYS_APP = 0x8011044C;

// Cannot subscribe to this component (the component may have been imported)
pub const COMADMIN_E_CANT_SUBSCRIBE_TO_COMPONENT = 0x8011044D;

// An event class cannot also be a subscriber component
pub const COMADMIN_E_EVENTCLASS_CANT_BE_SUBSCRIBER = 0x8011044E;

// Library applications and application proxies are incompatible
pub const COMADMIN_E_LIB_APP_PROXY_INCOMPATIBLE = 0x8011044F;

// This function is valid for the base partition only
pub const COMADMIN_E_BASE_PARTITION_ONLY = 0x80110450;

// You cannot start an application that has been disabled
pub const COMADMIN_E_START_APP_DISABLED = 0x80110451;

// The specified partition name is already in use on this computer
pub const COMADMIN_E_CAT_DUPLICATE_PARTITION_NAME = 0x80110457;

// The specified partition name is invalid. Check that the name contains at least one visible character
pub const COMADMIN_E_CAT_INVALID_PARTITION_NAME = 0x80110458;

// The partition cannot be deleted because it is the default partition for one or more users
pub const COMADMIN_E_CAT_PARTITION_IN_USE = 0x80110459;

// The partition cannot be exported, because one or more components in the partition have the same file name
pub const COMADMIN_E_FILE_PARTITION_DUPLICATE_FILES = 0x8011045A;

// Applications that contain one or more imported components cannot be installed into a non-base partition
pub const COMADMIN_E_CAT_IMPORTED_COMPONENTS_NOT_ALLOWED = 0x8011045B;

// The application name is not unique and cannot be resolved to an application id
pub const COMADMIN_E_AMBIGUOUS_APPLICATION_NAME = 0x8011045C;

// The partition name is not unique and cannot be resolved to a partition id
pub const COMADMIN_E_AMBIGUOUS_PARTITION_NAME = 0x8011045D;

// The COM+ registry database has not been initialized
pub const COMADMIN_E_REGDB_NOTINITIALIZED = 0x80110472;

// The COM+ registry database is not open
pub const COMADMIN_E_REGDB_NOTOPEN = 0x80110473;

// The COM+ registry database detected a system error
pub const COMADMIN_E_REGDB_SYSTEMERR = 0x80110474;

// The COM+ registry database is already running
pub const COMADMIN_E_REGDB_ALREADYRUNNING = 0x80110475;

// This version of the COM+ registry database cannot be migrated
pub const COMADMIN_E_MIG_VERSIONNOTSUPPORTED = 0x80110480;

// The schema version to be migrated could not be found in the COM+ registry database
pub const COMADMIN_E_MIG_SCHEMANOTFOUND = 0x80110481;

// There was a type mismatch between binaries
pub const COMADMIN_E_CAT_BITNESSMISMATCH = 0x80110482;

// A binary of unknown or invalid type was provided
pub const COMADMIN_E_CAT_UNACCEPTABLEBITNESS = 0x80110483;

// There was a type mismatch between a binary and an application
pub const COMADMIN_E_CAT_WRONGAPPBITNESS = 0x80110484;

// The application cannot be paused or resumed
pub const COMADMIN_E_CAT_PAUSE_RESUME_NOT_SUPPORTED = 0x80110485;

// The COM+ Catalog Server threw an exception during execution
pub const COMADMIN_E_CAT_SERVERFAULT = 0x80110486;

// Only COM+ Applications marked "queued" can be invoked using the "queue" moniker
pub const COMQC_E_APPLICATION_NOT_QUEUED = 0x80110600;

// At least one interface must be marked "queued" in order to create a queued component instance with the "queue" moniker
pub const COMQC_E_NO_QUEUEABLE_INTERFACES = 0x80110601;

// MSMQ is required for the requested operation and is not installed
pub const COMQC_E_QUEUING_SERVICE_NOT_AVAILABLE = 0x80110602;

// Unable to marshal an interface that does not support IPersistStream
pub const COMQC_E_NO_IPERSISTSTREAM = 0x80110603;

// The message is improperly formatted or was damaged in transit
pub const COMQC_E_BAD_MESSAGE = 0x80110604;

// An unauthenticated message was received by an application that accepts only authenticated messages
pub const COMQC_E_UNAUTHENTICATED = 0x80110605;

// The message was requeued or moved by a user not in the "QC Trusted User" role
pub const COMQC_E_UNTRUSTED_ENQUEUER = 0x80110606;

// Cannot create a duplicate resource of type Distributed Transaction Coordinator
pub const MSDTC_E_DUPLICATE_RESOURCE = 0x80110701;

// One of the objects being inserted or updated does not belong to a valid parent collection
pub const COMADMIN_E_OBJECT_PARENT_MISSING = 0x80110808;

// One of the specified objects cannot be found
pub const COMADMIN_E_OBJECT_DOES_NOT_EXIST = 0x80110809;

// The specified application is not currently running
pub const COMADMIN_E_APP_NOT_RUNNING = 0x8011080A;

// The partition(s) specified are not valid.
pub const COMADMIN_E_INVALID_PARTITION = 0x8011080B;

// COM+ applications that run as NT service may not be pooled or recycled
pub const COMADMIN_E_SVCAPP_NOT_POOLABLE_OR_RECYCLABLE = 0x8011080D;

// One or more users are already assigned to a local partition set.
pub const COMADMIN_E_USER_IN_SET = 0x8011080E;

// Library applications may not be recycled.
pub const COMADMIN_E_CANTRECYCLELIBRARYAPPS = 0x8011080F;

// Applications running as NT services may not be recycled.
pub const COMADMIN_E_CANTRECYCLESERVICEAPPS = 0x80110811;

// The process has already been recycled.
pub const COMADMIN_E_PROCESSALREADYRECYCLED = 0x80110812;

// A paused process may not be recycled.
pub const COMADMIN_E_PAUSEDPROCESSMAYNOTBERECYCLED = 0x80110813;

// Library applications may not be NT services.
pub const COMADMIN_E_CANTMAKEINPROCSERVICE = 0x80110814;

// The ProgID provided to the copy operation is invalid. The ProgID is in use by another registered CLSID.
pub const COMADMIN_E_PROGIDINUSEBYCLSID = 0x80110815;

// The partition specified as default is not a member of the partition set.
pub const COMADMIN_E_DEFAULT_PARTITION_NOT_IN_SET = 0x80110816;

// A recycled process may not be paused.
pub const COMADMIN_E_RECYCLEDPROCESSMAYNOTBEPAUSED = 0x80110817;

// Access to the specified partition is denied.
pub const COMADMIN_E_PARTITION_ACCESSDENIED = 0x80110818;

// Only Application Files (*.MSI files) can be installed into partitions.
pub const COMADMIN_E_PARTITION_MSI_ONLY = 0x80110819;

// Applications containing one or more legacy components may not be exported to 1.0 format.
pub const COMADMIN_E_LEGACYCOMPS_NOT_ALLOWED_IN_1_0_FORMAT = 0x8011081A;

// Legacy components may not exist in non-base partitions.
pub const COMADMIN_E_LEGACYCOMPS_NOT_ALLOWED_IN_NONBASE_PARTITIONS = 0x8011081B;

// A component cannot be moved (or copied) from the System Application, an application proxy or a non-changeable application
pub const COMADMIN_E_COMP_MOVE_SOURCE = 0x8011081C;

// A component cannot be moved (or copied) to the System Application, an application proxy or a non-changeable application
pub const COMADMIN_E_COMP_MOVE_DEST = 0x8011081D;

// A private component cannot be moved (or copied) to a library application or to the base partition
pub const COMADMIN_E_COMP_MOVE_PRIVATE = 0x8011081E;

// The Base Application Partition exists in all partition sets and cannot be removed.
pub const COMADMIN_E_BASEPARTITION_REQUIRED_IN_SET = 0x8011081F;

// Alas, Event Class components cannot be aliased.
pub const COMADMIN_E_CANNOT_ALIAS_EVENTCLASS = 0x80110820;

// Access is denied because the component is private.
pub const COMADMIN_E_PRIVATE_ACCESSDENIED = 0x80110821;

// The specified SAFER level is invalid.
pub const COMADMIN_E_SAFERINVALID = 0x80110822;

// The specified user cannot write to the system registry
pub const COMADMIN_E_REGISTRY_ACCESSDENIED = 0x80110823;

// COM+ partitions are currently disabled.
pub const COMADMIN_E_PARTITIONS_DISABLED = 0x80110824;

// Debugger was attached.
pub const WER_S_REPORT_DEBUG = 0x001B0000;

// Report was uploaded.
pub const WER_S_REPORT_UPLOADED = 0x001B0001;

// Report was queued.
pub const WER_S_REPORT_QUEUED = 0x001B0002;

// Reporting was disabled.
pub const WER_S_DISABLED = 0x001B0003;

// Reporting was temporarily suspended.
pub const WER_S_SUSPENDED_UPLOAD = 0x001B0004;

// Report was not queued to queueing being disabled.
pub const WER_S_DISABLED_QUEUE = 0x001B0005;

// Report was uploaded, but not archived due to archiving being disabled.
pub const WER_S_DISABLED_ARCHIVE = 0x001B0006;

// Reporting was successfully spun off as an asynchronous operation.
pub const WER_S_REPORT_ASYNC = 0x001B0007;

// The assertion was handled.
pub const WER_S_IGNORE_ASSERT_INSTANCE = 0x001B0008;

// The assertion was handled and added to a permanent ignore list.
pub const WER_S_IGNORE_ALL_ASSERTS = 0x001B0009;

// The assertion was resumed as unhandled.
pub const WER_S_ASSERT_CONTINUE = 0x001B000A;

// Report was throttled.
pub const WER_S_THROTTLED = 0x001B000B;

// Report was uploaded with cab.
pub const WER_S_REPORT_UPLOADED_CAB = 0x001B000C;

// Crash reporting failed.
pub const WER_E_CRASH_FAILURE = 0x801B8000;

// Report aborted due to user cancelation.
pub const WER_E_CANCELED = 0x801B8001;

// Report aborted due to network failure.
pub const WER_E_NETWORK_FAILURE = 0x801B8002;

// Report not initialized.
pub const WER_E_NOT_INITIALIZED = 0x801B8003;

// Reporting is already in progress for the specified process.
pub const WER_E_ALREADY_REPORTING = 0x801B8004;

// Dump not generated due to a throttle.
pub const WER_E_DUMP_THROTTLED = 0x801B8005;

// Operation failed due to insufficient user consent.
pub const WER_E_INSUFFICIENT_CONSENT = 0x801B8006;

// Report aborted due to performance criteria.
pub const WER_E_TOO_HEAVY = 0x801B8007;

// The IO was completed by a filter.
pub const ERROR_FLT_IO_COMPLETE = 0x001F0001;

// A handler was not defined by the filter for this operation.
pub const ERROR_FLT_NO_HANDLER_DEFINED = 0x801F0001;

// A context is already defined for this object.
pub const ERROR_FLT_CONTEXT_ALREADY_DEFINED = 0x801F0002;

// Asynchronous requests are not valid for this operation.
pub const ERROR_FLT_INVALID_ASYNCHRONOUS_REQUEST = 0x801F0003;

// Disallow the Fast IO path for this operation.
pub const ERROR_FLT_DISALLOW_FAST_IO = 0x801F0004;

// An invalid name request was made. The name requested cannot be retrieved at this time.
pub const ERROR_FLT_INVALID_NAME_REQUEST = 0x801F0005;

// Posting this operation to a worker thread for further processing is not safe at this time because it could lead to a system deadlock.
pub const ERROR_FLT_NOT_SAFE_TO_POST_OPERATION = 0x801F0006;

// The Filter Manager was not initialized when a filter tried to register. Make sure that the Filter Manager is getting loaded as a driver.
pub const ERROR_FLT_NOT_INITIALIZED = 0x801F0007;

// The filter is not ready for attachment to volumes because it has not finished initializing (FltStartFiltering has not been called).
pub const ERROR_FLT_FILTER_NOT_READY = 0x801F0008;

// The filter must cleanup any operation specific context at this time because it is being removed from the system before the operation is completed by the lower drivers.
pub const ERROR_FLT_POST_OPERATION_CLEANUP = 0x801F0009;

// The Filter Manager had an internal error from which it cannot recover, therefore the operation has been failed. This is usually the result of a filter returning an invalid value from a pre-operation callback.
pub const ERROR_FLT_INTERNAL_ERROR = 0x801F000A;

// The object specified for this action is in the process of being deleted, therefore the action requested cannot be completed at this time.
pub const ERROR_FLT_DELETING_OBJECT = 0x801F000B;

// Non-paged pool must be used for this type of context.
pub const ERROR_FLT_MUST_BE_NONPAGED_POOL = 0x801F000C;

// A duplicate handler definition has been provided for an operation.
pub const ERROR_FLT_DUPLICATE_ENTRY = 0x801F000D;

// The callback data queue has been disabled.
pub const ERROR_FLT_CBDQ_DISABLED = 0x801F000E;

// Do not attach the filter to the volume at this time.
pub const ERROR_FLT_DO_NOT_ATTACH = 0x801F000F;

// Do not detach the filter from the volume at this time.
pub const ERROR_FLT_DO_NOT_DETACH = 0x801F0010;

// An instance already exists at this altitude on the volume specified.
pub const ERROR_FLT_INSTANCE_ALTITUDE_COLLISION = 0x801F0011;

// An instance already exists with this name on the volume specified.
pub const ERROR_FLT_INSTANCE_NAME_COLLISION = 0x801F0012;

// The system could not find the filter specified.
pub const ERROR_FLT_FILTER_NOT_FOUND = 0x801F0013;

// The system could not find the volume specified.
pub const ERROR_FLT_VOLUME_NOT_FOUND = 0x801F0014;

// The system could not find the instance specified.
pub const ERROR_FLT_INSTANCE_NOT_FOUND = 0x801F0015;

// No registered context allocation definition was found for the given request.
pub const ERROR_FLT_CONTEXT_ALLOCATION_NOT_FOUND = 0x801F0016;

// An invalid parameter was specified during context registration.
pub const ERROR_FLT_INVALID_CONTEXT_REGISTRATION = 0x801F0017;

// The name requested was not found in Filter Manager's name cache and could not be retrieved from the file system.
pub const ERROR_FLT_NAME_CACHE_MISS = 0x801F0018;

// The requested device object does not exist for the given volume.
pub const ERROR_FLT_NO_DEVICE_OBJECT = 0x801F0019;

// The specified volume is already mounted.
pub const ERROR_FLT_VOLUME_ALREADY_MOUNTED = 0x801F001A;

// The specified Transaction Context is already enlisted in a transaction
pub const ERROR_FLT_ALREADY_ENLISTED = 0x801F001B;

// The specifiec context is already attached to another object
pub const ERROR_FLT_CONTEXT_ALREADY_LINKED = 0x801F001C;

// No waiter is present for the filter's reply to this message.
pub const ERROR_FLT_NO_WAITER_FOR_REPLY = 0x801F0020;

// The filesystem database resource is in use. Registration cannot complete at this time.
pub const ERROR_FLT_REGISTRATION_BUSY = 0x801F0023;

// The next time you reboot the machine a dialog will be displayed giving you a chance to report this failure to Microsoft.
pub const ERROR_HUNG_DISPLAY_DRIVER_THREAD = 0x80260001;

// The operation could not be completed because desktop composition is disabled.
pub const DWM_E_COMPOSITIONDISABLED = 0x80263001;

// The operation is not supported while running in a remote session.
pub const DWM_E_REMOTING_NOT_SUPPORTED = 0x80263002;

// The DWM was unable to provide a redireciton surface to complete the DirectX present.
pub const DWM_E_NO_REDIRECTION_SURFACE_AVAILABLE = 0x80263003;

// The window specified is not currently using queued presents.
pub const DWM_E_NOT_QUEUING_PRESENTS = 0x80263004;

// DWM can not find the adapter specified by the LUID.
pub const DWM_E_ADAPTER_NOT_FOUND = 0x80263005;

// GDI redirection surface of the top level window was returned.
pub const DWM_S_GDI_REDIRECTION_SURFACE = 0x00263005;

// Redirection surface can not be created.  The size of the surface is larger than what is supported on this machine.
pub const DWM_E_TEXTURE_TOO_LARGE = 0x80263007;

// GDI redirection surface is either on a different adapter or in system memory. Perform blt via GDI.
pub const DWM_S_GDI_REDIRECTION_SURFACE_BLT_VIA_GDI = 0x00263008;

// Monitor descriptor could not be obtained.
pub const ERROR_MONITOR_NO_DESCRIPTOR = 0x00261001;

// Format of the obtained monitor descriptor is not supported by this release.
pub const ERROR_MONITOR_UNKNOWN_DESCRIPTOR_FORMAT = 0x00261002;

// Checksum of the obtained monitor descriptor is invalid.
pub const ERROR_MONITOR_INVALID_DESCRIPTOR_CHECKSUM = 0xC0261003;

// Monitor descriptor contains an invalid standard timing block.
pub const ERROR_MONITOR_INVALID_STANDARD_TIMING_BLOCK = 0xC0261004;

// WMI data block registration failed for one of the MSMonitorClass WMI subclasses.
pub const ERROR_MONITOR_WMI_DATABLOCK_REGISTRATION_FAILED = 0xC0261005;

// Provided monitor descriptor block is either corrupted or does not contain monitor's detailed serial number.
pub const ERROR_MONITOR_INVALID_SERIAL_NUMBER_MONDSC_BLOCK = 0xC0261006;

// Provided monitor descriptor block is either corrupted or does not contain monitor's user friendly name.
pub const ERROR_MONITOR_INVALID_USER_FRIENDLY_MONDSC_BLOCK = 0xC0261007;

// There is no monitor descriptor data at the specified (offset, size) region.
pub const ERROR_MONITOR_NO_MORE_DESCRIPTOR_DATA = 0xC0261008;

// Monitor descriptor contains an invalid detailed timing block.
pub const ERROR_MONITOR_INVALID_DETAILED_TIMING_BLOCK = 0xC0261009;

// Monitor descriptor contains invalid manufacture date.
pub const ERROR_MONITOR_INVALID_MANUFACTURE_DATE = 0xC026100A;

// Exclusive mode ownership is needed to create unmanaged primary allocation.
pub const ERROR_GRAPHICS_NOT_EXCLUSIVE_MODE_OWNER = 0xC0262000;

// The driver needs more DMA buffer space in order to complete the requested operation.
pub const ERROR_GRAPHICS_INSUFFICIENT_DMA_BUFFER = 0xC0262001;

// Specified display adapter handle is invalid.
pub const ERROR_GRAPHICS_INVALID_DISPLAY_ADAPTER = 0xC0262002;

// Specified display adapter and all of its state has been reset.
pub const ERROR_GRAPHICS_ADAPTER_WAS_RESET = 0xC0262003;

// The driver stack doesn't match the expected driver model.
pub const ERROR_GRAPHICS_INVALID_DRIVER_MODEL = 0xC0262004;

// Present happened but ended up into the changed desktop mode
pub const ERROR_GRAPHICS_PRESENT_MODE_CHANGED = 0xC0262005;

// Nothing to present due to desktop occlusion
pub const ERROR_GRAPHICS_PRESENT_OCCLUDED = 0xC0262006;

// Not able to present due to denial of desktop access
pub const ERROR_GRAPHICS_PRESENT_DENIED = 0xC0262007;

// Not able to present with color convertion
pub const ERROR_GRAPHICS_CANNOTCOLORCONVERT = 0xC0262008;

// The kernel driver detected a version mismatch between it and the user mode driver.
pub const ERROR_GRAPHICS_DRIVER_MISMATCH = 0xC0262009;

// Specified buffer is not big enough to contain entire requested dataset. Partial data populated up to the size of the buffer. Caller needs to provide buffer of size as specified in the partially populated buffer's content (interface specific).
pub const ERROR_GRAPHICS_PARTIAL_DATA_POPULATED = 0x4026200A;

// Present redirection is disabled (desktop windowing management subsystem is off).
pub const ERROR_GRAPHICS_PRESENT_REDIRECTION_DISABLED = 0xC026200B;

// Previous exclusive VidPn source owner has released its ownership
pub const ERROR_GRAPHICS_PRESENT_UNOCCLUDED = 0xC026200C;

// Window DC is not available for presentation
pub const ERROR_GRAPHICS_WINDOWDC_NOT_AVAILABLE = 0xC026200D;

// Windowless present is disabled (desktop windowing management subsystem is off).
pub const ERROR_GRAPHICS_WINDOWLESS_PRESENT_DISABLED = 0xC026200E;

// Not enough video memory available to complete the operation.
pub const ERROR_GRAPHICS_NO_VIDEO_MEMORY = 0xC0262100;

// Couldn't probe and lock the underlying memory of an allocation.
pub const ERROR_GRAPHICS_CANT_LOCK_MEMORY = 0xC0262101;

// The allocation is currently busy.
pub const ERROR_GRAPHICS_ALLOCATION_BUSY = 0xC0262102;

// An object being referenced has reach the maximum reference count already and can't be reference further.
pub const ERROR_GRAPHICS_TOO_MANY_REFERENCES = 0xC0262103;

// A problem couldn't be solved due to some currently existing condition. The problem should be tried again later.
pub const ERROR_GRAPHICS_TRY_AGAIN_LATER = 0xC0262104;

// A problem couldn't be solved due to some currently existing condition. The problem should be tried again immediately.
pub const ERROR_GRAPHICS_TRY_AGAIN_NOW = 0xC0262105;

// The allocation is invalid.
pub const ERROR_GRAPHICS_ALLOCATION_INVALID = 0xC0262106;

// No more unswizzling aperture are currently available.
pub const ERROR_GRAPHICS_UNSWIZZLING_APERTURE_UNAVAILABLE = 0xC0262107;

// The current allocation can't be unswizzled by an aperture.
pub const ERROR_GRAPHICS_UNSWIZZLING_APERTURE_UNSUPPORTED = 0xC0262108;

// The request failed because a pinned allocation can't be evicted.
pub const ERROR_GRAPHICS_CANT_EVICT_PINNED_ALLOCATION = 0xC0262109;

// The allocation can't be used from its current segment location for the specified operation.
pub const ERROR_GRAPHICS_INVALID_ALLOCATION_USAGE = 0xC0262110;

// A locked allocation can't be used in the current command buffer.
pub const ERROR_GRAPHICS_CANT_RENDER_LOCKED_ALLOCATION = 0xC0262111;

// The allocation being referenced has been closed permanently.
pub const ERROR_GRAPHICS_ALLOCATION_CLOSED = 0xC0262112;

// An invalid allocation instance is being referenced.
pub const ERROR_GRAPHICS_INVALID_ALLOCATION_INSTANCE = 0xC0262113;

// An invalid allocation handle is being referenced.
pub const ERROR_GRAPHICS_INVALID_ALLOCATION_HANDLE = 0xC0262114;

// The allocation being referenced doesn't belong to the current device.
pub const ERROR_GRAPHICS_WRONG_ALLOCATION_DEVICE = 0xC0262115;

// The specified allocation lost its content.
pub const ERROR_GRAPHICS_ALLOCATION_CONTENT_LOST = 0xC0262116;

// GPU exception is detected on the given device. The device is not able to be scheduled.
pub const ERROR_GRAPHICS_GPU_EXCEPTION_ON_DEVICE = 0xC0262200;

// Skip preparation of allocations referenced by the DMA buffer.
pub const ERROR_GRAPHICS_SKIP_ALLOCATION_PREPARATION = 0x40262201;

// Specified VidPN topology is invalid.
pub const ERROR_GRAPHICS_INVALID_VIDPN_TOPOLOGY = 0xC0262300;

// Specified VidPN topology is valid but is not supported by this model of the display adapter.
pub const ERROR_GRAPHICS_VIDPN_TOPOLOGY_NOT_SUPPORTED = 0xC0262301;

// Specified VidPN topology is valid but is not supported by the display adapter at this time, due to current allocation of its resources.
pub const ERROR_GRAPHICS_VIDPN_TOPOLOGY_CURRENTLY_NOT_SUPPORTED = 0xC0262302;

// Specified VidPN handle is invalid.
pub const ERROR_GRAPHICS_INVALID_VIDPN = 0xC0262303;

// Specified video present source is invalid.
pub const ERROR_GRAPHICS_INVALID_VIDEO_PRESENT_SOURCE = 0xC0262304;

// Specified video present target is invalid.
pub const ERROR_GRAPHICS_INVALID_VIDEO_PRESENT_TARGET = 0xC0262305;

// Specified VidPN modality is not supported (e.g. at least two of the pinned modes are not cofunctional).
pub const ERROR_GRAPHICS_VIDPN_MODALITY_NOT_SUPPORTED = 0xC0262306;

// No mode is pinned on the specified VidPN source/target.
pub const ERROR_GRAPHICS_MODE_NOT_PINNED = 0x00262307;

// Specified VidPN source mode set is invalid.
pub const ERROR_GRAPHICS_INVALID_VIDPN_SOURCEMODESET = 0xC0262308;

// Specified VidPN target mode set is invalid.
pub const ERROR_GRAPHICS_INVALID_VIDPN_TARGETMODESET = 0xC0262309;

// Specified video signal frequency is invalid.
pub const ERROR_GRAPHICS_INVALID_FREQUENCY = 0xC026230A;

// Specified video signal active region is invalid.
pub const ERROR_GRAPHICS_INVALID_ACTIVE_REGION = 0xC026230B;

// Specified video signal total region is invalid.
pub const ERROR_GRAPHICS_INVALID_TOTAL_REGION = 0xC026230C;

// Specified video present source mode is invalid.
pub const ERROR_GRAPHICS_INVALID_VIDEO_PRESENT_SOURCE_MODE = 0xC0262310;

// Specified video present target mode is invalid.
pub const ERROR_GRAPHICS_INVALID_VIDEO_PRESENT_TARGET_MODE = 0xC0262311;

// Pinned mode must remain in the set on VidPN's cofunctional modality enumeration.
pub const ERROR_GRAPHICS_PINNED_MODE_MUST_REMAIN_IN_SET = 0xC0262312;

// Specified video present path is already in VidPN's topology.
pub const ERROR_GRAPHICS_PATH_ALREADY_IN_TOPOLOGY = 0xC0262313;

// Specified mode is already in the mode set.
pub const ERROR_GRAPHICS_MODE_ALREADY_IN_MODESET = 0xC0262314;

// Specified video present source set is invalid.
pub const ERROR_GRAPHICS_INVALID_VIDEOPRESENTSOURCESET = 0xC0262315;

// Specified video present target set is invalid.
pub const ERROR_GRAPHICS_INVALID_VIDEOPRESENTTARGETSET = 0xC0262316;

// Specified video present source is already in the video present source set.
pub const ERROR_GRAPHICS_SOURCE_ALREADY_IN_SET = 0xC0262317;

// Specified video present target is already in the video present target set.
pub const ERROR_GRAPHICS_TARGET_ALREADY_IN_SET = 0xC0262318;

// Specified VidPN present path is invalid.
pub const ERROR_GRAPHICS_INVALID_VIDPN_PRESENT_PATH = 0xC0262319;

// Miniport has no recommendation for augmentation of the specified VidPN's topology.
pub const ERROR_GRAPHICS_NO_RECOMMENDED_VIDPN_TOPOLOGY = 0xC026231A;

// Specified monitor frequency range set is invalid.
pub const ERROR_GRAPHICS_INVALID_MONITOR_FREQUENCYRANGESET = 0xC026231B;

// Specified monitor frequency range is invalid.
pub const ERROR_GRAPHICS_INVALID_MONITOR_FREQUENCYRANGE = 0xC026231C;

// Specified frequency range is not in the specified monitor frequency range set.
pub const ERROR_GRAPHICS_FREQUENCYRANGE_NOT_IN_SET = 0xC026231D;

// Specified mode set does not specify preference for one of its modes.
pub const ERROR_GRAPHICS_NO_PREFERRED_MODE = 0x0026231E;

// Specified frequency range is already in the specified monitor frequency range set.
pub const ERROR_GRAPHICS_FREQUENCYRANGE_ALREADY_IN_SET = 0xC026231F;

// Specified mode set is stale. Please reacquire the new mode set.
pub const ERROR_GRAPHICS_STALE_MODESET = 0xC0262320;

// Specified monitor source mode set is invalid.
pub const ERROR_GRAPHICS_INVALID_MONITOR_SOURCEMODESET = 0xC0262321;

// Specified monitor source mode is invalid.
pub const ERROR_GRAPHICS_INVALID_MONITOR_SOURCE_MODE = 0xC0262322;

// Miniport does not have any recommendation regarding the request to provide a functional VidPN given the current display adapter configuration.
pub const ERROR_GRAPHICS_NO_RECOMMENDED_FUNCTIONAL_VIDPN = 0xC0262323;

// ID of the specified mode is already used by another mode in the set.
pub const ERROR_GRAPHICS_MODE_ID_MUST_BE_UNIQUE = 0xC0262324;

// System failed to determine a mode that is supported by both the display adapter and the monitor connected to it.
pub const ERROR_GRAPHICS_EMPTY_ADAPTER_MONITOR_MODE_SUPPORT_INTERSECTION = 0xC0262325;

// Number of video present targets must be greater than or equal to the number of video present sources.
pub const ERROR_GRAPHICS_VIDEO_PRESENT_TARGETS_LESS_THAN_SOURCES = 0xC0262326;

// Specified present path is not in VidPN's topology.
pub const ERROR_GRAPHICS_PATH_NOT_IN_TOPOLOGY = 0xC0262327;

// Display adapter must have at least one video present source.
pub const ERROR_GRAPHICS_ADAPTER_MUST_HAVE_AT_LEAST_ONE_SOURCE = 0xC0262328;

// Display adapter must have at least one video present target.
pub const ERROR_GRAPHICS_ADAPTER_MUST_HAVE_AT_LEAST_ONE_TARGET = 0xC0262329;

// Specified monitor descriptor set is invalid.
pub const ERROR_GRAPHICS_INVALID_MONITORDESCRIPTORSET = 0xC026232A;

// Specified monitor descriptor is invalid.
pub const ERROR_GRAPHICS_INVALID_MONITORDESCRIPTOR = 0xC026232B;

// Specified descriptor is not in the specified monitor descriptor set.
pub const ERROR_GRAPHICS_MONITORDESCRIPTOR_NOT_IN_SET = 0xC026232C;

// Specified descriptor is already in the specified monitor descriptor set.
pub const ERROR_GRAPHICS_MONITORDESCRIPTOR_ALREADY_IN_SET = 0xC026232D;

// ID of the specified monitor descriptor is already used by another descriptor in the set.
pub const ERROR_GRAPHICS_MONITORDESCRIPTOR_ID_MUST_BE_UNIQUE = 0xC026232E;

// Specified video present target subset type is invalid.
pub const ERROR_GRAPHICS_INVALID_VIDPN_TARGET_SUBSET_TYPE = 0xC026232F;

// Two or more of the specified resources are not related to each other, as defined by the interface semantics.
pub const ERROR_GRAPHICS_RESOURCES_NOT_RELATED = 0xC0262330;

// ID of the specified video present source is already used by another source in the set.
pub const ERROR_GRAPHICS_SOURCE_ID_MUST_BE_UNIQUE = 0xC0262331;

// ID of the specified video present target is already used by another target in the set.
pub const ERROR_GRAPHICS_TARGET_ID_MUST_BE_UNIQUE = 0xC0262332;

// Specified VidPN source cannot be used because there is no available VidPN target to connect it to.
pub const ERROR_GRAPHICS_NO_AVAILABLE_VIDPN_TARGET = 0xC0262333;

// Newly arrived monitor could not be associated with a display adapter.
pub const ERROR_GRAPHICS_MONITOR_COULD_NOT_BE_ASSOCIATED_WITH_ADAPTER = 0xC0262334;

// Display adapter in question does not have an associated VidPN manager.
pub const ERROR_GRAPHICS_NO_VIDPNMGR = 0xC0262335;

// VidPN manager of the display adapter in question does not have an active VidPN.
pub const ERROR_GRAPHICS_NO_ACTIVE_VIDPN = 0xC0262336;

// Specified VidPN topology is stale. Please reacquire the new topology.
pub const ERROR_GRAPHICS_STALE_VIDPN_TOPOLOGY = 0xC0262337;

// There is no monitor connected on the specified video present target.
pub const ERROR_GRAPHICS_MONITOR_NOT_CONNECTED = 0xC0262338;

// Specified source is not part of the specified VidPN's topology.
pub const ERROR_GRAPHICS_SOURCE_NOT_IN_TOPOLOGY = 0xC0262339;

// Specified primary surface size is invalid.
pub const ERROR_GRAPHICS_INVALID_PRIMARYSURFACE_SIZE = 0xC026233A;

// Specified visible region size is invalid.
pub const ERROR_GRAPHICS_INVALID_VISIBLEREGION_SIZE = 0xC026233B;

// Specified stride is invalid.
pub const ERROR_GRAPHICS_INVALID_STRIDE = 0xC026233C;

// Specified pixel format is invalid.
pub const ERROR_GRAPHICS_INVALID_PIXELFORMAT = 0xC026233D;

// Specified color basis is invalid.
pub const ERROR_GRAPHICS_INVALID_COLORBASIS = 0xC026233E;

// Specified pixel value access mode is invalid.
pub const ERROR_GRAPHICS_INVALID_PIXELVALUEACCESSMODE = 0xC026233F;

// Specified target is not part of the specified VidPN's topology.
pub const ERROR_GRAPHICS_TARGET_NOT_IN_TOPOLOGY = 0xC0262340;

// Failed to acquire display mode management interface.
pub const ERROR_GRAPHICS_NO_DISPLAY_MODE_MANAGEMENT_SUPPORT = 0xC0262341;

// Specified VidPN source is already owned by a DMM client and cannot be used until that client releases it.
pub const ERROR_GRAPHICS_VIDPN_SOURCE_IN_USE = 0xC0262342;

// Specified VidPN is active and cannot be accessed.
pub const ERROR_GRAPHICS_CANT_ACCESS_ACTIVE_VIDPN = 0xC0262343;

// Specified VidPN present path importance ordinal is invalid.
pub const ERROR_GRAPHICS_INVALID_PATH_IMPORTANCE_ORDINAL = 0xC0262344;

// Specified VidPN present path content geometry transformation is invalid.
pub const ERROR_GRAPHICS_INVALID_PATH_CONTENT_GEOMETRY_TRANSFORMATION = 0xC0262345;

// Specified content geometry transformation is not supported on the respective VidPN present path.
pub const ERROR_GRAPHICS_PATH_CONTENT_GEOMETRY_TRANSFORMATION_NOT_SUPPORTED = 0xC0262346;

// Specified gamma ramp is invalid.
pub const ERROR_GRAPHICS_INVALID_GAMMA_RAMP = 0xC0262347;

// Specified gamma ramp is not supported on the respective VidPN present path.
pub const ERROR_GRAPHICS_GAMMA_RAMP_NOT_SUPPORTED = 0xC0262348;

// Multi-sampling is not supported on the respective VidPN present path.
pub const ERROR_GRAPHICS_MULTISAMPLING_NOT_SUPPORTED = 0xC0262349;

// Specified mode is not in the specified mode set.
pub const ERROR_GRAPHICS_MODE_NOT_IN_MODESET = 0xC026234A;

// Specified data set (e.g. mode set, frequency range set, descriptor set, topology, etc.) is empty.
pub const ERROR_GRAPHICS_DATASET_IS_EMPTY = 0x0026234B;

// Specified data set (e.g. mode set, frequency range set, descriptor set, topology, etc.) does not contain any more elements.
pub const ERROR_GRAPHICS_NO_MORE_ELEMENTS_IN_DATASET = 0x0026234C;

// Specified VidPN topology recommendation reason is invalid.
pub const ERROR_GRAPHICS_INVALID_VIDPN_TOPOLOGY_RECOMMENDATION_REASON = 0xC026234D;

// Specified VidPN present path content type is invalid.
pub const ERROR_GRAPHICS_INVALID_PATH_CONTENT_TYPE = 0xC026234E;

// Specified VidPN present path copy protection type is invalid.
pub const ERROR_GRAPHICS_INVALID_COPYPROTECTION_TYPE = 0xC026234F;

// No more than one unassigned mode set can exist at any given time for a given VidPN source/target.
pub const ERROR_GRAPHICS_UNASSIGNED_MODESET_ALREADY_EXISTS = 0xC0262350;

// Specified content transformation is not pinned on the specified VidPN present path.
pub const ERROR_GRAPHICS_PATH_CONTENT_GEOMETRY_TRANSFORMATION_NOT_PINNED = 0x00262351;

// Specified scanline ordering type is invalid.
pub const ERROR_GRAPHICS_INVALID_SCANLINE_ORDERING = 0xC0262352;

// Topology changes are not allowed for the specified VidPN.
pub const ERROR_GRAPHICS_TOPOLOGY_CHANGES_NOT_ALLOWED = 0xC0262353;

// All available importance ordinals are already used in specified topology.
pub const ERROR_GRAPHICS_NO_AVAILABLE_IMPORTANCE_ORDINALS = 0xC0262354;

// Specified primary surface has a different private format attribute than the current primary surface
pub const ERROR_GRAPHICS_INCOMPATIBLE_PRIVATE_FORMAT = 0xC0262355;

// Specified mode pruning algorithm is invalid
pub const ERROR_GRAPHICS_INVALID_MODE_PRUNING_ALGORITHM = 0xC0262356;

// Specified monitor capability origin is invalid.
pub const ERROR_GRAPHICS_INVALID_MONITOR_CAPABILITY_ORIGIN = 0xC0262357;

// Specified monitor frequency range constraint is invalid.
pub const ERROR_GRAPHICS_INVALID_MONITOR_FREQUENCYRANGE_CONSTRAINT = 0xC0262358;

// Maximum supported number of present paths has been reached.
pub const ERROR_GRAPHICS_MAX_NUM_PATHS_REACHED = 0xC0262359;

// Miniport requested that augmentation be cancelled for the specified source of the specified VidPN's topology.
pub const ERROR_GRAPHICS_CANCEL_VIDPN_TOPOLOGY_AUGMENTATION = 0xC026235A;

// Specified client type was not recognized.
pub const ERROR_GRAPHICS_INVALID_CLIENT_TYPE = 0xC026235B;

// Client VidPN is not set on this adapter (e.g. no user mode initiated mode changes took place on this adapter yet).
pub const ERROR_GRAPHICS_CLIENTVIDPN_NOT_SET = 0xC026235C;

// Specified display adapter child device already has an external device connected to it.
pub const ERROR_GRAPHICS_SPECIFIED_CHILD_ALREADY_CONNECTED = 0xC0262400;

// Specified display adapter child device does not support descriptor exposure.
pub const ERROR_GRAPHICS_CHILD_DESCRIPTOR_NOT_SUPPORTED = 0xC0262401;

// Child device presence was not reliably detected.
pub const ERROR_GRAPHICS_UNKNOWN_CHILD_STATUS = 0x4026242F;

// The display adapter is not linked to any other adapters.
pub const ERROR_GRAPHICS_NOT_A_LINKED_ADAPTER = 0xC0262430;

// Lead adapter in a linked configuration was not enumerated yet.
pub const ERROR_GRAPHICS_LEADLINK_NOT_ENUMERATED = 0xC0262431;

// Some chain adapters in a linked configuration were not enumerated yet.
pub const ERROR_GRAPHICS_CHAINLINKS_NOT_ENUMERATED = 0xC0262432;

// The chain of linked adapters is not ready to start because of an unknown failure.
pub const ERROR_GRAPHICS_ADAPTER_CHAIN_NOT_READY = 0xC0262433;

// An attempt was made to start a lead link display adapter when the chain links were not started yet.
pub const ERROR_GRAPHICS_CHAINLINKS_NOT_STARTED = 0xC0262434;

// An attempt was made to power up a lead link display adapter when the chain links were powered down.
pub const ERROR_GRAPHICS_CHAINLINKS_NOT_POWERED_ON = 0xC0262435;

// The adapter link was found to be in an inconsistent state. Not all adapters are in an expected PNP/Power state.
pub const ERROR_GRAPHICS_INCONSISTENT_DEVICE_LINK_STATE = 0xC0262436;

// Starting the leadlink adapter has been deferred temporarily.
pub const ERROR_GRAPHICS_LEADLINK_START_DEFERRED = 0x40262437;

// The driver trying to start is not the same as the driver for the POSTed display adapter.
pub const ERROR_GRAPHICS_NOT_POST_DEVICE_DRIVER = 0xC0262438;

// The display adapter is being polled for children too frequently at the same polling level.
pub const ERROR_GRAPHICS_POLLING_TOO_FREQUENTLY = 0x40262439;

// Starting the adapter has been deferred temporarily.
pub const ERROR_GRAPHICS_START_DEFERRED = 0x4026243A;

// An operation is being attempted that requires the display adapter to be in a quiescent state.
pub const ERROR_GRAPHICS_ADAPTER_ACCESS_NOT_EXCLUDED = 0xC026243B;

// We can depend on the child device presence returned by the driver.
pub const ERROR_GRAPHICS_DEPENDABLE_CHILD_STATUS = 0x4026243C;

// The driver does not support OPM.
pub const ERROR_GRAPHICS_OPM_NOT_SUPPORTED = 0xC0262500;

// The driver does not support COPP.
pub const ERROR_GRAPHICS_COPP_NOT_SUPPORTED = 0xC0262501;

// The driver does not support UAB.
pub const ERROR_GRAPHICS_UAB_NOT_SUPPORTED = 0xC0262502;

// The specified encrypted parameters are invalid.
pub const ERROR_GRAPHICS_OPM_INVALID_ENCRYPTED_PARAMETERS = 0xC0262503;

// The GDI display device passed to this function does not have any active video outputs.
pub const ERROR_GRAPHICS_OPM_NO_VIDEO_OUTPUTS_EXIST = 0xC0262505;

// An internal error caused this operation to fail.
pub const ERROR_GRAPHICS_OPM_INTERNAL_ERROR = 0xC026250B;

// The function failed because the caller passed in an invalid OPM user mode handle.
pub const ERROR_GRAPHICS_OPM_INVALID_HANDLE = 0xC026250C;

// A certificate could not be returned because the certificate buffer passed to the function was too small.
pub const ERROR_GRAPHICS_PVP_INVALID_CERTIFICATE_LENGTH = 0xC026250E;

// A video output could not be created because the frame buffer is in spanning mode.
pub const ERROR_GRAPHICS_OPM_SPANNING_MODE_ENABLED = 0xC026250F;

// A video output could not be created because the frame buffer is in theater mode.
pub const ERROR_GRAPHICS_OPM_THEATER_MODE_ENABLED = 0xC0262510;

// The function failed because the display adapter's Hardware Functionality Scan failed to validate the graphics hardware.
pub const ERROR_GRAPHICS_PVP_HFS_FAILED = 0xC0262511;

// The HDCP System Renewability Message passed to this function did not comply with section 5 of the HDCP 1.1 specification.
pub const ERROR_GRAPHICS_OPM_INVALID_SRM = 0xC0262512;

// The video output cannot enable the High-bandwidth Digital Content Protection (HDCP) System because it does not support HDCP.
pub const ERROR_GRAPHICS_OPM_OUTPUT_DOES_NOT_SUPPORT_HDCP = 0xC0262513;

// The video output cannot enable Analogue Copy Protection (ACP) because it does not support ACP.
pub const ERROR_GRAPHICS_OPM_OUTPUT_DOES_NOT_SUPPORT_ACP = 0xC0262514;

// The video output cannot enable the Content Generation Management System Analogue (CGMS-A) protection technology because it does not support CGMS-A.
pub const ERROR_GRAPHICS_OPM_OUTPUT_DOES_NOT_SUPPORT_CGMSA = 0xC0262515;

// The IOPMVideoOutput::GetInformation method cannot return the version of the SRM being used because the application never successfully passed an SRM to the video output.
pub const ERROR_GRAPHICS_OPM_HDCP_SRM_NEVER_SET = 0xC0262516;

// The IOPMVideoOutput::Configure method cannot enable the specified output protection technology because the output's screen resolution is too high.
pub const ERROR_GRAPHICS_OPM_RESOLUTION_TOO_HIGH = 0xC0262517;

// The IOPMVideoOutput::Configure method cannot enable HDCP because the display adapter's HDCP hardware is already being used by other physical outputs.
pub const ERROR_GRAPHICS_OPM_ALL_HDCP_HARDWARE_ALREADY_IN_USE = 0xC0262518;

// The operating system asynchronously destroyed this OPM video output because the operating system's state changed. This error typically occurs because the monitor PDO associated with this video output was removed, the monitor PDO associated with this video output was stopped, the video output's session became a non-console session or the video output's desktop became an inactive desktop.
pub const ERROR_GRAPHICS_OPM_VIDEO_OUTPUT_NO_LONGER_EXISTS = 0xC026251A;

// The method failed because the session is changing its type. No IOPMVideoOutput methods can be called when a session is changing its type. There are currently three types of sessions: console, disconnected and remote.
pub const ERROR_GRAPHICS_OPM_SESSION_TYPE_CHANGE_IN_PROGRESS = 0xC026251B;

// Either the IOPMVideoOutput::COPPCompatibleGetInformation, IOPMVideoOutput::GetInformation, or IOPMVideoOutput::Configure method failed. This error is returned when the caller tries to use a COPP specific command while the video output has OPM semantics only.
pub const ERROR_GRAPHICS_OPM_VIDEO_OUTPUT_DOES_NOT_HAVE_COPP_SEMANTICS = 0xC026251C;

// The IOPMVideoOutput::GetInformation and IOPMVideoOutput::COPPCompatibleGetInformation methods return this error if the passed in sequence number is not the expected sequence number or the passed in OMAC value is invalid.
pub const ERROR_GRAPHICS_OPM_INVALID_INFORMATION_REQUEST = 0xC026251D;

// The method failed because an unexpected error occurred inside of a display driver.
pub const ERROR_GRAPHICS_OPM_DRIVER_INTERNAL_ERROR = 0xC026251E;

// Either the IOPMVideoOutput::COPPCompatibleGetInformation, IOPMVideoOutput::GetInformation, or IOPMVideoOutput::Configure method failed. This error is returned when the caller tries to use an OPM specific command while the video output has COPP semantics only.
pub const ERROR_GRAPHICS_OPM_VIDEO_OUTPUT_DOES_NOT_HAVE_OPM_SEMANTICS = 0xC026251F;

// The IOPMVideoOutput::COPPCompatibleGetInformation or IOPMVideoOutput::Configure method failed because the display driver does not support the OPM_GET_ACP_AND_CGMSA_SIGNALING and OPM_SET_ACP_AND_CGMSA_SIGNALING GUIDs.
pub const ERROR_GRAPHICS_OPM_SIGNALING_NOT_SUPPORTED = 0xC0262520;

// The IOPMVideoOutput::Configure function returns this error code if the passed in sequence number is not the expected sequence number or the passed in OMAC value is invalid.
pub const ERROR_GRAPHICS_OPM_INVALID_CONFIGURATION_REQUEST = 0xC0262521;

// The monitor connected to the specified video output does not have an I2C bus.
pub const ERROR_GRAPHICS_I2C_NOT_SUPPORTED = 0xC0262580;

// No device on the I2C bus has the specified address.
pub const ERROR_GRAPHICS_I2C_DEVICE_DOES_NOT_EXIST = 0xC0262581;

// An error occurred while transmitting data to the device on the I2C bus.
pub const ERROR_GRAPHICS_I2C_ERROR_TRANSMITTING_DATA = 0xC0262582;

// An error occurred while receiving data from the device on the I2C bus.
pub const ERROR_GRAPHICS_I2C_ERROR_RECEIVING_DATA = 0xC0262583;

// The monitor does not support the specified VCP code.
pub const ERROR_GRAPHICS_DDCCI_VCP_NOT_SUPPORTED = 0xC0262584;

// The data received from the monitor is invalid.
pub const ERROR_GRAPHICS_DDCCI_INVALID_DATA = 0xC0262585;

// The function failed because a monitor returned an invalid Timing Status byte when the operating system used the DDC/CI Get Timing Report & Timing Message command to get a timing report from a monitor.
pub const ERROR_GRAPHICS_DDCCI_MONITOR_RETURNED_INVALID_TIMING_STATUS_BYTE = 0xC0262586;

// The monitor returned a DDC/CI capabilities string which did not comply with the ACCESS.bus 3.0, DDC/CI 1.1, or MCCS 2 Revision 1 specification.
pub const ERROR_GRAPHICS_MCA_INVALID_CAPABILITIES_STRING = 0xC0262587;

// An internal Monitor Configuration API error occurred.
pub const ERROR_GRAPHICS_MCA_INTERNAL_ERROR = 0xC0262588;

// An operation failed because a DDC/CI message had an invalid value in its command field.
pub const ERROR_GRAPHICS_DDCCI_INVALID_MESSAGE_COMMAND = 0xC0262589;

// An error occurred because the field length of a DDC/CI message contained an invalid value.
pub const ERROR_GRAPHICS_DDCCI_INVALID_MESSAGE_LENGTH = 0xC026258A;

// An error occurred because the checksum field in a DDC/CI message did not match the message's computed checksum value. This error implies that the data was corrupted while it was being transmitted from a monitor to a computer.
pub const ERROR_GRAPHICS_DDCCI_INVALID_MESSAGE_CHECKSUM = 0xC026258B;

// This function failed because an invalid monitor handle was passed to it.
pub const ERROR_GRAPHICS_INVALID_PHYSICAL_MONITOR_HANDLE = 0xC026258C;

// The operating system asynchronously destroyed the monitor which corresponds to this handle because the operating system's state changed. This error typically occurs because the monitor PDO associated with this handle was removed, the monitor PDO associated with this handle was stopped, or a display mode change occurred. A display mode change occurs when windows sends a WM_DISPLAYCHANGE windows message to applications.
pub const ERROR_GRAPHICS_MONITOR_NO_LONGER_EXISTS = 0xC026258D;

// A continuous VCP code's current value is greater than its maximum value. This error code indicates that a monitor returned an invalid value.
pub const ERROR_GRAPHICS_DDCCI_CURRENT_CURRENT_VALUE_GREATER_THAN_MAXIMUM_VALUE = 0xC02625D8;

// The monitor's VCP Version (0xDF) VCP code returned an invalid version value.
pub const ERROR_GRAPHICS_MCA_INVALID_VCP_VERSION = 0xC02625D9;

// The monitor does not comply with the MCCS specification it claims to support.
pub const ERROR_GRAPHICS_MCA_MONITOR_VIOLATES_MCCS_SPECIFICATION = 0xC02625DA;

// The MCCS version in a monitor's mccs_ver capability does not match the MCCS version the monitor reports when the VCP Version (0xDF) VCP code is used.
pub const ERROR_GRAPHICS_MCA_MCCS_VERSION_MISMATCH = 0xC02625DB;

// The Monitor Configuration API only works with monitors which support the MCCS 1.0 specification, MCCS 2.0 specification or the MCCS 2.0 Revision 1 specification.
pub const ERROR_GRAPHICS_MCA_UNSUPPORTED_MCCS_VERSION = 0xC02625DC;

// The monitor returned an invalid monitor technology type. CRT, Plasma and LCD (TFT) are examples of monitor technology types. This error implies that the monitor violated the MCCS 2.0 or MCCS 2.0 Revision 1 specification.
pub const ERROR_GRAPHICS_MCA_INVALID_TECHNOLOGY_TYPE_RETURNED = 0xC02625DE;

// SetMonitorColorTemperature()'s caller passed a color temperature to it which the current monitor did not support. This error implies that the monitor violated the MCCS 2.0 or MCCS 2.0 Revision 1 specification.
pub const ERROR_GRAPHICS_MCA_UNSUPPORTED_COLOR_TEMPERATURE = 0xC02625DF;

// This function can only be used if a program is running in the local console session. It cannot be used if the program is running on a remote desktop session or on a terminal server session.
pub const ERROR_GRAPHICS_ONLY_CONSOLE_SESSION_SUPPORTED = 0xC02625E0;

// This function cannot find an actual GDI display device which corresponds to the specified GDI display device name.
pub const ERROR_GRAPHICS_NO_DISPLAY_DEVICE_CORRESPONDS_TO_NAME = 0xC02625E1;

// The function failed because the specified GDI display device was not attached to the Windows desktop.
pub const ERROR_GRAPHICS_DISPLAY_DEVICE_NOT_ATTACHED_TO_DESKTOP = 0xC02625E2;

// This function does not support GDI mirroring display devices because GDI mirroring display devices do not have any physical monitors associated with them.
pub const ERROR_GRAPHICS_MIRRORING_DEVICES_NOT_SUPPORTED = 0xC02625E3;

// The function failed because an invalid pointer parameter was passed to it. A pointer parameter is invalid if it is NULL, points to an invalid address, points to a kernel mode address, or is not correctly aligned.
pub const ERROR_GRAPHICS_INVALID_POINTER = 0xC02625E4;

// The function failed because the specified GDI device did not have any monitors associated with it.
pub const ERROR_GRAPHICS_NO_MONITORS_CORRESPOND_TO_DISPLAY_DEVICE = 0xC02625E5;

// An array passed to the function cannot hold all of the data that the function must copy into the array.
pub const ERROR_GRAPHICS_PARAMETER_ARRAY_TOO_SMALL = 0xC02625E6;

// An internal error caused an operation to fail.
pub const ERROR_GRAPHICS_INTERNAL_ERROR = 0xC02625E7;

// The function failed because the current session is changing its type. This function cannot be called when the current session is changing its type. There are currently three types of sessions: console, disconnected and remote.
pub const ERROR_GRAPHICS_SESSION_TYPE_CHANGE_IN_PROGRESS = 0xC02605E8;

// The NAP SoH packet is invalid.
pub const NAP_E_INVALID_PACKET = 0x80270001;

// An SoH was missing from the NAP packet.
pub const NAP_E_MISSING_SOH = 0x80270002;

// The entity ID conflicts with an already registered id.
pub const NAP_E_CONFLICTING_ID = 0x80270003;

// No cached SoH is present.
pub const NAP_E_NO_CACHED_SOH = 0x80270004;

// The entity is still bound to the NAP system.
pub const NAP_E_STILL_BOUND = 0x80270005;

// The entity is not registered with the NAP system.
pub const NAP_E_NOT_REGISTERED = 0x80270006;

// The entity is not initialized with the NAP system.
pub const NAP_E_NOT_INITIALIZED = 0x80270007;

// The correlation id in the SoH-Request and SoH-Response do not match up.
pub const NAP_E_MISMATCHED_ID = 0x80270008;

// Completion was indicated on a request that is not currently pending.
pub const NAP_E_NOT_PENDING = 0x80270009;

// The NAP component's id was not found.
pub const NAP_E_ID_NOT_FOUND = 0x8027000A;

// The maximum size of the connection is too small for an SoH packet.
pub const NAP_E_MAXSIZE_TOO_SMALL = 0x8027000B;

// The NapAgent service is not running.
pub const NAP_E_SERVICE_NOT_RUNNING = 0x8027000C;

// A certificate is already present in the cert store.
pub const NAP_S_CERT_ALREADY_PRESENT = 0x0027000D;

// The entity is disabled with the NapAgent service.
pub const NAP_E_ENTITY_DISABLED = 0x8027000E;

// Group Policy is not configured.
pub const NAP_E_NETSH_GROUPPOLICY_ERROR = 0x8027000F;

// Too many simultaneous calls.
pub const NAP_E_TOO_MANY_CALLS = 0x80270010;

// SHV configuration already existed.
pub const NAP_E_SHV_CONFIG_EXISTED = 0x80270011;

// SHV configuration is not found.
pub const NAP_E_SHV_CONFIG_NOT_FOUND = 0x80270012;

// SHV timed out on the request.
pub const NAP_E_SHV_TIMEOUT = 0x80270013;

// This is an error mask to convert TPM hardware errors to win errors.
pub const TPM_E_ERROR_MASK = 0x80280000;

// Authentication failed.
pub const TPM_E_AUTHFAIL = 0x80280001;

// The index to a PCR, DIR or other register is incorrect.
pub const TPM_E_BADINDEX = 0x80280002;

// One or more parameter is bad.
pub const TPM_E_BAD_PARAMETER = 0x80280003;

// An operation completed successfully but the auditing of that operation failed.
pub const TPM_E_AUDITFAILURE = 0x80280004;

// The clear disable flag is set and all clear operations now require physical access.
pub const TPM_E_CLEAR_DISABLED = 0x80280005;

// Activate the Trusted Platform Module (TPM).
pub const TPM_E_DEACTIVATED = 0x80280006;

// Enable the Trusted Platform Module (TPM).
pub const TPM_E_DISABLED = 0x80280007;

// The target command has been disabled.
pub const TPM_E_DISABLED_CMD = 0x80280008;

// The operation failed.
pub const TPM_E_FAIL = 0x80280009;

// The ordinal was unknown or inconsistent.
pub const TPM_E_BAD_ORDINAL = 0x8028000A;

// The ability to install an owner is disabled.
pub const TPM_E_INSTALL_DISABLED = 0x8028000B;

// The key handle cannot be interpreted.
pub const TPM_E_INVALID_KEYHANDLE = 0x8028000C;

// The key handle points to an invalid key.
pub const TPM_E_KEYNOTFOUND = 0x8028000D;

// Unacceptable encryption scheme.
pub const TPM_E_INAPPROPRIATE_ENC = 0x8028000E;

// Migration authorization failed.
pub const TPM_E_MIGRATEFAIL = 0x8028000F;

// PCR information could not be interpreted.
pub const TPM_E_INVALID_PCR_INFO = 0x80280010;

// No room to load key.
pub const TPM_E_NOSPACE = 0x80280011;

// There is no Storage Root Key (SRK) set.
pub const TPM_E_NOSRK = 0x80280012;

// An encrypted blob is invalid or was not created by this TPM.
pub const TPM_E_NOTSEALED_BLOB = 0x80280013;

// The Trusted Platform Module (TPM) already has an owner.
pub const TPM_E_OWNER_SET = 0x80280014;

// The TPM has insufficient internal resources to perform the requested action.
pub const TPM_E_RESOURCES = 0x80280015;

// A random string was too short.
pub const TPM_E_SHORTRANDOM = 0x80280016;

// The TPM does not have the space to perform the operation.
pub const TPM_E_SIZE = 0x80280017;

// The named PCR value does not match the current PCR value.
pub const TPM_E_WRONGPCRVAL = 0x80280018;

// The paramSize argument to the command has the incorrect value .
pub const TPM_E_BAD_PARAM_SIZE = 0x80280019;

// There is no existing SHA-1 thread.
pub const TPM_E_SHA_THREAD = 0x8028001A;

// The calculation is unable to proceed because the existing SHA-1 thread has already encountered an error.
pub const TPM_E_SHA_ERROR = 0x8028001B;

// The TPM hardware device reported a failure during its internal self test. Try restarting the computer to resolve the problem. If the problem continues, check for the latest BIOS or firmware update for your TPM hardware. Consult the computer manufacturer's documentation for instructions.
pub const TPM_E_FAILEDSELFTEST = 0x8028001C;

// The authorization for the second key in a 2 key function failed authorization.
pub const TPM_E_AUTH2FAIL = 0x8028001D;

// The tag value sent to for a command is invalid.
pub const TPM_E_BADTAG = 0x8028001E;

// An IO error occurred transmitting information to the TPM.
pub const TPM_E_IOERROR = 0x8028001F;

// The encryption process had a problem.
pub const TPM_E_ENCRYPT_ERROR = 0x80280020;

// The decryption process did not complete.
pub const TPM_E_DECRYPT_ERROR = 0x80280021;

// An invalid handle was used.
pub const TPM_E_INVALID_AUTHHANDLE = 0x80280022;

// The TPM does not have an Endorsement Key (EK) installed.
pub const TPM_E_NO_ENDORSEMENT = 0x80280023;

// The usage of a key is not allowed.
pub const TPM_E_INVALID_KEYUSAGE = 0x80280024;

// The submitted entity type is not allowed.
pub const TPM_E_WRONG_ENTITYTYPE = 0x80280025;

// The command was received in the wrong sequence relative to TPM_Init and a subsequent TPM_Startup.
pub const TPM_E_INVALID_POSTINIT = 0x80280026;

// Signed data cannot include additional DER information.
pub const TPM_E_INAPPROPRIATE_SIG = 0x80280027;

// The key properties in TPM_KEY_PARMs are not supported by this TPM.
pub const TPM_E_BAD_KEY_PROPERTY = 0x80280028;

// The migration properties of this key are incorrect.
pub const TPM_E_BAD_MIGRATION = 0x80280029;

// The signature or encryption scheme for this key is incorrect or not permitted in this situation.
pub const TPM_E_BAD_SCHEME = 0x8028002A;

// The size of the data (or blob) parameter is bad or inconsistent with the referenced key.
pub const TPM_E_BAD_DATASIZE = 0x8028002B;

// A mode parameter is bad, such as capArea or subCapArea for TPM_GetCapability, phsicalPresence parameter for TPM_PhysicalPresence, or migrationType for TPM_CreateMigrationBlob.
pub const TPM_E_BAD_MODE = 0x8028002C;

// Either the physicalPresence or physicalPresenceLock bits have the wrong value.
pub const TPM_E_BAD_PRESENCE = 0x8028002D;

// The TPM cannot perform this version of the capability.
pub const TPM_E_BAD_VERSION = 0x8028002E;

// The TPM does not allow for wrapped transport sessions.
pub const TPM_E_NO_WRAP_TRANSPORT = 0x8028002F;

// TPM audit construction failed and the underlying command was returning a failure code also.
pub const TPM_E_AUDITFAIL_UNSUCCESSFUL = 0x80280030;

// TPM audit construction failed and the underlying command was returning success.
pub const TPM_E_AUDITFAIL_SUCCESSFUL = 0x80280031;

// Attempt to reset a PCR register that does not have the resettable attribute.
pub const TPM_E_NOTRESETABLE = 0x80280032;

// Attempt to reset a PCR register that requires locality and locality modifier not part of command transport.
pub const TPM_E_NOTLOCAL = 0x80280033;

// Make identity blob not properly typed.
pub const TPM_E_BAD_TYPE = 0x80280034;

// When saving context identified resource type does not match actual resource.
pub const TPM_E_INVALID_RESOURCE = 0x80280035;

// The TPM is attempting to execute a command only available when in FIPS mode.
pub const TPM_E_NOTFIPS = 0x80280036;

// The command is attempting to use an invalid family ID.
pub const TPM_E_INVALID_FAMILY = 0x80280037;

// The permission to manipulate the NV storage is not available.
pub const TPM_E_NO_NV_PERMISSION = 0x80280038;

// The operation requires a signed command.
pub const TPM_E_REQUIRES_SIGN = 0x80280039;

// Wrong operation to load an NV key.
pub const TPM_E_KEY_NOTSUPPORTED = 0x8028003A;

// NV_LoadKey blob requires both owner and blob authorization.
pub const TPM_E_AUTH_CONFLICT = 0x8028003B;

// The NV area is locked and not writtable.
pub const TPM_E_AREA_LOCKED = 0x8028003C;

// The locality is incorrect for the attempted operation.
pub const TPM_E_BAD_LOCALITY = 0x8028003D;

// The NV area is read only and can't be written to.
pub const TPM_E_READ_ONLY = 0x8028003E;

// There is no protection on the write to the NV area.
pub const TPM_E_PER_NOWRITE = 0x8028003F;

// The family count value does not match.
pub const TPM_E_FAMILYCOUNT = 0x80280040;

// The NV area has already been written to.
pub const TPM_E_WRITE_LOCKED = 0x80280041;

// The NV area attributes conflict.
pub const TPM_E_BAD_ATTRIBUTES = 0x80280042;

// The structure tag and version are invalid or inconsistent.
pub const TPM_E_INVALID_STRUCTURE = 0x80280043;

// The key is under control of the TPM Owner and can only be evicted by the TPM Owner.
pub const TPM_E_KEY_OWNER_CONTROL = 0x80280044;

// The counter handle is incorrect.
pub const TPM_E_BAD_COUNTER = 0x80280045;

// The write is not a complete write of the area.
pub const TPM_E_NOT_FULLWRITE = 0x80280046;

// The gap between saved context counts is too large.
pub const TPM_E_CONTEXT_GAP = 0x80280047;

// The maximum number of NV writes without an owner has been exceeded.
pub const TPM_E_MAXNVWRITES = 0x80280048;

// No operator AuthData value is set.
pub const TPM_E_NOOPERATOR = 0x80280049;

// The resource pointed to by context is not loaded.
pub const TPM_E_RESOURCEMISSING = 0x8028004A;

// The delegate administration is locked.
pub const TPM_E_DELEGATE_LOCK = 0x8028004B;

// Attempt to manage a family other then the delegated family.
pub const TPM_E_DELEGATE_FAMILY = 0x8028004C;

// Delegation table management not enabled.
pub const TPM_E_DELEGATE_ADMIN = 0x8028004D;

// There was a command executed outside of an exclusive transport session.
pub const TPM_E_TRANSPORT_NOTEXCLUSIVE = 0x8028004E;

// Attempt to context save a owner evict controlled key.
pub const TPM_E_OWNER_CONTROL = 0x8028004F;

// The DAA command has no resources availble to execute the command.
pub const TPM_E_DAA_RESOURCES = 0x80280050;

// The consistency check on DAA parameter inputData0 has failed.
pub const TPM_E_DAA_INPUT_DATA0 = 0x80280051;

// The consistency check on DAA parameter inputData1 has failed.
pub const TPM_E_DAA_INPUT_DATA1 = 0x80280052;

// The consistency check on DAA_issuerSettings has failed.
pub const TPM_E_DAA_ISSUER_SETTINGS = 0x80280053;

// The consistency check on DAA_tpmSpecific has failed.
pub const TPM_E_DAA_TPM_SETTINGS = 0x80280054;

// The atomic process indicated by the submitted DAA command is not the expected process.
pub const TPM_E_DAA_STAGE = 0x80280055;

// The issuer's validity check has detected an inconsistency.
pub const TPM_E_DAA_ISSUER_VALIDITY = 0x80280056;

// The consistency check on w has failed.
pub const TPM_E_DAA_WRONG_W = 0x80280057;

// The handle is incorrect.
pub const TPM_E_BAD_HANDLE = 0x80280058;

// Delegation is not correct.
pub const TPM_E_BAD_DELEGATE = 0x80280059;

// The context blob is invalid.
pub const TPM_E_BADCONTEXT = 0x8028005A;

// Too many contexts held by the TPM.
pub const TPM_E_TOOMANYCONTEXTS = 0x8028005B;

// Migration authority signature validation failure.
pub const TPM_E_MA_TICKET_SIGNATURE = 0x8028005C;

// Migration destination not authenticated.
pub const TPM_E_MA_DESTINATION = 0x8028005D;

// Migration source incorrect.
pub const TPM_E_MA_SOURCE = 0x8028005E;

// Incorrect migration authority.
pub const TPM_E_MA_AUTHORITY = 0x8028005F;

// Attempt to revoke the EK and the EK is not revocable.
pub const TPM_E_PERMANENTEK = 0x80280061;

// Bad signature of CMK ticket.
pub const TPM_E_BAD_SIGNATURE = 0x80280062;

// There is no room in the context list for additional contexts.
pub const TPM_E_NOCONTEXTSPACE = 0x80280063;

// The command was blocked.
pub const TPM_E_COMMAND_BLOCKED = 0x80280400;

// The specified handle was not found.
pub const TPM_E_INVALID_HANDLE = 0x80280401;

// The TPM returned a duplicate handle and the command needs to be resubmitted.
pub const TPM_E_DUPLICATE_VHANDLE = 0x80280402;

// The command within the transport was blocked.
pub const TPM_E_EMBEDDED_COMMAND_BLOCKED = 0x80280403;

// The command within the transport is not supported.
pub const TPM_E_EMBEDDED_COMMAND_UNSUPPORTED = 0x80280404;

// The TPM is too busy to respond to the command immediately, but the command could be resubmitted at a later time.
pub const TPM_E_RETRY = 0x80280800;

// SelfTestFull has not been run.
pub const TPM_E_NEEDS_SELFTEST = 0x80280801;

// The TPM is currently executing a full selftest.
pub const TPM_E_DOING_SELFTEST = 0x80280802;

// The TPM is defending against dictionary attacks and is in a time-out period.
pub const TPM_E_DEFEND_LOCK_RUNNING = 0x80280803;

// An internal error has occurred within the Trusted Platform Module support program.
pub const TBS_E_INTERNAL_ERROR = 0x80284001;

// One or more input parameters is bad.
pub const TBS_E_BAD_PARAMETER = 0x80284002;

// A specified output pointer is bad.
pub const TBS_E_INVALID_OUTPUT_POINTER = 0x80284003;

// The specified context handle does not refer to a valid context.
pub const TBS_E_INVALID_CONTEXT = 0x80284004;

// A specified output buffer is too small.
pub const TBS_E_INSUFFICIENT_BUFFER = 0x80284005;

// An error occurred while communicating with the TPM.
pub const TBS_E_IOERROR = 0x80284006;

// One or more context parameters is invalid.
pub const TBS_E_INVALID_CONTEXT_PARAM = 0x80284007;

// The TBS service is not running and could not be started.
pub const TBS_E_SERVICE_NOT_RUNNING = 0x80284008;

// A new context could not be created because there are too many open contexts.
pub const TBS_E_TOO_MANY_TBS_CONTEXTS = 0x80284009;

// A new virtual resource could not be created because there are too many open virtual resources.
pub const TBS_E_TOO_MANY_RESOURCES = 0x8028400A;

// The TBS service has been started but is not yet running.
pub const TBS_E_SERVICE_START_PENDING = 0x8028400B;

// The physical presence interface is not supported.
pub const TBS_E_PPI_NOT_SUPPORTED = 0x8028400C;

// The command was canceled.
pub const TBS_E_COMMAND_CANCELED = 0x8028400D;

// The input or output buffer is too large.
pub const TBS_E_BUFFER_TOO_LARGE = 0x8028400E;

// A compatible Trusted Platform Module (TPM) Security Device cannot be found on this computer.
pub const TBS_E_TPM_NOT_FOUND = 0x8028400F;

// The TBS service has been disabled.
pub const TBS_E_SERVICE_DISABLED = 0x80284010;

// No TCG event log is available.
pub const TBS_E_NO_EVENT_LOG = 0x80284011;

// The caller does not have the appropriate rights to perform the requested operation.
pub const TBS_E_ACCESS_DENIED = 0x80284012;

// The TPM provisioning action is not allowed by the specified flags.  For provisioning to be successful, one of several actions may be required.  The TPM management console (tpm.msc) action to make the TPM Ready may help.  For further information, see the documentation for the Win32_Tpm WMI method 'Provision'.  (The actions that may be required include importing the TPM Owner Authorization value into the system, calling the Win32_Tpm WMI method for provisioning the TPM and specifying TRUE for either 'ForceClear_Allowed' or 'PhysicalPresencePrompts_Allowed' (as indicated by the value returned in the Additional Information), or enabling the TPM in the system BIOS.)
pub const TBS_E_PROVISIONING_NOT_ALLOWED = 0x80284013;

// The Physical Presence Interface of this firmware does not support the requested method.
pub const TBS_E_PPI_FUNCTION_UNSUPPORTED = 0x80284014;

// The requested TPM OwnerAuth value was not found.
pub const TBS_E_OWNERAUTH_NOT_FOUND = 0x80284015;

// The TPM provisioning did not complete.  For more information on completing the provisioning, call the Win32_Tpm WMI method for provisioning the TPM ('Provision') and check the returned Information.
pub const TBS_E_PROVISIONING_INCOMPLETE = 0x80284016;

// The command buffer is not in the correct state.
pub const TPMAPI_E_INVALID_STATE = 0x80290100;

// The command buffer does not contain enough data to satisfy the request.
pub const TPMAPI_E_NOT_ENOUGH_DATA = 0x80290101;

// The command buffer cannot contain any more data.
pub const TPMAPI_E_TOO_MUCH_DATA = 0x80290102;

// One or more output parameters was NULL or invalid.
pub const TPMAPI_E_INVALID_OUTPUT_POINTER = 0x80290103;

// One or more input parameters is invalid.
pub const TPMAPI_E_INVALID_PARAMETER = 0x80290104;

// Not enough memory was available to satisfy the request.
pub const TPMAPI_E_OUT_OF_MEMORY = 0x80290105;

// The specified buffer was too small.
pub const TPMAPI_E_BUFFER_TOO_SMALL = 0x80290106;

// An internal error was detected.
pub const TPMAPI_E_INTERNAL_ERROR = 0x80290107;

// The caller does not have the appropriate rights to perform the requested operation.
pub const TPMAPI_E_ACCESS_DENIED = 0x80290108;

// The specified authorization information was invalid.
pub const TPMAPI_E_AUTHORIZATION_FAILED = 0x80290109;

// The specified context handle was not valid.
pub const TPMAPI_E_INVALID_CONTEXT_HANDLE = 0x8029010A;

// An error occurred while communicating with the TBS.
pub const TPMAPI_E_TBS_COMMUNICATION_ERROR = 0x8029010B;

// The TPM returned an unexpected result.
pub const TPMAPI_E_TPM_COMMAND_ERROR = 0x8029010C;

// The message was too large for the encoding scheme.
pub const TPMAPI_E_MESSAGE_TOO_LARGE = 0x8029010D;

// The encoding in the blob was not recognized.
pub const TPMAPI_E_INVALID_ENCODING = 0x8029010E;

// The key size is not valid.
pub const TPMAPI_E_INVALID_KEY_SIZE = 0x8029010F;

// The encryption operation failed.
pub const TPMAPI_E_ENCRYPTION_FAILED = 0x80290110;

// The key parameters structure was not valid
pub const TPMAPI_E_INVALID_KEY_PARAMS = 0x80290111;

// The requested supplied data does not appear to be a valid migration authorization blob.
pub const TPMAPI_E_INVALID_MIGRATION_AUTHORIZATION_BLOB = 0x80290112;

// The specified PCR index was invalid
pub const TPMAPI_E_INVALID_PCR_INDEX = 0x80290113;

// The data given does not appear to be a valid delegate blob.
pub const TPMAPI_E_INVALID_DELEGATE_BLOB = 0x80290114;

// One or more of the specified context parameters was not valid.
pub const TPMAPI_E_INVALID_CONTEXT_PARAMS = 0x80290115;

// The data given does not appear to be a valid key blob
pub const TPMAPI_E_INVALID_KEY_BLOB = 0x80290116;

// The specified PCR data was invalid.
pub const TPMAPI_E_INVALID_PCR_DATA = 0x80290117;

// The format of the owner auth data was invalid.
pub const TPMAPI_E_INVALID_OWNER_AUTH = 0x80290118;

// The random number generated did not pass FIPS RNG check.
pub const TPMAPI_E_FIPS_RNG_CHECK_FAILED = 0x80290119;

// The TCG Event Log does not contain any data.
pub const TPMAPI_E_EMPTY_TCG_LOG = 0x8029011A;

// An entry in the TCG Event Log was invalid.
pub const TPMAPI_E_INVALID_TCG_LOG_ENTRY = 0x8029011B;

// A TCG Separator was not found.
pub const TPMAPI_E_TCG_SEPARATOR_ABSENT = 0x8029011C;

// A digest value in a TCG Log entry did not match hashed data.
pub const TPMAPI_E_TCG_INVALID_DIGEST_ENTRY = 0x8029011D;

// The requested operation was blocked by current TPM policy. Please contact your system administrator for assistance.
pub const TPMAPI_E_POLICY_DENIES_OPERATION = 0x8029011E;

// The specified buffer was too small.
pub const TBSIMP_E_BUFFER_TOO_SMALL = 0x80290200;

// The context could not be cleaned up.
pub const TBSIMP_E_CLEANUP_FAILED = 0x80290201;

// The specified context handle is invalid.
pub const TBSIMP_E_INVALID_CONTEXT_HANDLE = 0x80290202;

// An invalid context parameter was specified.
pub const TBSIMP_E_INVALID_CONTEXT_PARAM = 0x80290203;

// An error occurred while communicating with the TPM
pub const TBSIMP_E_TPM_ERROR = 0x80290204;

// No entry with the specified key was found.
pub const TBSIMP_E_HASH_BAD_KEY = 0x80290205;

// The specified virtual handle matches a virtual handle already in use.
pub const TBSIMP_E_DUPLICATE_VHANDLE = 0x80290206;

// The pointer to the returned handle location was NULL or invalid
pub const TBSIMP_E_INVALID_OUTPUT_POINTER = 0x80290207;

// One or more parameters is invalid
pub const TBSIMP_E_INVALID_PARAMETER = 0x80290208;

// The RPC subsystem could not be initialized.
pub const TBSIMP_E_RPC_INIT_FAILED = 0x80290209;

// The TBS scheduler is not running.
pub const TBSIMP_E_SCHEDULER_NOT_RUNNING = 0x8029020A;

// The command was canceled.
pub const TBSIMP_E_COMMAND_CANCELED = 0x8029020B;

// There was not enough memory to fulfill the request
pub const TBSIMP_E_OUT_OF_MEMORY = 0x8029020C;

// The specified list is empty, or the iteration has reached the end of the list.
pub const TBSIMP_E_LIST_NO_MORE_ITEMS = 0x8029020D;

// The specified item was not found in the list.
pub const TBSIMP_E_LIST_NOT_FOUND = 0x8029020E;

// The TPM does not have enough space to load the requested resource.
pub const TBSIMP_E_NOT_ENOUGH_SPACE = 0x8029020F;

// There are too many TPM contexts in use.
pub const TBSIMP_E_NOT_ENOUGH_TPM_CONTEXTS = 0x80290210;

// The TPM command failed.
pub const TBSIMP_E_COMMAND_FAILED = 0x80290211;

// The TBS does not recognize the specified ordinal.
pub const TBSIMP_E_UNKNOWN_ORDINAL = 0x80290212;

// The requested resource is no longer available.
pub const TBSIMP_E_RESOURCE_EXPIRED = 0x80290213;

// The resource type did not match.
pub const TBSIMP_E_INVALID_RESOURCE = 0x80290214;

// No resources can be unloaded.
pub const TBSIMP_E_NOTHING_TO_UNLOAD = 0x80290215;

// No new entries can be added to the hash table.
pub const TBSIMP_E_HASH_TABLE_FULL = 0x80290216;

// A new TBS context could not be created because there are too many open contexts.
pub const TBSIMP_E_TOO_MANY_TBS_CONTEXTS = 0x80290217;

// A new virtual resource could not be created because there are too many open virtual resources.
pub const TBSIMP_E_TOO_MANY_RESOURCES = 0x80290218;

// The physical presence interface is not supported.
pub const TBSIMP_E_PPI_NOT_SUPPORTED = 0x80290219;

// TBS is not compatible with the version of TPM found on the system.
pub const TBSIMP_E_TPM_INCOMPATIBLE = 0x8029021A;

// No TCG event log is available.
pub const TBSIMP_E_NO_EVENT_LOG = 0x8029021B;

// A general error was detected when attempting to acquire the BIOS's response to a Physical Presence command.
pub const TPM_E_PPI_ACPI_FAILURE = 0x80290300;

// The user failed to confirm the TPM operation request.
pub const TPM_E_PPI_USER_ABORT = 0x80290301;

// The BIOS failure prevented the successful execution of the requested TPM operation (e.g. invalid TPM operation request, BIOS communication error with the TPM).
pub const TPM_E_PPI_BIOS_FAILURE = 0x80290302;

// The BIOS does not support the physical presence interface.
pub const TPM_E_PPI_NOT_SUPPORTED = 0x80290303;

// The Physical Presence command was blocked by current BIOS settings. The system owner may be able to reconfigure the BIOS settings to allow the command.
pub const TPM_E_PPI_BLOCKED_IN_BIOS = 0x80290304;

// This is an error mask to convert Platform Crypto Provider errors to win errors.
pub const TPM_E_PCP_ERROR_MASK = 0x80290400;

// The Platform Crypto Device is currently not ready. It needs to be fully provisioned to be operational.
pub const TPM_E_PCP_DEVICE_NOT_READY = 0x80290401;

// The handle provided to the Platform Crypto Provider is invalid.
pub const TPM_E_PCP_INVALID_HANDLE = 0x80290402;

// A parameter provided to the Platform Crypto Provider is invalid.
pub const TPM_E_PCP_INVALID_PARAMETER = 0x80290403;

// A provided flag to the Platform Crypto Provider is not supported.
pub const TPM_E_PCP_FLAG_NOT_SUPPORTED = 0x80290404;

// The requested operation is not supported by this Platform Crypto Provider.
pub const TPM_E_PCP_NOT_SUPPORTED = 0x80290405;

// The buffer is too small to contain all data. No information has been written to the buffer.
pub const TPM_E_PCP_BUFFER_TOO_SMALL = 0x80290406;

// An unexpected internal error has occurred in the Platform Crypto Provider.
pub const TPM_E_PCP_INTERNAL_ERROR = 0x80290407;

// The authorization to use a provider object has failed.
pub const TPM_E_PCP_AUTHENTICATION_FAILED = 0x80290408;

// The Platform Crypto Device has ignored the authorization for the provider object, to mitigate against a dictionary attack.
pub const TPM_E_PCP_AUTHENTICATION_IGNORED = 0x80290409;

// The referenced policy was not found.
pub const TPM_E_PCP_POLICY_NOT_FOUND = 0x8029040A;

// The referenced profile was not found.
pub const TPM_E_PCP_PROFILE_NOT_FOUND = 0x8029040B;

// The validation was not succesful.
pub const TPM_E_PCP_VALIDATION_FAILED = 0x8029040C;

// An attempt was made to import or load a key under an incorrect storage parent.
pub const TPM_E_PCP_WRONG_PARENT = 0x8029040E;

// The TPM key is not loaded.
pub const TPM_E_KEY_NOT_LOADED = 0x8029040F;

// The TPM key certification has not been generated.
pub const TPM_E_NO_KEY_CERTIFICATION = 0x80290410;

// The TPM key is not yet finalized.
pub const TPM_E_KEY_NOT_FINALIZED = 0x80290411;

// The TPM attestation challenge is not set.
pub const TPM_E_ATTESTATION_CHALLENGE_NOT_SET = 0x80290412;

// The TPM PCR info is not available.
pub const TPM_E_NOT_PCR_BOUND = 0x80290413;

// The TPM key is already finalized.
pub const TPM_E_KEY_ALREADY_FINALIZED = 0x80290414;

// The TPM key usage policy is not supported.
pub const TPM_E_KEY_USAGE_POLICY_NOT_SUPPORTED = 0x80290415;

// The TPM key usage policy is invalid.
pub const TPM_E_KEY_USAGE_POLICY_INVALID = 0x80290416;

// There was a problem with the software key being imported into the TPM.
pub const TPM_E_SOFT_KEY_ERROR = 0x80290417;

// The TPM key is not authenticated.
pub const TPM_E_KEY_NOT_AUTHENTICATED = 0x80290418;

// The TPM key is not an AIK.
pub const TPM_E_PCP_KEY_NOT_AIK = 0x80290419;

// The TPM key is not a signing key.
pub const TPM_E_KEY_NOT_SIGNING_KEY = 0x8029041A;

// The TPM is locked out.
pub const TPM_E_LOCKED_OUT = 0x8029041B;

// The claim type requested is not supported.
pub const TPM_E_CLAIM_TYPE_NOT_SUPPORTED = 0x8029041C;

// TPM version is not supported.
pub const TPM_E_VERSION_NOT_SUPPORTED = 0x8029041D;

// The buffer lengths do not match.
pub const TPM_E_BUFFER_LENGTH_MISMATCH = 0x8029041E;

// The RSA key creation is blocked on this TPM due to known security vulnerabilities.
pub const TPM_E_PCP_IFX_RSA_KEY_CREATION_BLOCKED = 0x8029041F;

// TPM related network operations are blocked as Zero Exhaust mode is enabled on client.
pub const TPM_E_ZERO_EXHAUST_ENABLED = 0x80290500;

// Data Collector Set was not found.
pub const PLA_E_DCS_NOT_FOUND = 0x80300002;

// The Data Collector Set or one of its dependencies is already in use.
pub const PLA_E_DCS_IN_USE = 0x803000AA;

// Unable to start Data Collector Set because there are too many folders.
pub const PLA_E_TOO_MANY_FOLDERS = 0x80300045;

// Not enough free disk space to start Data Collector Set.
pub const PLA_E_NO_MIN_DISK = 0x80300070;

// Data Collector Set already exists.
pub const PLA_E_DCS_ALREADY_EXISTS = 0x803000B7;

// Property value will be ignored.
pub const PLA_S_PROPERTY_IGNORED = 0x00300100;

// Property value conflict.
pub const PLA_E_PROPERTY_CONFLICT = 0x80300101;

// The current configuration for this Data Collector Set requires that it contain exactly one Data Collector.
pub const PLA_E_DCS_SINGLETON_REQUIRED = 0x80300102;

// A user account is required in order to commit the current Data Collector Set properties.
pub const PLA_E_CREDENTIALS_REQUIRED = 0x80300103;

// Data Collector Set is not running.
pub const PLA_E_DCS_NOT_RUNNING = 0x80300104;

// A conflict was detected in the list of include/exclude APIs. Do not specify the same API in both the include list and the exclude list.
pub const PLA_E_CONFLICT_INCL_EXCL_API = 0x80300105;

// The executable path you have specified refers to a network share or UNC path.
pub const PLA_E_NETWORK_EXE_NOT_VALID = 0x80300106;

// The executable path you have specified is already configured for API tracing.
pub const PLA_E_EXE_ALREADY_CONFIGURED = 0x80300107;

// The executable path you have specified does not exist. Verify that the specified path is correct.
pub const PLA_E_EXE_PATH_NOT_VALID = 0x80300108;

// Data Collector already exists.
pub const PLA_E_DC_ALREADY_EXISTS = 0x80300109;

// The wait for the Data Collector Set start notification has timed out.
pub const PLA_E_DCS_START_WAIT_TIMEOUT = 0x8030010A;

// The wait for the Data Collector to start has timed out.
pub const PLA_E_DC_START_WAIT_TIMEOUT = 0x8030010B;

// The wait for the report generation tool to finish has timed out.
pub const PLA_E_REPORT_WAIT_TIMEOUT = 0x8030010C;

// Duplicate items are not allowed.
pub const PLA_E_NO_DUPLICATES = 0x8030010D;

// When specifying the executable that you want to trace, you must specify a full path to the executable and not just a filename.
pub const PLA_E_EXE_FULL_PATH_REQUIRED = 0x8030010E;

// The session name provided is invalid.
pub const PLA_E_INVALID_SESSION_NAME = 0x8030010F;

// The Event Log channel Microsoft-Windows-Diagnosis-PLA/Operational must be enabled to perform this operation.
pub const PLA_E_PLA_CHANNEL_NOT_ENABLED = 0x80300110;

// The Event Log channel Microsoft-Windows-TaskScheduler must be enabled to perform this operation.
pub const PLA_E_TASKSCHED_CHANNEL_NOT_ENABLED = 0x80300111;

// The execution of the Rules Manager failed.
pub const PLA_E_RULES_MANAGER_FAILED = 0x80300112;

// An error occurred while attempting to compress or extract the data.
pub const PLA_E_CABAPI_FAILURE = 0x80300113;

// This drive is locked by BitLocker Drive Encryption. You must unlock this drive from Control Panel.
pub const FVE_E_LOCKED_VOLUME = 0x80310000;

// This drive is not encrypted.
pub const FVE_E_NOT_ENCRYPTED = 0x80310001;

// The BIOS did not correctly communicate with the Trusted Platform Module (TPM). Contact the computer manufacturer for BIOS upgrade instructions.
pub const FVE_E_NO_TPM_BIOS = 0x80310002;

// The BIOS did not correctly communicate with the master boot record (MBR). Contact the computer manufacturer for BIOS upgrade instructions.
pub const FVE_E_NO_MBR_METRIC = 0x80310003;

// A required TPM measurement is missing. If there is a bootable CD or DVD in your computer, remove it, restart the computer, and turn on BitLocker again. If the problem persists, ensure the master boot record is up to date.
pub const FVE_E_NO_BOOTSECTOR_METRIC = 0x80310004;

// The boot sector of this drive is not compatible with BitLocker Drive Encryption. Use the Bootrec.exe tool in the Windows Recovery Environment to update or repair the boot manager (BOOTMGR).
pub const FVE_E_NO_BOOTMGR_METRIC = 0x80310005;

// The boot manager of this operating system is not compatible with BitLocker Drive Encryption. Use the Bootrec.exe tool in the Windows Recovery Environment to update or repair the boot manager (BOOTMGR).
pub const FVE_E_WRONG_BOOTMGR = 0x80310006;

// At least one secure key protector is required for this operation to be performed.
pub const FVE_E_SECURE_KEY_REQUIRED = 0x80310007;

// BitLocker Drive Encryption is not enabled on this drive. Turn on BitLocker.
pub const FVE_E_NOT_ACTIVATED = 0x80310008;

// BitLocker Drive Encryption cannot perform the requested action. This condition may occur when two requests are issued at the same time. Wait a few moments and then try the action again.
pub const FVE_E_ACTION_NOT_ALLOWED = 0x80310009;

// The Active Directory Domain Services forest does not contain the required attributes and classes to host BitLocker Drive Encryption or Trusted Platform Module information. Contact your domain administrator to verify that any required BitLocker Active Directory schema extensions have been installed.
pub const FVE_E_AD_SCHEMA_NOT_INSTALLED = 0x8031000A;

// The type of the data obtained from Active Directory was not expected. The BitLocker recovery information may be missing or corrupted.
pub const FVE_E_AD_INVALID_DATATYPE = 0x8031000B;

// The size of the data obtained from Active Directory was not expected. The BitLocker recovery information may be missing or corrupted.
pub const FVE_E_AD_INVALID_DATASIZE = 0x8031000C;

// The attribute read from Active Directory does not contain any values. The BitLocker recovery information may be missing or corrupted.
pub const FVE_E_AD_NO_VALUES = 0x8031000D;

// The attribute was not set. Verify that you are logged on with a domain account that has the ability to write information to Active Directory objects.
pub const FVE_E_AD_ATTR_NOT_SET = 0x8031000E;

// The specified attribute cannot be found in Active Directory Domain Services. Contact your domain administrator to verify that any required BitLocker Active Directory schema extensions have been installed.
pub const FVE_E_AD_GUID_NOT_FOUND = 0x8031000F;

// The BitLocker metadata for the encrypted drive is not valid. You can attempt to repair the drive to restore access.
pub const FVE_E_BAD_INFORMATION = 0x80310010;

// The drive cannot be encrypted because it does not have enough free space. Delete any unnecessary data on the drive to create additional free space and then try again.
pub const FVE_E_TOO_SMALL = 0x80310011;

// The drive cannot be encrypted because it contains system boot information. Create a separate partition for use as the system drive that contains the boot information and a second partition for use as the operating system drive and then encrypt the operating system drive.
pub const FVE_E_SYSTEM_VOLUME = 0x80310012;

// The drive cannot be encrypted because the file system is not supported.
pub const FVE_E_FAILED_WRONG_FS = 0x80310013;

// The file system size is larger than the partition size in the partition table. This drive may be corrupt or may have been tampered with. To use it with BitLocker, you must reformat the partition.
pub const FVE_E_BAD_PARTITION_SIZE = 0x80310014;

// This drive cannot be encrypted.
pub const FVE_E_NOT_SUPPORTED = 0x80310015;

// The data is not valid.
pub const FVE_E_BAD_DATA = 0x80310016;

// The data drive specified is not set to automatically unlock on the current computer and cannot be unlocked automatically.
pub const FVE_E_VOLUME_NOT_BOUND = 0x80310017;

// You must initialize the Trusted Platform Module (TPM) before you can use BitLocker Drive Encryption.
pub const FVE_E_TPM_NOT_OWNED = 0x80310018;

// The operation attempted cannot be performed on an operating system drive.
pub const FVE_E_NOT_DATA_VOLUME = 0x80310019;

// The buffer supplied to a function was insufficient to contain the returned data. Increase the buffer size before running the function again.
pub const FVE_E_AD_INSUFFICIENT_BUFFER = 0x8031001A;

// A read operation failed while converting the drive. The drive was not converted. Please re-enable BitLocker.
pub const FVE_E_CONV_READ = 0x8031001B;

// A write operation failed while converting the drive. The drive was not converted. Please re-enable BitLocker.
pub const FVE_E_CONV_WRITE = 0x8031001C;

// One or more BitLocker key protectors are required. You cannot delete the last key on this drive.
pub const FVE_E_KEY_REQUIRED = 0x8031001D;

// Cluster configurations are not supported by BitLocker Drive Encryption.
pub const FVE_E_CLUSTERING_NOT_SUPPORTED = 0x8031001E;

// The drive specified is already configured to be automatically unlocked on the current computer.
pub const FVE_E_VOLUME_BOUND_ALREADY = 0x8031001F;

// The operating system drive is not protected by BitLocker Drive Encryption.
pub const FVE_E_OS_NOT_PROTECTED = 0x80310020;

// BitLocker Drive Encryption has been suspended on this drive. All BitLocker key protectors configured for this drive are effectively disabled, and the drive will be automatically unlocked using an unencrypted (clear) key.
pub const FVE_E_PROTECTION_DISABLED = 0x80310021;

// The drive you are attempting to lock does not have any key protectors available for encryption because BitLocker protection is currently suspended. Re-enable BitLocker to lock this drive.
pub const FVE_E_RECOVERY_KEY_REQUIRED = 0x80310022;

// BitLocker cannot use the Trusted Platform Module (TPM) to protect a data drive. TPM protection can only be used with the operating system drive.
pub const FVE_E_FOREIGN_VOLUME = 0x80310023;

// The BitLocker metadata for the encrypted drive cannot be updated because it was locked for updating by another process. Please try this process again.
pub const FVE_E_OVERLAPPED_UPDATE = 0x80310024;

// The authorization data for the storage root key (SRK) of the Trusted Platform Module (TPM) is not zero and is therefore incompatible with BitLocker. Please initialize the TPM before attempting to use it with BitLocker.
pub const FVE_E_TPM_SRK_AUTH_NOT_ZERO = 0x80310025;

// The drive encryption algorithm cannot be used on this sector size.
pub const FVE_E_FAILED_SECTOR_SIZE = 0x80310026;

// The drive cannot be unlocked with the key provided. Confirm that you have provided the correct key and try again.
pub const FVE_E_FAILED_AUTHENTICATION = 0x80310027;

// The drive specified is not the operating system drive.
pub const FVE_E_NOT_OS_VOLUME = 0x80310028;

// BitLocker Drive Encryption cannot be turned off on the operating system drive until the auto unlock feature has been disabled for the fixed data drives and removable data drives associated with this computer.
pub const FVE_E_AUTOUNLOCK_ENABLED = 0x80310029;

// The system partition boot sector does not perform Trusted Platform Module (TPM) measurements. Use the Bootrec.exe tool in the Windows Recovery Environment to update or repair the boot sector.
pub const FVE_E_WRONG_BOOTSECTOR = 0x8031002A;

// BitLocker Drive Encryption operating system drives must be formatted with the NTFS file system in order to be encrypted. Convert the drive to NTFS, and then turn on BitLocker.
pub const FVE_E_WRONG_SYSTEM_FS = 0x8031002B;

// Group Policy settings require that a recovery password be specified before encrypting the drive.
pub const FVE_E_POLICY_PASSWORD_REQUIRED = 0x8031002C;

// The drive encryption algorithm and key cannot be set on a previously encrypted drive. To encrypt this drive with BitLocker Drive Encryption, remove the previous encryption and then turn on BitLocker.
pub const FVE_E_CANNOT_SET_FVEK_ENCRYPTED = 0x8031002D;

// BitLocker Drive Encryption cannot encrypt the specified drive because an encryption key is not available. Add a key protector to encrypt this drive.
pub const FVE_E_CANNOT_ENCRYPT_NO_KEY = 0x8031002E;

// BitLocker Drive Encryption detected bootable media (CD or DVD) in the computer. Remove the media and restart the computer before configuring BitLocker.
pub const FVE_E_BOOTABLE_CDDVD = 0x80310030;

// This key protector cannot be added. Only one key protector of this type is allowed for this drive.
pub const FVE_E_PROTECTOR_EXISTS = 0x80310031;

// The recovery password file was not found because a relative path was specified. Recovery passwords must be saved to a fully qualified path. Environment variables configured on the computer can be used in the path.
pub const FVE_E_RELATIVE_PATH = 0x80310032;

// The specified key protector was not found on the drive. Try another key protector.
pub const FVE_E_PROTECTOR_NOT_FOUND = 0x80310033;

// The recovery key provided is corrupt and cannot be used to access the drive. An alternative recovery method, such as recovery password, a data recovery agent, or a backup version of the recovery key must be used to recover access to the drive.
pub const FVE_E_INVALID_KEY_FORMAT = 0x80310034;

// The format of the recovery password provided is invalid. BitLocker recovery passwords are 48 digits. Verify that the recovery password is in the correct format and then try again.
pub const FVE_E_INVALID_PASSWORD_FORMAT = 0x80310035;

// The random number generator check test failed.
pub const FVE_E_FIPS_RNG_CHECK_FAILED = 0x80310036;

// The Group Policy setting requiring FIPS compliance prevents a local recovery password from being generated or used by BitLocker Drive Encryption. When operating in FIPS-compliant mode, BitLocker recovery options can be either a recovery key stored on a USB drive or recovery through a data recovery agent.
pub const FVE_E_FIPS_PREVENTS_RECOVERY_PASSWORD = 0x80310037;

// The Group Policy setting requiring FIPS compliance prevents the recovery password from being saved to Active Directory. When operating in FIPS-compliant mode, BitLocker recovery options can be either a recovery key stored on a USB drive or recovery through a data recovery agent. Check your Group Policy settings configuration.
pub const FVE_E_FIPS_PREVENTS_EXTERNAL_KEY_EXPORT = 0x80310038;

// The drive must be fully decrypted to complete this operation.
pub const FVE_E_NOT_DECRYPTED = 0x80310039;

// The key protector specified cannot be used for this operation.
pub const FVE_E_INVALID_PROTECTOR_TYPE = 0x8031003A;

// No key protectors exist on the drive to perform the hardware test.
pub const FVE_E_NO_PROTECTORS_TO_TEST = 0x8031003B;

// The BitLocker startup key or recovery password cannot be found on the USB device. Verify that you have the correct USB device, that the USB device is plugged into the computer on an active USB port, restart the computer, and then try again. If the problem persists, contact the computer manufacturer for BIOS upgrade instructions.
pub const FVE_E_KEYFILE_NOT_FOUND = 0x8031003C;

// The BitLocker startup key or recovery password file provided is corrupt or invalid. Verify that you have the correct startup key or recovery password file and try again.
pub const FVE_E_KEYFILE_INVALID = 0x8031003D;

// The BitLocker encryption key cannot be obtained from the startup key or recovery password. Verify that you have the correct startup key or recovery password and try again.
pub const FVE_E_KEYFILE_NO_VMK = 0x8031003E;

// The Trusted Platform Module (TPM) is disabled. The TPM must be enabled, initialized, and have valid ownership before it can be used with BitLocker Drive Encryption.
pub const FVE_E_TPM_DISABLED = 0x8031003F;

// The BitLocker configuration of the specified drive cannot be managed because this computer is currently operating in Safe Mode. While in Safe Mode, BitLocker Drive Encryption can only be used for recovery purposes.
pub const FVE_E_NOT_ALLOWED_IN_SAFE_MODE = 0x80310040;

// The Trusted Platform Module (TPM) was unable to unlock the drive. Either the system boot information changed after choosing BitLocker settings or the PIN did not match. If the problem persists after several tries, there may be a hardware or firmware problem.
pub const FVE_E_TPM_INVALID_PCR = 0x80310041;

// The BitLocker encryption key cannot be obtained from the Trusted Platform Module (TPM).
pub const FVE_E_TPM_NO_VMK = 0x80310042;

// The BitLocker encryption key cannot be obtained from the Trusted Platform Module (TPM) and PIN.
pub const FVE_E_PIN_INVALID = 0x80310043;

// A boot application has changed since BitLocker Drive Encryption was enabled.
pub const FVE_E_AUTH_INVALID_APPLICATION = 0x80310044;

// The Boot Configuration Data (BCD) settings have changed since BitLocker Drive Encryption was enabled.
pub const FVE_E_AUTH_INVALID_CONFIG = 0x80310045;

// The Group Policy setting requiring FIPS compliance prohibits the use of unencrypted keys, which prevents BitLocker from being suspended on this drive. Please contact your domain administrator for more information.
pub const FVE_E_FIPS_DISABLE_PROTECTION_NOT_ALLOWED = 0x80310046;

// This drive cannot be encrypted by BitLocker Drive Encryption because the file system does not extend to the end of the drive. Repartition this drive and then try again.
pub const FVE_E_FS_NOT_EXTENDED = 0x80310047;

// BitLocker Drive Encryption cannot be enabled on the operating system drive. Contact the computer manufacturer for BIOS upgrade instructions.
pub const FVE_E_FIRMWARE_TYPE_NOT_SUPPORTED = 0x80310048;

// This version of Windows does not include BitLocker Drive Encryption. To use BitLocker Drive Encryption, please upgrade the operating system.
pub const FVE_E_NO_LICENSE = 0x80310049;

// BitLocker Drive Encryption cannot be used because critical BitLocker system files are missing or corrupted. Use Windows Startup Repair to restore these files to your computer.
pub const FVE_E_NOT_ON_STACK = 0x8031004A;

// The drive cannot be locked when the drive is in use.
pub const FVE_E_FS_MOUNTED = 0x8031004B;

// The access token associated with the current thread is not an impersonated token.
pub const FVE_E_TOKEN_NOT_IMPERSONATED = 0x8031004C;

// The BitLocker encryption key cannot be obtained. Verify that the Trusted Platform Module (TPM) is enabled and ownership has been taken. If this computer does not have a TPM, verify that the USB drive is inserted and available.
pub const FVE_E_DRY_RUN_FAILED = 0x8031004D;

// You must restart your computer before continuing with BitLocker Drive Encryption.
pub const FVE_E_REBOOT_REQUIRED = 0x8031004E;

// Drive encryption cannot occur while boot debugging is enabled. Use the bcdedit command-line tool to turn off boot debugging.
pub const FVE_E_DEBUGGER_ENABLED = 0x8031004F;

// No action was taken as BitLocker Drive Encryption is in raw access mode.
pub const FVE_E_RAW_ACCESS = 0x80310050;

// BitLocker Drive Encryption cannot enter raw access mode for this drive because the drive is currently in use.
pub const FVE_E_RAW_BLOCKED = 0x80310051;

// The path specified in the Boot Configuration Data (BCD) for a BitLocker Drive Encryption integrity-protected application is incorrect. Please verify and correct your BCD settings and try again.
pub const FVE_E_BCD_APPLICATIONS_PATH_INCORRECT = 0x80310052;

// BitLocker Drive Encryption can only be used for limited provisioning or recovery purposes when the computer is running in pre-installation or recovery environments.
pub const FVE_E_NOT_ALLOWED_IN_VERSION = 0x80310053;

// The auto-unlock master key was not available from the operating system drive.
pub const FVE_E_NO_AUTOUNLOCK_MASTER_KEY = 0x80310054;

// The system firmware failed to enable clearing of system memory when the computer was restarted.
pub const FVE_E_MOR_FAILED = 0x80310055;

// The hidden drive cannot be encrypted.
pub const FVE_E_HIDDEN_VOLUME = 0x80310056;

// BitLocker encryption keys were ignored because the drive was in a transient state.
pub const FVE_E_TRANSIENT_STATE = 0x80310057;

// Public key based protectors are not allowed on this drive.
pub const FVE_E_PUBKEY_NOT_ALLOWED = 0x80310058;

// BitLocker Drive Encryption is already performing an operation on this drive. Please complete all operations before continuing.
pub const FVE_E_VOLUME_HANDLE_OPEN = 0x80310059;

// This version of Windows does not support this feature of BitLocker Drive Encryption. To use this feature, upgrade the operating system.
pub const FVE_E_NO_FEATURE_LICENSE = 0x8031005A;

// The Group Policy settings for BitLocker startup options are in conflict and cannot be applied. Contact your system administrator for more information.
pub const FVE_E_INVALID_STARTUP_OPTIONS = 0x8031005B;

// Group Policy settings do not permit the creation of a recovery password.
pub const FVE_E_POLICY_RECOVERY_PASSWORD_NOT_ALLOWED = 0x8031005C;

// Group Policy settings require the creation of a recovery password.
pub const FVE_E_POLICY_RECOVERY_PASSWORD_REQUIRED = 0x8031005D;

// Group Policy settings do not permit the creation of a recovery key.
pub const FVE_E_POLICY_RECOVERY_KEY_NOT_ALLOWED = 0x8031005E;

// Group Policy settings require the creation of a recovery key.
pub const FVE_E_POLICY_RECOVERY_KEY_REQUIRED = 0x8031005F;

// Group Policy settings do not permit the use of a PIN at startup. Please choose a different BitLocker startup option.
pub const FVE_E_POLICY_STARTUP_PIN_NOT_ALLOWED = 0x80310060;

// Group Policy settings require the use of a PIN at startup. Please choose this BitLocker startup option.
pub const FVE_E_POLICY_STARTUP_PIN_REQUIRED = 0x80310061;

// Group Policy settings do not permit the use of a startup key. Please choose a different BitLocker startup option.
pub const FVE_E_POLICY_STARTUP_KEY_NOT_ALLOWED = 0x80310062;

// Group Policy settings require the use of a startup key. Please choose this BitLocker startup option.
pub const FVE_E_POLICY_STARTUP_KEY_REQUIRED = 0x80310063;

// Group Policy settings do not permit the use of a startup key and PIN. Please choose a different BitLocker startup option.
pub const FVE_E_POLICY_STARTUP_PIN_KEY_NOT_ALLOWED = 0x80310064;

// Group Policy settings require the use of a startup key and PIN. Please choose this BitLocker startup option.
pub const FVE_E_POLICY_STARTUP_PIN_KEY_REQUIRED = 0x80310065;

// Group policy does not permit the use of TPM-only at startup. Please choose a different BitLocker startup option.
pub const FVE_E_POLICY_STARTUP_TPM_NOT_ALLOWED = 0x80310066;

// Group Policy settings require the use of TPM-only at startup. Please choose this BitLocker startup option.
pub const FVE_E_POLICY_STARTUP_TPM_REQUIRED = 0x80310067;

// The PIN provided does not meet minimum or maximum length requirements.
pub const FVE_E_POLICY_INVALID_PIN_LENGTH = 0x80310068;

// The key protector is not supported by the version of BitLocker Drive Encryption currently on the drive. Upgrade the drive to add the key protector.
pub const FVE_E_KEY_PROTECTOR_NOT_SUPPORTED = 0x80310069;

// Group Policy settings do not permit the creation of a password.
pub const FVE_E_POLICY_PASSPHRASE_NOT_ALLOWED = 0x8031006A;

// Group Policy settings require the creation of a password.
pub const FVE_E_POLICY_PASSPHRASE_REQUIRED = 0x8031006B;

// The Group Policy setting requiring FIPS compliance prevents passwords from being generated or used. Please contact your system administrator for more information.
pub const FVE_E_FIPS_PREVENTS_PASSPHRASE = 0x8031006C;

// A password cannot be added to the operating system drive.
pub const FVE_E_OS_VOLUME_PASSPHRASE_NOT_ALLOWED = 0x8031006D;

// The BitLocker object identifier (OID) on the drive appears to be invalid or corrupt. Use manage-BDE to reset the OID on this drive.
pub const FVE_E_INVALID_BITLOCKER_OID = 0x8031006E;

// The drive is too small to be protected using BitLocker Drive Encryption.
pub const FVE_E_VOLUME_TOO_SMALL = 0x8031006F;

// The selected discovery drive type is incompatible with the file system on the drive. BitLocker To Go discovery drives must be created on FAT formatted drives.
pub const FVE_E_DV_NOT_SUPPORTED_ON_FS = 0x80310070;

// The selected discovery drive type is not allowed by the computer's Group Policy settings. Verify that Group Policy settings allow the creation of discovery drives for use with BitLocker To Go.
pub const FVE_E_DV_NOT_ALLOWED_BY_GP = 0x80310071;

// Group Policy settings do not permit user certificates such as smart cards to be used with BitLocker Drive Encryption.
pub const FVE_E_POLICY_USER_CERTIFICATE_NOT_ALLOWED = 0x80310072;

// Group Policy settings require that you have a valid user certificate, such as a smart card, to be used with BitLocker Drive Encryption.
pub const FVE_E_POLICY_USER_CERTIFICATE_REQUIRED = 0x80310073;

// Group Policy settings requires that you use a smart card-based key protector with BitLocker Drive Encryption.
pub const FVE_E_POLICY_USER_CERT_MUST_BE_HW = 0x80310074;

// Group Policy settings do not permit BitLocker-protected fixed data drives to be automatically unlocked.
pub const FVE_E_POLICY_USER_CONFIGURE_FDV_AUTOUNLOCK_NOT_ALLOWED = 0x80310075;

// Group Policy settings do not permit BitLocker-protected removable data drives to be automatically unlocked.
pub const FVE_E_POLICY_USER_CONFIGURE_RDV_AUTOUNLOCK_NOT_ALLOWED = 0x80310076;

// Group Policy settings do not permit you to configure BitLocker Drive Encryption on removable data drives.
pub const FVE_E_POLICY_USER_CONFIGURE_RDV_NOT_ALLOWED = 0x80310077;

// Group Policy settings do not permit you to turn on BitLocker Drive Encryption on removable data drives. Please contact your system administrator if you need to turn on BitLocker.
pub const FVE_E_POLICY_USER_ENABLE_RDV_NOT_ALLOWED = 0x80310078;

// Group Policy settings do not permit turning off BitLocker Drive Encryption on removable data drives. Please contact your system administrator if you need to turn off BitLocker.
pub const FVE_E_POLICY_USER_DISABLE_RDV_NOT_ALLOWED = 0x80310079;

// Your password does not meet minimum password length requirements. By default, passwords must be at least 8 characters in length. Check with your system administrator for the password length requirement in your organization.
pub const FVE_E_POLICY_INVALID_PASSPHRASE_LENGTH = 0x80310080;

// Your password does not meet the complexity requirements set by your system administrator. Try adding upper and lowercase characters, numbers, and symbols.
pub const FVE_E_POLICY_PASSPHRASE_TOO_SIMPLE = 0x80310081;

// This drive cannot be encrypted because it is reserved for Windows System Recovery Options.
pub const FVE_E_RECOVERY_PARTITION = 0x80310082;

// BitLocker Drive Encryption cannot be applied to this drive because of conflicting Group Policy settings. BitLocker cannot be configured to automatically unlock fixed data drives when user recovery options are disabled. If you want BitLocker-protected fixed data drives to be automatically unlocked after key validation has occurred, please ask your system administrator to resolve the settings conflict before enabling BitLocker.
pub const FVE_E_POLICY_CONFLICT_FDV_RK_OFF_AUK_ON = 0x80310083;

// BitLocker Drive Encryption cannot be applied to this drive because of conflicting Group Policy settings. BitLocker cannot be configured to automatically unlock removable data drives when user recovery option are disabled. If you want BitLocker-protected removable data drives to be automatically unlocked after key validation has occurred, please ask your system administrator to resolve the settings conflict before enabling BitLocker.
pub const FVE_E_POLICY_CONFLICT_RDV_RK_OFF_AUK_ON = 0x80310084;

// The Enhanced Key Usage (EKU) attribute of the specified certificate does not permit it to be used for BitLocker Drive Encryption. BitLocker does not require that a certificate have an EKU attribute, but if one is configured it must be set to an object identifier (OID) that matches the OID configured for BitLocker.
pub const FVE_E_NON_BITLOCKER_OID = 0x80310085;

// BitLocker Drive Encryption cannot be applied to this drive as currently configured because of Group Policy settings. The certificate you provided for drive encryption is self-signed. Current Group Policy settings do not permit the use of self-signed certificates. Obtain a new certificate from your certification authority before attempting to enable BitLocker.
pub const FVE_E_POLICY_PROHIBITS_SELFSIGNED = 0x80310086;

// BitLocker Encryption cannot be applied to this drive because of conflicting Group Policy settings. When write access to drives not protected by BitLocker is denied, the use of a USB startup key cannot be required. Please have your system administrator resolve these policy conflicts before attempting to enable BitLocker.
pub const FVE_E_POLICY_CONFLICT_RO_AND_STARTUP_KEY_REQUIRED = 0x80310087;

// BitLocker Drive Encryption failed to recover from an abruptly terminated conversion. This could be due to either all conversion logs being corrupted or the media being write-protected.
pub const FVE_E_CONV_RECOVERY_FAILED = 0x80310088;

// The requested virtualization size is too big.
pub const FVE_E_VIRTUALIZED_SPACE_TOO_BIG = 0x80310089;

// BitLocker Drive Encryption cannot be applied to this drive because there are conflicting Group Policy settings for recovery options on operating system drives. Storing recovery information to Active Directory Domain Services cannot be required when the generation of recovery passwords is not permitted. Please have your system administrator resolve these policy conflicts before attempting to enable BitLocker.
pub const FVE_E_POLICY_CONFLICT_OSV_RP_OFF_ADB_ON = 0x80310090;

// BitLocker Drive Encryption cannot be applied to this drive because there are conflicting Group Policy settings for recovery options on fixed data drives. Storing recovery information to Active Directory Domain Services cannot be required when the generation of recovery passwords is not permitted. Please have your system administrator resolve these policy conflicts before attempting to enable BitLocker.
pub const FVE_E_POLICY_CONFLICT_FDV_RP_OFF_ADB_ON = 0x80310091;

// BitLocker Drive Encryption cannot be applied to this drive because there are conflicting Group Policy settings for recovery options on removable data drives. Storing recovery information to Active Directory Domain Services cannot be required when the generation of recovery passwords is not permitted. Please have your system administrator resolve these policy conflicts before attempting to enable BitLocker.
pub const FVE_E_POLICY_CONFLICT_RDV_RP_OFF_ADB_ON = 0x80310092;

// The Key Usage (KU) attribute of the specified certificate does not permit it to be used for BitLocker Drive Encryption. BitLocker does not require that a certificate have a KU attribute, but if one is configured it must be set to either Key Encipherment or Key Agreement.
pub const FVE_E_NON_BITLOCKER_KU = 0x80310093;

// The private key associated with the specified certificate cannot be authorized. The private key authorization was either not provided or the provided authorization was invalid.
pub const FVE_E_PRIVATEKEY_AUTH_FAILED = 0x80310094;

// Removal of the data recovery agent certificate must be done using the Certificates snap-in.
pub const FVE_E_REMOVAL_OF_DRA_FAILED = 0x80310095;

// This drive was encrypted using the version of BitLocker Drive Encryption included with Windows Vista and Windows Server 2008 which does not support organizational identifiers. To specify organizational identifiers for this drive upgrade the drive encryption to the latest version using the "manage-bde -upgrade" command.
pub const FVE_E_OPERATION_NOT_SUPPORTED_ON_VISTA_VOLUME = 0x80310096;

// The drive cannot be locked because it is automatically unlocked on this computer.  Remove the automatic unlock protector to lock this drive.
pub const FVE_E_CANT_LOCK_AUTOUNLOCK_ENABLED_VOLUME = 0x80310097;

// The default BitLocker Key Derivation Function SP800-56A for ECC smart cards is not supported by your smart card. The Group Policy setting requiring FIPS-compliance prevents BitLocker from using any other key derivation function for encryption. You have to use a FIPS compliant smart card in FIPS restricted environments.
pub const FVE_E_FIPS_HASH_KDF_NOT_ALLOWED = 0x80310098;

// The BitLocker encryption key could not be obtained from the Trusted Platform Module (TPM) and enhanced PIN. Try using a PIN containing only numerals.
pub const FVE_E_ENH_PIN_INVALID = 0x80310099;

// The requested TPM PIN contains invalid characters.
pub const FVE_E_INVALID_PIN_CHARS = 0x8031009A;

// The management information stored on the drive contained an unknown type. If you are using an old version of Windows, try accessing the drive from the latest version.
pub const FVE_E_INVALID_DATUM_TYPE = 0x8031009B;

// The feature is only supported on EFI systems.
pub const FVE_E_EFI_ONLY = 0x8031009C;

// More than one Network Key Protector certificate has been found on the system.
pub const FVE_E_MULTIPLE_NKP_CERTS = 0x8031009D;

// Removal of the Network Key Protector certificate must be done using the Certificates snap-in.
pub const FVE_E_REMOVAL_OF_NKP_FAILED = 0x8031009E;

// An invalid certificate has been found in the Network Key Protector certificate store.
pub const FVE_E_INVALID_NKP_CERT = 0x8031009F;

// This drive isn't protected with a PIN.
pub const FVE_E_NO_EXISTING_PIN = 0x803100A0;

// Please enter the correct current PIN.
pub const FVE_E_PROTECTOR_CHANGE_PIN_MISMATCH = 0x803100A1;

// You must be logged on with an administrator account to change the PIN. Click the link to reset the PIN as an administrator.
pub const FVE_E_PIN_PROTECTOR_CHANGE_BY_STD_USER_DISALLOWED = 0x803100A2;

// BitLocker has disabled PIN changes after too many failed requests. Click the link to reset the PIN as an administrator.
pub const FVE_E_PROTECTOR_CHANGE_MAX_PIN_CHANGE_ATTEMPTS_REACHED = 0x803100A3;

// Your system administrator requires that passwords contain only printable ASCII characters. This includes unaccented letters (A-Z, a-z), numbers (0-9), space, arithmetic signs, common punctuation, separators, and the following symbols: # $ & @ ^ _ ~ .
pub const FVE_E_POLICY_PASSPHRASE_REQUIRES_ASCII = 0x803100A4;

// BitLocker Drive Encryption only supports Used Space Only encryption on thin provisioned storage.
pub const FVE_E_FULL_ENCRYPTION_NOT_ALLOWED_ON_TP_STORAGE = 0x803100A5;

// BitLocker Drive Encryption does not support wiping free space on thin provisioned storage.
pub const FVE_E_WIPE_NOT_ALLOWED_ON_TP_STORAGE = 0x803100A6;

// The required authentication key length is not supported by the drive.
pub const FVE_E_KEY_LENGTH_NOT_SUPPORTED_BY_EDRIVE = 0x803100A7;

// This drive isn't protected with a password.
pub const FVE_E_NO_EXISTING_PASSPHRASE = 0x803100A8;

// Please enter the correct current password.
pub const FVE_E_PROTECTOR_CHANGE_PASSPHRASE_MISMATCH = 0x803100A9;

// The password cannot exceed 256 characters.
pub const FVE_E_PASSPHRASE_TOO_LONG = 0x803100AA;

// A password key protector cannot be added because a TPM protector exists on the drive.
pub const FVE_E_NO_PASSPHRASE_WITH_TPM = 0x803100AB;

// A TPM key protector cannot be added because a password protector exists on the drive.
pub const FVE_E_NO_TPM_WITH_PASSPHRASE = 0x803100AC;

// This command can only be performed from the coordinator node for the specified CSV volume.
pub const FVE_E_NOT_ALLOWED_ON_CSV_STACK = 0x803100AD;

// This command cannot be performed on a volume when it is part of a cluster.
pub const FVE_E_NOT_ALLOWED_ON_CLUSTER = 0x803100AE;

// BitLocker did not revert to using BitLocker software encryption due to group policy configuration.
pub const FVE_E_EDRIVE_NO_FAILOVER_TO_SW = 0x803100AF;

// The drive cannot be managed by BitLocker because the drive's hardware encryption feature is already in use.
pub const FVE_E_EDRIVE_BAND_IN_USE = 0x803100B0;

// Group Policy settings do not allow the use of hardware-based encryption.
pub const FVE_E_EDRIVE_DISALLOWED_BY_GP = 0x803100B1;

// The drive specified does not support hardware-based encryption.
pub const FVE_E_EDRIVE_INCOMPATIBLE_VOLUME = 0x803100B2;

// BitLocker cannot be upgraded during disk encryption or decryption.
pub const FVE_E_NOT_ALLOWED_TO_UPGRADE_WHILE_CONVERTING = 0x803100B3;

// Discovery Volumes are not supported for volumes using hardware encryption.
pub const FVE_E_EDRIVE_DV_NOT_SUPPORTED = 0x803100B4;

// No pre-boot keyboard detected. The user may not be able to provide required input to unlock the volume.
pub const FVE_E_NO_PREBOOT_KEYBOARD_DETECTED = 0x803100B5;

// No pre-boot keyboard or Windows Recovery Environment detected. The user may not be able to provide required input to unlock the volume.
pub const FVE_E_NO_PREBOOT_KEYBOARD_OR_WINRE_DETECTED = 0x803100B6;

// Group Policy settings require the creation of a startup PIN, but a pre-boot keyboard is not available on this device. The user may not be able to provide required input to unlock the volume.
pub const FVE_E_POLICY_REQUIRES_STARTUP_PIN_ON_TOUCH_DEVICE = 0x803100B7;

// Group Policy settings require the creation of a recovery password, but neither a pre-boot keyboard nor Windows Recovery Environment is available on this device. The user may not be able to provide required input to unlock the volume.
pub const FVE_E_POLICY_REQUIRES_RECOVERY_PASSWORD_ON_TOUCH_DEVICE = 0x803100B8;

// Wipe of free space is not currently taking place.
pub const FVE_E_WIPE_CANCEL_NOT_APPLICABLE = 0x803100B9;

// BitLocker cannot use Secure Boot for platform integrity because Secure Boot has been disabled.
pub const FVE_E_SECUREBOOT_DISABLED = 0x803100BA;

// BitLocker cannot use Secure Boot for platform integrity because the Secure Boot configuration does not meet the requirements for BitLocker.
pub const FVE_E_SECUREBOOT_CONFIGURATION_INVALID = 0x803100BB;

// Your computer doesn't support BitLocker hardware-based encryption. Check with your computer manufacturer for firmware updates.
pub const FVE_E_EDRIVE_DRY_RUN_FAILED = 0x803100BC;

// BitLocker cannot be enabled on the volume because it contains a Volume Shadow Copy. Remove all Volume Shadow Copies before encrypting the volume.
pub const FVE_E_SHADOW_COPY_PRESENT = 0x803100BD;

// BitLocker Drive Encryption cannot be applied to this drive because the Group Policy setting for Enhanced Boot Configuration Data contains invalid data. Please have your system administrator resolve this invalid configuration before attempting to enable BitLocker.
pub const FVE_E_POLICY_INVALID_ENHANCED_BCD_SETTINGS = 0x803100BE;

// This PC's firmware is not capable of supporting hardware encryption.
pub const FVE_E_EDRIVE_INCOMPATIBLE_FIRMWARE = 0x803100BF;

// BitLocker has disabled password changes after too many failed requests. Click the link to reset the password as an administrator.
pub const FVE_E_PROTECTOR_CHANGE_MAX_PASSPHRASE_CHANGE_ATTEMPTS_REACHED = 0x803100C0;

// You must be logged on with an administrator account to change the password. Click the link to reset the password as an administrator.
pub const FVE_E_PASSPHRASE_PROTECTOR_CHANGE_BY_STD_USER_DISALLOWED = 0x803100C1;

// BitLocker cannot save the recovery password because the specified Microsoft account is Suspended.
pub const FVE_E_LIVEID_ACCOUNT_SUSPENDED = 0x803100C2;

// BitLocker cannot save the recovery password because the specified Microsoft account is Blocked.
pub const FVE_E_LIVEID_ACCOUNT_BLOCKED = 0x803100C3;

// This PC is not provisioned to support device encryption. Please enable BitLocker on all volumes to comply with device encryption policy.
pub const FVE_E_NOT_PROVISIONED_ON_ALL_VOLUMES = 0x803100C4;

// This PC cannot support device encryption because unencrypted fixed data volumes are present.
pub const FVE_E_DE_FIXED_DATA_NOT_SUPPORTED = 0x803100C5;

// This PC does not meet the hardware requirements to support device encryption.
pub const FVE_E_DE_HARDWARE_NOT_COMPLIANT = 0x803100C6;

// This PC cannot support device encryption because WinRE is not properly configured.
pub const FVE_E_DE_WINRE_NOT_CONFIGURED = 0x803100C7;

// Protection is enabled on the volume but has been suspended. This is likely to have happened due to an update being applied to your system. Please try again after a reboot.
pub const FVE_E_DE_PROTECTION_SUSPENDED = 0x803100C8;

// This PC is not provisioned to support device encryption.
pub const FVE_E_DE_OS_VOLUME_NOT_PROTECTED = 0x803100C9;

// Device Lock has been triggered due to too many incorrect password attempts.
pub const FVE_E_DE_DEVICE_LOCKEDOUT = 0x803100CA;

// Protection has not been enabled on the volume. Enabling protection requires a connected account. If you already have a connected account and are seeing this error, please refer to the event log for more information.
pub const FVE_E_DE_PROTECTION_NOT_YET_ENABLED = 0x803100CB;

// Your PIN can only contain numbers from 0 to 9.
pub const FVE_E_INVALID_PIN_CHARS_DETAILED = 0x803100CC;

// BitLocker cannot use hardware replay protection because no counter is available on your PC.
pub const FVE_E_DEVICE_LOCKOUT_COUNTER_UNAVAILABLE = 0x803100CD;

// Device Lockout state validation failed due to counter mismatch.
pub const FVE_E_DEVICELOCKOUT_COUNTER_MISMATCH = 0x803100CE;

// The input buffer is too large.
pub const FVE_E_BUFFER_TOO_LARGE = 0x803100CF;

// The target of an invocation does not support requested capability.
pub const FVE_E_NO_SUCH_CAPABILITY_ON_TARGET = 0x803100D0;

// Device encryption is currently blocked by this PC's configuration.
pub const FVE_E_DE_PREVENTED_FOR_OS = 0x803100D1;

// This drive has been opted out of device encryption.
pub const FVE_E_DE_VOLUME_OPTED_OUT = 0x803100D2;

// Device encryption isn't available for this drive.
pub const FVE_E_DE_VOLUME_NOT_SUPPORTED = 0x803100D3;

// The encrypt on write mode for BitLocker is not supported in this version of Windows. You can turn on BitLocker without using the encrypt on write mode.
pub const FVE_E_EOW_NOT_SUPPORTED_IN_VERSION = 0x803100D4;

// Group policy prevents you from backing up your recovery password to Active Directory for this drive type. For more info, contact your system administrator.
pub const FVE_E_ADBACKUP_NOT_ENABLED = 0x803100D5;

// Device encryption can't be turned off while this drive is being encrypted. Please try again later.
pub const FVE_E_VOLUME_EXTEND_PREVENTS_EOW_DECRYPT = 0x803100D6;

// This action isn't supported because this drive isn't automatically managed with device encryption.
pub const FVE_E_NOT_DE_VOLUME = 0x803100D7;

// BitLocker can't be suspended on this drive until the next restart.
pub const FVE_E_PROTECTION_CANNOT_BE_DISABLED = 0x803100D8;

// BitLocker Drive Encryption policy does not allow KSR operation with protected OS volume.
pub const FVE_E_OSV_KSR_NOT_ALLOWED = 0x803100D9;

// The callout does not exist.
pub const FWP_E_CALLOUT_NOT_FOUND = 0x80320001;

// The filter condition does not exist.
pub const FWP_E_CONDITION_NOT_FOUND = 0x80320002;

// The filter does not exist.
pub const FWP_E_FILTER_NOT_FOUND = 0x80320003;

// The layer does not exist.
pub const FWP_E_LAYER_NOT_FOUND = 0x80320004;

// The provider does not exist.
pub const FWP_E_PROVIDER_NOT_FOUND = 0x80320005;

// The provider context does not exist.
pub const FWP_E_PROVIDER_CONTEXT_NOT_FOUND = 0x80320006;

// The sublayer does not exist.
pub const FWP_E_SUBLAYER_NOT_FOUND = 0x80320007;

// The object does not exist.
pub const FWP_E_NOT_FOUND = 0x80320008;

// An object with that GUID or LUID already exists.
pub const FWP_E_ALREADY_EXISTS = 0x80320009;

// The object is referenced by other objects so cannot be deleted.
pub const FWP_E_IN_USE = 0x8032000A;

// The call is not allowed from within a dynamic session.
pub const FWP_E_DYNAMIC_SESSION_IN_PROGRESS = 0x8032000B;

// The call was made from the wrong session so cannot be completed.
pub const FWP_E_WRONG_SESSION = 0x8032000C;

// The call must be made from within an explicit transaction.
pub const FWP_E_NO_TXN_IN_PROGRESS = 0x8032000D;

// The call is not allowed from within an explicit transaction.
pub const FWP_E_TXN_IN_PROGRESS = 0x8032000E;

// The explicit transaction has been forcibly cancelled.
pub const FWP_E_TXN_ABORTED = 0x8032000F;

// The session has been cancelled.
pub const FWP_E_SESSION_ABORTED = 0x80320010;

// The call is not allowed from within a read-only transaction.
pub const FWP_E_INCOMPATIBLE_TXN = 0x80320011;

// The call timed out while waiting to acquire the transaction lock.
pub const FWP_E_TIMEOUT = 0x80320012;

// Collection of network diagnostic events is disabled.
pub const FWP_E_NET_EVENTS_DISABLED = 0x80320013;

// The operation is not supported by the specified layer.
pub const FWP_E_INCOMPATIBLE_LAYER = 0x80320014;

// The call is allowed for kernel-mode callers only.
pub const FWP_E_KM_CLIENTS_ONLY = 0x80320015;

// The call tried to associate two objects with incompatible lifetimes.
pub const FWP_E_LIFETIME_MISMATCH = 0x80320016;

// The object is built in so cannot be deleted.
pub const FWP_E_BUILTIN_OBJECT = 0x80320017;

// The maximum number of callouts has been reached.
pub const FWP_E_TOO_MANY_CALLOUTS = 0x80320018;

// A notification could not be delivered because a message queue is at its maximum capacity.
pub const FWP_E_NOTIFICATION_DROPPED = 0x80320019;

// The traffic parameters do not match those for the security association context.
pub const FWP_E_TRAFFIC_MISMATCH = 0x8032001A;

// The call is not allowed for the current security association state.
pub const FWP_E_INCOMPATIBLE_SA_STATE = 0x8032001B;

// A required pointer is null.
pub const FWP_E_NULL_POINTER = 0x8032001C;

// An enumerator is not valid.
pub const FWP_E_INVALID_ENUMERATOR = 0x8032001D;

// The flags field contains an invalid value.
pub const FWP_E_INVALID_FLAGS = 0x8032001E;

// A network mask is not valid.
pub const FWP_E_INVALID_NET_MASK = 0x8032001F;

// An FWP_RANGE is not valid.
pub const FWP_E_INVALID_RANGE = 0x80320020;

// The time interval is not valid.
pub const FWP_E_INVALID_INTERVAL = 0x80320021;

// An array that must contain at least one element is zero length.
pub const FWP_E_ZERO_LENGTH_ARRAY = 0x80320022;

// The displayData.name field cannot be null.
pub const FWP_E_NULL_DISPLAY_NAME = 0x80320023;

// The action type is not one of the allowed action types for a filter.
pub const FWP_E_INVALID_ACTION_TYPE = 0x80320024;

// The filter weight is not valid.
pub const FWP_E_INVALID_WEIGHT = 0x80320025;

// A filter condition contains a match type that is not compatible with the operands.
pub const FWP_E_MATCH_TYPE_MISMATCH = 0x80320026;

// An FWP_VALUE or FWPM_CONDITION_VALUE is of the wrong type.
pub const FWP_E_TYPE_MISMATCH = 0x80320027;

// An integer value is outside the allowed range.
pub const FWP_E_OUT_OF_BOUNDS = 0x80320028;

// A reserved field is non-zero.
pub const FWP_E_RESERVED = 0x80320029;

// A filter cannot contain multiple conditions operating on a single field.
pub const FWP_E_DUPLICATE_CONDITION = 0x8032002A;

// A policy cannot contain the same keying module more than once.
pub const FWP_E_DUPLICATE_KEYMOD = 0x8032002B;

// The action type is not compatible with the layer.
pub const FWP_E_ACTION_INCOMPATIBLE_WITH_LAYER = 0x8032002C;

// The action type is not compatible with the sublayer.
pub const FWP_E_ACTION_INCOMPATIBLE_WITH_SUBLAYER = 0x8032002D;

// The raw context or the provider context is not compatible with the layer.
pub const FWP_E_CONTEXT_INCOMPATIBLE_WITH_LAYER = 0x8032002E;

// The raw context or the provider context is not compatible with the callout.
pub const FWP_E_CONTEXT_INCOMPATIBLE_WITH_CALLOUT = 0x8032002F;

// The authentication method is not compatible with the policy type.
pub const FWP_E_INCOMPATIBLE_AUTH_METHOD = 0x80320030;

// The Diffie-Hellman group is not compatible with the policy type.
pub const FWP_E_INCOMPATIBLE_DH_GROUP = 0x80320031;

// An IKE policy cannot contain an Extended Mode policy.
pub const FWP_E_EM_NOT_SUPPORTED = 0x80320032;

// The enumeration template or subscription will never match any objects.
pub const FWP_E_NEVER_MATCH = 0x80320033;

// The provider context is of the wrong type.
pub const FWP_E_PROVIDER_CONTEXT_MISMATCH = 0x80320034;

// The parameter is incorrect.
pub const FWP_E_INVALID_PARAMETER = 0x80320035;

// The maximum number of sublayers has been reached.
pub const FWP_E_TOO_MANY_SUBLAYERS = 0x80320036;

// The notification function for a callout returned an error.
pub const FWP_E_CALLOUT_NOTIFICATION_FAILED = 0x80320037;

// The IPsec authentication transform is not valid.
pub const FWP_E_INVALID_AUTH_TRANSFORM = 0x80320038;

// The IPsec cipher transform is not valid.
pub const FWP_E_INVALID_CIPHER_TRANSFORM = 0x80320039;

// The IPsec cipher transform is not compatible with the policy.
pub const FWP_E_INCOMPATIBLE_CIPHER_TRANSFORM = 0x8032003A;

// The combination of IPsec transform types is not valid.
pub const FWP_E_INVALID_TRANSFORM_COMBINATION = 0x8032003B;

// A policy cannot contain the same auth method more than once.
pub const FWP_E_DUPLICATE_AUTH_METHOD = 0x8032003C;

// A tunnel endpoint configuration is invalid.
pub const FWP_E_INVALID_TUNNEL_ENDPOINT = 0x8032003D;

// The WFP MAC Layers are not ready.
pub const FWP_E_L2_DRIVER_NOT_READY = 0x8032003E;

// A key manager capable of key dictation is already registered
pub const FWP_E_KEY_DICTATOR_ALREADY_REGISTERED = 0x8032003F;

// A key manager dictated invalid keys
pub const FWP_E_KEY_DICTATION_INVALID_KEYING_MATERIAL = 0x80320040;

// The BFE IPsec Connection Tracking is disabled.
pub const FWP_E_CONNECTIONS_DISABLED = 0x80320041;

// The DNS name is invalid.
pub const FWP_E_INVALID_DNS_NAME = 0x80320042;

// The engine option is still enabled due to other configuration settings.
pub const FWP_E_STILL_ON = 0x80320043;

// The IKEEXT service is not running.  This service only runs when there is IPsec policy applied to the machine.
pub const FWP_E_IKEEXT_NOT_RUNNING = 0x80320044;

// The packet should be dropped, no ICMP should be sent.
pub const FWP_E_DROP_NOICMP = 0x80320104;

// The function call is completing asynchronously.
pub const WS_S_ASYNC = 0x003D0000;

// There are no more messages available on the channel.
pub const WS_S_END = 0x003D0001;

// The input data was not in the expected format or did not have the expected value.
pub const WS_E_INVALID_FORMAT = 0x803D0000;

// The operation could not be completed because the object is in a faulted state due to a previous error.
pub const WS_E_OBJECT_FAULTED = 0x803D0001;

// The operation could not be completed because it would lead to numeric overflow.
pub const WS_E_NUMERIC_OVERFLOW = 0x803D0002;

// The operation is not allowed due to the current state of the object.
pub const WS_E_INVALID_OPERATION = 0x803D0003;

// The operation was aborted.
pub const WS_E_OPERATION_ABORTED = 0x803D0004;

// Access was denied by the remote endpoint.
pub const WS_E_ENDPOINT_ACCESS_DENIED = 0x803D0005;

// The operation did not complete within the time allotted.
pub const WS_E_OPERATION_TIMED_OUT = 0x803D0006;

// The operation was abandoned.
pub const WS_E_OPERATION_ABANDONED = 0x803D0007;

// A quota was exceeded.
pub const WS_E_QUOTA_EXCEEDED = 0x803D0008;

// The information was not available in the specified language.
pub const WS_E_NO_TRANSLATION_AVAILABLE = 0x803D0009;

// Security verification was not successful for the received data.
pub const WS_E_SECURITY_VERIFICATION_FAILURE = 0x803D000A;

// The address is already being used.
pub const WS_E_ADDRESS_IN_USE = 0x803D000B;

// The address is not valid for this context.
pub const WS_E_ADDRESS_NOT_AVAILABLE = 0x803D000C;

// The remote endpoint does not exist or could not be located.
pub const WS_E_ENDPOINT_NOT_FOUND = 0x803D000D;

// The remote endpoint is not currently in service at this location.
pub const WS_E_ENDPOINT_NOT_AVAILABLE = 0x803D000E;

// The remote endpoint could not process the request.
pub const WS_E_ENDPOINT_FAILURE = 0x803D000F;

// The remote endpoint was not reachable.
pub const WS_E_ENDPOINT_UNREACHABLE = 0x803D0010;

// The operation was not supported by the remote endpoint.
pub const WS_E_ENDPOINT_ACTION_NOT_SUPPORTED = 0x803D0011;

// The remote endpoint is unable to process the request due to being overloaded.
pub const WS_E_ENDPOINT_TOO_BUSY = 0x803D0012;

// A message containing a fault was received from the remote endpoint.
pub const WS_E_ENDPOINT_FAULT_RECEIVED = 0x803D0013;

// The connection with the remote endpoint was terminated.
pub const WS_E_ENDPOINT_DISCONNECTED = 0x803D0014;

// The HTTP proxy server could not process the request.
pub const WS_E_PROXY_FAILURE = 0x803D0015;

// Access was denied by the HTTP proxy server.
pub const WS_E_PROXY_ACCESS_DENIED = 0x803D0016;

// The requested feature is not available on this platform.
pub const WS_E_NOT_SUPPORTED = 0x803D0017;

// The HTTP proxy server requires HTTP authentication scheme 'basic'.
pub const WS_E_PROXY_REQUIRES_BASIC_AUTH = 0x803D0018;

// The HTTP proxy server requires HTTP authentication scheme 'digest'.
pub const WS_E_PROXY_REQUIRES_DIGEST_AUTH = 0x803D0019;

// The HTTP proxy server requires HTTP authentication scheme 'NTLM'.
pub const WS_E_PROXY_REQUIRES_NTLM_AUTH = 0x803D001A;

// The HTTP proxy server requires HTTP authentication scheme 'negotiate'.
pub const WS_E_PROXY_REQUIRES_NEGOTIATE_AUTH = 0x803D001B;

// The remote endpoint requires HTTP authentication scheme 'basic'.
pub const WS_E_SERVER_REQUIRES_BASIC_AUTH = 0x803D001C;

// The remote endpoint requires HTTP authentication scheme 'digest'.
pub const WS_E_SERVER_REQUIRES_DIGEST_AUTH = 0x803D001D;

// The remote endpoint requires HTTP authentication scheme 'NTLM'.
pub const WS_E_SERVER_REQUIRES_NTLM_AUTH = 0x803D001E;

// The remote endpoint requires HTTP authentication scheme 'negotiate'.
pub const WS_E_SERVER_REQUIRES_NEGOTIATE_AUTH = 0x803D001F;

// The endpoint address URL is invalid.
pub const WS_E_INVALID_ENDPOINT_URL = 0x803D0020;

// Unrecognized error occurred in the Windows Web Services framework.
pub const WS_E_OTHER = 0x803D0021;

// A security token was rejected by the server because it has expired.
pub const WS_E_SECURITY_TOKEN_EXPIRED = 0x803D0022;

// A security operation failed in the Windows Web Services framework.
pub const WS_E_SECURITY_SYSTEM_FAILURE = 0x803D0023;

// The binding to the network interface is being closed.
pub const ERROR_NDIS_INTERFACE_CLOSING = _NDIS_ERROR_TYPEDEF_(0x80340002);

// An invalid version was specified.
pub const ERROR_NDIS_BAD_VERSION = _NDIS_ERROR_TYPEDEF_(0x80340004);

// An invalid characteristics table was used.
pub const ERROR_NDIS_BAD_CHARACTERISTICS = _NDIS_ERROR_TYPEDEF_(0x80340005);

// Failed to find the network interface or network interface is not ready.
pub const ERROR_NDIS_ADAPTER_NOT_FOUND = _NDIS_ERROR_TYPEDEF_(0x80340006);

// Failed to open the network interface.
pub const ERROR_NDIS_OPEN_FAILED = _NDIS_ERROR_TYPEDEF_(0x80340007);

// Network interface has encountered an internal unrecoverable failure.
pub const ERROR_NDIS_DEVICE_FAILED = _NDIS_ERROR_TYPEDEF_(0x80340008);

// The multicast list on the network interface is full.
pub const ERROR_NDIS_MULTICAST_FULL = _NDIS_ERROR_TYPEDEF_(0x80340009);

// An attempt was made to add a duplicate multicast address to the list.
pub const ERROR_NDIS_MULTICAST_EXISTS = _NDIS_ERROR_TYPEDEF_(0x8034000A);

// At attempt was made to remove a multicast address that was never added.
pub const ERROR_NDIS_MULTICAST_NOT_FOUND = _NDIS_ERROR_TYPEDEF_(0x8034000B);

// Netowork interface aborted the request.
pub const ERROR_NDIS_REQUEST_ABORTED = _NDIS_ERROR_TYPEDEF_(0x8034000C);

// Network interface can not process the request because it is being reset.
pub const ERROR_NDIS_RESET_IN_PROGRESS = _NDIS_ERROR_TYPEDEF_(0x8034000D);

// Netword interface does not support this request.
pub const ERROR_NDIS_NOT_SUPPORTED = _NDIS_ERROR_TYPEDEF_(0x803400BB);

// An attempt was made to send an invalid packet on a network interface.
pub const ERROR_NDIS_INVALID_PACKET = _NDIS_ERROR_TYPEDEF_(0x8034000F);

// Network interface is not ready to complete this operation.
pub const ERROR_NDIS_ADAPTER_NOT_READY = _NDIS_ERROR_TYPEDEF_(0x80340011);

// The length of the buffer submitted for this operation is not valid.
pub const ERROR_NDIS_INVALID_LENGTH = _NDIS_ERROR_TYPEDEF_(0x80340014);

// The data used for this operation is not valid.
pub const ERROR_NDIS_INVALID_DATA = _NDIS_ERROR_TYPEDEF_(0x80340015);

// The length of buffer submitted for this operation is too small.
pub const ERROR_NDIS_BUFFER_TOO_SHORT = _NDIS_ERROR_TYPEDEF_(0x80340016);

// Network interface does not support this OID (Object Identifier)
pub const ERROR_NDIS_INVALID_OID = _NDIS_ERROR_TYPEDEF_(0x80340017);

// The network interface has been removed.
pub const ERROR_NDIS_ADAPTER_REMOVED = _NDIS_ERROR_TYPEDEF_(0x80340018);

// Network interface does not support this media type.
pub const ERROR_NDIS_UNSUPPORTED_MEDIA = _NDIS_ERROR_TYPEDEF_(0x80340019);

// An attempt was made to remove a token ring group address that is in use by other components.
pub const ERROR_NDIS_GROUP_ADDRESS_IN_USE = _NDIS_ERROR_TYPEDEF_(0x8034001A);

// An attempt was made to map a file that can not be found.
pub const ERROR_NDIS_FILE_NOT_FOUND = _NDIS_ERROR_TYPEDEF_(0x8034001B);

// An error occurred while NDIS tried to map the file.
pub const ERROR_NDIS_ERROR_READING_FILE = _NDIS_ERROR_TYPEDEF_(0x8034001C);

// An attempt was made to map a file that is alreay mapped.
pub const ERROR_NDIS_ALREADY_MAPPED = _NDIS_ERROR_TYPEDEF_(0x8034001D);

// An attempt to allocate a hardware resource failed because the resource is used by another component.
pub const ERROR_NDIS_RESOURCE_CONFLICT = _NDIS_ERROR_TYPEDEF_(0x8034001E);

// The I/O operation failed because network media is disconnected or wireless access point is out of range.
pub const ERROR_NDIS_MEDIA_DISCONNECTED = _NDIS_ERROR_TYPEDEF_(0x8034001F);

// The network address used in the request is invalid.
pub const ERROR_NDIS_INVALID_ADDRESS = _NDIS_ERROR_TYPEDEF_(0x80340022);

// The specified request is not a valid operation for the target device.
pub const ERROR_NDIS_INVALID_DEVICE_REQUEST = _NDIS_ERROR_TYPEDEF_(0x80340010);

// The offload operation on the network interface has been paused.
pub const ERROR_NDIS_PAUSED = _NDIS_ERROR_TYPEDEF_(0x8034002A);

// Network interface was not found.
pub const ERROR_NDIS_INTERFACE_NOT_FOUND = _NDIS_ERROR_TYPEDEF_(0x8034002B);

// The revision number specified in the structure is not supported.
pub const ERROR_NDIS_UNSUPPORTED_REVISION = _NDIS_ERROR_TYPEDEF_(0x8034002C);

// The specified port does not exist on this network interface.
pub const ERROR_NDIS_INVALID_PORT = _NDIS_ERROR_TYPEDEF_(0x8034002D);

// The current state of the specified port on this network interface does not support the requested operation.
pub const ERROR_NDIS_INVALID_PORT_STATE = _NDIS_ERROR_TYPEDEF_(0x8034002E);

// The miniport adapter is in low power state.
pub const ERROR_NDIS_LOW_POWER_STATE = _NDIS_ERROR_TYPEDEF_(0x8034002F);

// This operation requires the miniport adapter to be reinitialized.
pub const ERROR_NDIS_REINIT_REQUIRED = _NDIS_ERROR_TYPEDEF_(0x80340030);

// The wireless local area network interface is in auto configuration mode and doesn't support the requested parameter change operation.
pub const ERROR_NDIS_DOT11_AUTO_CONFIG_ENABLED = _NDIS_ERROR_TYPEDEF_(0x80342000);

// The wireless local area network interface is busy and can not perform the requested operation.
pub const ERROR_NDIS_DOT11_MEDIA_IN_USE = _NDIS_ERROR_TYPEDEF_(0x80342001);

// The wireless local area network interface is powered down and doesn't support the requested operation.
pub const ERROR_NDIS_DOT11_POWER_STATE_INVALID = _NDIS_ERROR_TYPEDEF_(0x80342002);

// The list of wake on LAN patterns is full.
pub const ERROR_NDIS_PM_WOL_PATTERN_LIST_FULL = _NDIS_ERROR_TYPEDEF_(0x80342003);

// The list of low power protocol offloads is full.
pub const ERROR_NDIS_PM_PROTOCOL_OFFLOAD_LIST_FULL = _NDIS_ERROR_TYPEDEF_(0x80342004);

// The wireless local area network interface cannot start an AP on the specified channel right now.
pub const ERROR_NDIS_DOT11_AP_CHANNEL_CURRENTLY_NOT_AVAILABLE = _NDIS_ERROR_TYPEDEF_(0x80342005);

// The wireless local area network interface cannot start an AP on the specified band right now.
pub const ERROR_NDIS_DOT11_AP_BAND_CURRENTLY_NOT_AVAILABLE = _NDIS_ERROR_TYPEDEF_(0x80342006);

// The wireless local area network interface cannot start an AP on this channel due to regulatory reasons.
pub const ERROR_NDIS_DOT11_AP_CHANNEL_NOT_ALLOWED = _NDIS_ERROR_TYPEDEF_(0x80342007);

// The wireless local area network interface cannot start an AP on this band due to regulatory reasons.
pub const ERROR_NDIS_DOT11_AP_BAND_NOT_ALLOWED = _NDIS_ERROR_TYPEDEF_(0x80342008);

// The request will be completed later by NDIS status indication.
pub const ERROR_NDIS_INDICATION_REQUIRED = _NDIS_ERROR_TYPEDEF_(0x00340001);

// The TCP connection is not offloadable because of a local policy setting.
pub const ERROR_NDIS_OFFLOAD_POLICY = _NDIS_ERROR_TYPEDEF_(0xC034100F);

// The TCP connection is not offloadable by the Chimney Offload target.
pub const ERROR_NDIS_OFFLOAD_CONNECTION_REJECTED = _NDIS_ERROR_TYPEDEF_(0xC0341012);

// The IP Path object is not in an offloadable state.
pub const ERROR_NDIS_OFFLOAD_PATH_REJECTED = _NDIS_ERROR_TYPEDEF_(0xC0341013);

// The hypervisor does not support the operation because the specified hypercall code is not supported.
pub const ERROR_HV_INVALID_HYPERCALL_CODE = _NDIS_ERROR_TYPEDEF_(0xC0350002);

// The hypervisor does not support the operation because the encoding for the hypercall input register is not supported.
pub const ERROR_HV_INVALID_HYPERCALL_INPUT = _NDIS_ERROR_TYPEDEF_(0xC0350003);

// The hypervisor could not perform the operation because a parameter has an invalid alignment.
pub const ERROR_HV_INVALID_ALIGNMENT = _NDIS_ERROR_TYPEDEF_(0xC0350004);

// The hypervisor could not perform the operation because an invalid parameter was specified.
pub const ERROR_HV_INVALID_PARAMETER = _NDIS_ERROR_TYPEDEF_(0xC0350005);

// Access to the specified object was denied.
pub const ERROR_HV_ACCESS_DENIED = _NDIS_ERROR_TYPEDEF_(0xC0350006);

// The hypervisor could not perform the operation because the partition is entering or in an invalid state.
pub const ERROR_HV_INVALID_PARTITION_STATE = _NDIS_ERROR_TYPEDEF_(0xC0350007);

// The operation is not allowed in the current state.
pub const ERROR_HV_OPERATION_DENIED = _NDIS_ERROR_TYPEDEF_(0xC0350008);

// The hypervisor does not recognize the specified partition property.
pub const ERROR_HV_UNKNOWN_PROPERTY = _NDIS_ERROR_TYPEDEF_(0xC0350009);

// The specified value of a partition property is out of range or violates an invariant.
pub const ERROR_HV_PROPERTY_VALUE_OUT_OF_RANGE = _NDIS_ERROR_TYPEDEF_(0xC035000A);

// There is not enough memory in the hypervisor pool to complete the operation.
pub const ERROR_HV_INSUFFICIENT_MEMORY = _NDIS_ERROR_TYPEDEF_(0xC035000B);

// The maximum partition depth has been exceeded for the partition hierarchy.
pub const ERROR_HV_PARTITION_TOO_DEEP = _NDIS_ERROR_TYPEDEF_(0xC035000C);

// A partition with the specified partition Id does not exist.
pub const ERROR_HV_INVALID_PARTITION_ID = _NDIS_ERROR_TYPEDEF_(0xC035000D);

// The hypervisor could not perform the operation because the specified VP index is invalid.
pub const ERROR_HV_INVALID_VP_INDEX = _NDIS_ERROR_TYPEDEF_(0xC035000E);

// The hypervisor could not perform the operation because the specified port identifier is invalid.
pub const ERROR_HV_INVALID_PORT_ID = _NDIS_ERROR_TYPEDEF_(0xC0350011);

// The hypervisor could not perform the operation because the specified connection identifier is invalid.
pub const ERROR_HV_INVALID_CONNECTION_ID = _NDIS_ERROR_TYPEDEF_(0xC0350012);

// Not enough buffers were supplied to send a message.
pub const ERROR_HV_INSUFFICIENT_BUFFERS = _NDIS_ERROR_TYPEDEF_(0xC0350013);

// The previous virtual interrupt has not been acknowledged.
pub const ERROR_HV_NOT_ACKNOWLEDGED = _NDIS_ERROR_TYPEDEF_(0xC0350014);

// A virtual processor is not in the correct state for the indicated operation.
pub const ERROR_HV_INVALID_VP_STATE = _NDIS_ERROR_TYPEDEF_(0xC0350015);

// The previous virtual interrupt has already been acknowledged.
pub const ERROR_HV_ACKNOWLEDGED = _NDIS_ERROR_TYPEDEF_(0xC0350016);

// The indicated partition is not in a valid state for saving or restoring.
pub const ERROR_HV_INVALID_SAVE_RESTORE_STATE = _NDIS_ERROR_TYPEDEF_(0xC0350017);

// The hypervisor could not complete the operation because a required feature of the synthetic interrupt controller (SynIC) was disabled.
pub const ERROR_HV_INVALID_SYNIC_STATE = _NDIS_ERROR_TYPEDEF_(0xC0350018);

// The hypervisor could not perform the operation because the object or value was either already in use or being used for a purpose that would not permit completing the operation.
pub const ERROR_HV_OBJECT_IN_USE = _NDIS_ERROR_TYPEDEF_(0xC0350019);

// The proximity domain information is invalid.
pub const ERROR_HV_INVALID_PROXIMITY_DOMAIN_INFO = _NDIS_ERROR_TYPEDEF_(0xC035001A);

// An attempt to retrieve debugging data failed because none was available.
pub const ERROR_HV_NO_DATA = _NDIS_ERROR_TYPEDEF_(0xC035001B);

// The physical connection being used for debuggging has not recorded any receive activity since the last operation.
pub const ERROR_HV_INACTIVE = _NDIS_ERROR_TYPEDEF_(0xC035001C);

// There are not enough resources to complete the operation.
pub const ERROR_HV_NO_RESOURCES = _NDIS_ERROR_TYPEDEF_(0xC035001D);

// A hypervisor feature is not available to the user.
pub const ERROR_HV_FEATURE_UNAVAILABLE = _NDIS_ERROR_TYPEDEF_(0xC035001E);

// The specified buffer was too small to contain all of the requested data.
pub const ERROR_HV_INSUFFICIENT_BUFFER = _NDIS_ERROR_TYPEDEF_(0xC0350033);

// The maximum number of domains supported by the platform I/O remapping hardware is currently in use. No domains are available to assign this device to this partition.
pub const ERROR_HV_INSUFFICIENT_DEVICE_DOMAINS = _NDIS_ERROR_TYPEDEF_(0xC0350038);

// Validation of CPUID data of the processor failed.
pub const ERROR_HV_CPUID_FEATURE_VALIDATION = _NDIS_ERROR_TYPEDEF_(0xC035003C);

// Validation of XSAVE CPUID data of the processor failed.
pub const ERROR_HV_CPUID_XSAVE_FEATURE_VALIDATION = _NDIS_ERROR_TYPEDEF_(0xC035003D);

// Processor did not respond within the timeout period.
pub const ERROR_HV_PROCESSOR_STARTUP_TIMEOUT = _NDIS_ERROR_TYPEDEF_(0xC035003E);

// SMX has been enabled in the BIOS.
pub const ERROR_HV_SMX_ENABLED = _NDIS_ERROR_TYPEDEF_(0xC035003F);

// The hypervisor could not perform the operation because the specified LP index is invalid.
pub const ERROR_HV_INVALID_LP_INDEX = _NDIS_ERROR_TYPEDEF_(0xC0350041);

// The supplied register value is invalid.
pub const ERROR_HV_INVALID_REGISTER_VALUE = _NDIS_ERROR_TYPEDEF_(0xC0350050);

// The supplied virtual trust level is not in the correct state to perform the requested operation.
pub const ERROR_HV_INVALID_VTL_STATE = _NDIS_ERROR_TYPEDEF_(0xC0350051);

// No execute feature (NX) is not present or not enabled in the BIOS.
pub const ERROR_HV_NX_NOT_DETECTED = _NDIS_ERROR_TYPEDEF_(0xC0350055);

// The supplied device ID is invalid.
pub const ERROR_HV_INVALID_DEVICE_ID = _NDIS_ERROR_TYPEDEF_(0xC0350057);

// The operation is not allowed in the current device state.
pub const ERROR_HV_INVALID_DEVICE_STATE = _NDIS_ERROR_TYPEDEF_(0xC0350058);

// The device had pending page requests which were discarded.
pub const ERROR_HV_PENDING_PAGE_REQUESTS = _NDIS_ERROR_TYPEDEF_(0x00350059);

// The supplied page request specifies a memory access that the guest does not have permissions to perform.
pub const ERROR_HV_PAGE_REQUEST_INVALID = _NDIS_ERROR_TYPEDEF_(0xC0350060);

// A CPU group with the specified CPU group Id does not exist.
pub const ERROR_HV_INVALID_CPU_GROUP_ID = _NDIS_ERROR_TYPEDEF_(0xC035006F);

// The hypervisor could not perform the operation because the CPU group is entering or in an invalid state.
pub const ERROR_HV_INVALID_CPU_GROUP_STATE = _NDIS_ERROR_TYPEDEF_(0xC0350070);

// The requested operation failed.
pub const ERROR_HV_OPERATION_FAILED = _NDIS_ERROR_TYPEDEF_(0xC0350071);

// The hypervisor could not perform the operation because it is not allowed with nested virtualization active.
pub const ERROR_HV_NOT_ALLOWED_WITH_NESTED_VIRT_ACTIVE = _NDIS_ERROR_TYPEDEF_(0xC0350072);

// No hypervisor is present on this system.
pub const ERROR_HV_NOT_PRESENT = _NDIS_ERROR_TYPEDEF_(0xC0351000);

// The handler for the virtualization infrastructure driver is already registered. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_DUPLICATE_HANDLER = _NDIS_ERROR_TYPEDEF_(0xC0370001);

// The number of registered handlers for the virtualization infrastructure driver exceeded the maximum. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_TOO_MANY_HANDLERS = _NDIS_ERROR_TYPEDEF_(0xC0370002);

// The message queue for the virtualization infrastructure driver is full and cannot accept new messages. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_QUEUE_FULL = _NDIS_ERROR_TYPEDEF_(0xC0370003);

// No handler exists to handle the message for the virtualization infrastructure driver. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_HANDLER_NOT_PRESENT = _NDIS_ERROR_TYPEDEF_(0xC0370004);

// The name of the partition or message queue for the virtualization infrastructure driver is invalid. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_INVALID_OBJECT_NAME = _NDIS_ERROR_TYPEDEF_(0xC0370005);

// The partition name of the virtualization infrastructure driver exceeds the maximum.
pub const ERROR_VID_PARTITION_NAME_TOO_LONG = _NDIS_ERROR_TYPEDEF_(0xC0370006);

// The message queue name of the virtualization infrastructure driver exceeds the maximum.
pub const ERROR_VID_MESSAGE_QUEUE_NAME_TOO_LONG = _NDIS_ERROR_TYPEDEF_(0xC0370007);

// Cannot create the partition for the virtualization infrastructure driver because another partition with the same name already exists.
pub const ERROR_VID_PARTITION_ALREADY_EXISTS = _NDIS_ERROR_TYPEDEF_(0xC0370008);

// The virtualization infrastructure driver has encountered an error. The requested partition does not exist. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_PARTITION_DOES_NOT_EXIST = _NDIS_ERROR_TYPEDEF_(0xC0370009);

// The virtualization infrastructure driver has encountered an error. Could not find the requested partition. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_PARTITION_NAME_NOT_FOUND = _NDIS_ERROR_TYPEDEF_(0xC037000A);

// A message queue with the same name already exists for the virtualization infrastructure driver.
pub const ERROR_VID_MESSAGE_QUEUE_ALREADY_EXISTS = _NDIS_ERROR_TYPEDEF_(0xC037000B);

// The memory block page for the virtualization infrastructure driver cannot be mapped because the page map limit has been reached. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_EXCEEDED_MBP_ENTRY_MAP_LIMIT = _NDIS_ERROR_TYPEDEF_(0xC037000C);

// The memory block for the virtualization infrastructure driver is still being used and cannot be destroyed.
pub const ERROR_VID_MB_STILL_REFERENCED = _NDIS_ERROR_TYPEDEF_(0xC037000D);

// Cannot unlock the page array for the guest operating system memory address because it does not match a previous lock request. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_CHILD_GPA_PAGE_SET_CORRUPTED = _NDIS_ERROR_TYPEDEF_(0xC037000E);

// The non-uniform memory access (NUMA) node settings do not match the system NUMA topology. In order to start the virtual machine, you will need to modify the NUMA configuration.
pub const ERROR_VID_INVALID_NUMA_SETTINGS = _NDIS_ERROR_TYPEDEF_(0xC037000F);

// The non-uniform memory access (NUMA) node index does not match a valid index in the system NUMA topology.
pub const ERROR_VID_INVALID_NUMA_NODE_INDEX = _NDIS_ERROR_TYPEDEF_(0xC0370010);

// The memory block for the virtualization infrastructure driver is already associated with a message queue.
pub const ERROR_VID_NOTIFICATION_QUEUE_ALREADY_ASSOCIATED = _NDIS_ERROR_TYPEDEF_(0xC0370011);

// The handle is not a valid memory block handle for the virtualization infrastructure driver.
pub const ERROR_VID_INVALID_MEMORY_BLOCK_HANDLE = _NDIS_ERROR_TYPEDEF_(0xC0370012);

// The request exceeded the memory block page limit for the virtualization infrastructure driver. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_PAGE_RANGE_OVERFLOW = _NDIS_ERROR_TYPEDEF_(0xC0370013);

// The handle is not a valid message queue handle for the virtualization infrastructure driver.
pub const ERROR_VID_INVALID_MESSAGE_QUEUE_HANDLE = _NDIS_ERROR_TYPEDEF_(0xC0370014);

// The handle is not a valid page range handle for the virtualization infrastructure driver.
pub const ERROR_VID_INVALID_GPA_RANGE_HANDLE = _NDIS_ERROR_TYPEDEF_(0xC0370015);

// Cannot install client notifications because no message queue for the virtualization infrastructure driver is associated with the memory block.
pub const ERROR_VID_NO_MEMORY_BLOCK_NOTIFICATION_QUEUE = _NDIS_ERROR_TYPEDEF_(0xC0370016);

// The request to lock or map a memory block page failed because the virtualization infrastructure driver memory block limit has been reached. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_MEMORY_BLOCK_LOCK_COUNT_EXCEEDED = _NDIS_ERROR_TYPEDEF_(0xC0370017);

// The handle is not a valid parent partition mapping handle for the virtualization infrastructure driver.
pub const ERROR_VID_INVALID_PPM_HANDLE = _NDIS_ERROR_TYPEDEF_(0xC0370018);

// Notifications cannot be created on the memory block because it is use.
pub const ERROR_VID_MBPS_ARE_LOCKED = _NDIS_ERROR_TYPEDEF_(0xC0370019);

// The message queue for the virtualization infrastructure driver has been closed. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_MESSAGE_QUEUE_CLOSED = _NDIS_ERROR_TYPEDEF_(0xC037001A);

// Cannot add a virtual processor to the partition because the maximum has been reached.
pub const ERROR_VID_VIRTUAL_PROCESSOR_LIMIT_EXCEEDED = _NDIS_ERROR_TYPEDEF_(0xC037001B);

// Cannot stop the virtual processor immediately because of a pending intercept.
pub const ERROR_VID_STOP_PENDING = _NDIS_ERROR_TYPEDEF_(0xC037001C);

// Invalid state for the virtual processor. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_INVALID_PROCESSOR_STATE = _NDIS_ERROR_TYPEDEF_(0xC037001D);

// The maximum number of kernel mode clients for the virtualization infrastructure driver has been reached. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_EXCEEDED_KM_CONTEXT_COUNT_LIMIT = _NDIS_ERROR_TYPEDEF_(0xC037001E);

// This kernel mode interface for the virtualization infrastructure driver has already been initialized. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_KM_INTERFACE_ALREADY_INITIALIZED = _NDIS_ERROR_TYPEDEF_(0xC037001F);

// Cannot set or reset the memory block property more than once for the virtualization infrastructure driver. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_MB_PROPERTY_ALREADY_SET_RESET = _NDIS_ERROR_TYPEDEF_(0xC0370020);

// The memory mapped I/O for this page range no longer exists. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_MMIO_RANGE_DESTROYED = _NDIS_ERROR_TYPEDEF_(0xC0370021);

// The lock or unlock request uses an invalid guest operating system memory address. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_INVALID_CHILD_GPA_PAGE_SET = _NDIS_ERROR_TYPEDEF_(0xC0370022);

// Cannot destroy or reuse the reserve page set for the virtualization infrastructure driver because it is in use. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_RESERVE_PAGE_SET_IS_BEING_USED = _NDIS_ERROR_TYPEDEF_(0xC0370023);

// The reserve page set for the virtualization infrastructure driver is too small to use in the lock request. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_RESERVE_PAGE_SET_TOO_SMALL = _NDIS_ERROR_TYPEDEF_(0xC0370024);

// Cannot lock or map the memory block page for the virtualization infrastructure driver because it has already been locked using a reserve page set page. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_MBP_ALREADY_LOCKED_USING_RESERVED_PAGE = _NDIS_ERROR_TYPEDEF_(0xC0370025);

// Cannot create the memory block for the virtualization infrastructure driver because the requested number of pages exceeded the limit. Restarting the virtual machine may fix the problem. If the problem persists, try restarting the physical computer.
pub const ERROR_VID_MBP_COUNT_EXCEEDED_LIMIT = _NDIS_ERROR_TYPEDEF_(0xC0370026);

// Cannot restore this virtual machine because the saved state data cannot be read. Delete the saved state data and then try to start the virtual machine.
pub const ERROR_VID_SAVED_STATE_CORRUPT = _NDIS_ERROR_TYPEDEF_(0xC0370027);

// Cannot restore this virtual machine because an item read from the saved state data is not recognized. Delete the saved state data and then try to start the virtual machine.
pub const ERROR_VID_SAVED_STATE_UNRECOGNIZED_ITEM = _NDIS_ERROR_TYPEDEF_(0xC0370028);

// Cannot restore this virtual machine to the saved state because of hypervisor incompatibility. Delete the saved state data and then try to start the virtual machine.
pub const ERROR_VID_SAVED_STATE_INCOMPATIBLE = _NDIS_ERROR_TYPEDEF_(0xC0370029);

// The specified VTL does not have the permission to access the resource.
pub const ERROR_VID_VTL_ACCESS_DENIED = _NDIS_ERROR_TYPEDEF_(0xC037002A);

// The compute system unexpectedly terminated while starting.
pub const ERROR_VMCOMPUTE_TERMINATED_DURING_START = _NDIS_ERROR_TYPEDEF_(0xC0370100);

// The operating system of the container does not match the operating system of the host.
pub const ERROR_VMCOMPUTE_IMAGE_MISMATCH = _NDIS_ERROR_TYPEDEF_(0xC0370101);

// A Virtual Machine could not be started because Hyper-V is not installed.
pub const ERROR_VMCOMPUTE_HYPERV_NOT_INSTALLED = _NDIS_ERROR_TYPEDEF_(0xC0370102);

// The call to start an asynchronous operation succeeded and the operation is performed in the background.
pub const ERROR_VMCOMPUTE_OPERATION_PENDING = _NDIS_ERROR_TYPEDEF_(0xC0370103);

// The supported number of notification callbacks has been exceeded.
pub const ERROR_VMCOMPUTE_TOO_MANY_NOTIFICATIONS = _NDIS_ERROR_TYPEDEF_(0xC0370104);

// The requested compute system operation is not valid in the current state.
pub const ERROR_VMCOMPUTE_INVALID_STATE = _NDIS_ERROR_TYPEDEF_(0xC0370105);

// The compute system exited unexpectedly.
pub const ERROR_VMCOMPUTE_UNEXPECTED_EXIT = _NDIS_ERROR_TYPEDEF_(0xC0370106);

// The compute system was forcefully terminated.
pub const ERROR_VMCOMPUTE_TERMINATED = _NDIS_ERROR_TYPEDEF_(0xC0370107);

// A connection could not be established with the Virtual Machine hosting the Container.
pub const ERROR_VMCOMPUTE_CONNECT_FAILED = _NDIS_ERROR_TYPEDEF_(0xC0370108);

// The operation timed out because a response was not received from the Virtual Machine hosting the Container.
pub const ERROR_VMCOMPUTE_TIMEOUT = _NDIS_ERROR_TYPEDEF_(0xC0370109);

// The connection with the Virtual Machine hosting the container was closed.
pub const ERROR_VMCOMPUTE_CONNECTION_CLOSED = _NDIS_ERROR_TYPEDEF_(0xC037010A);

// An unknown internal message was received by the Hyper-V Compute Service.
pub const ERROR_VMCOMPUTE_UNKNOWN_MESSAGE = _NDIS_ERROR_TYPEDEF_(0xC037010B);

// The communication protocol version between the Hyper-V Host and Guest Compute Services is not supported.
pub const ERROR_VMCOMPUTE_UNSUPPORTED_PROTOCOL_VERSION = _NDIS_ERROR_TYPEDEF_(0xC037010C);

// The JSON document is invalid.
pub const ERROR_VMCOMPUTE_INVALID_JSON = _NDIS_ERROR_TYPEDEF_(0xC037010D);

// A Compute System with the specified identifier does not exist.
pub const ERROR_VMCOMPUTE_SYSTEM_NOT_FOUND = _NDIS_ERROR_TYPEDEF_(0xC037010E);

// A Compute System with the specified identifier already exists.
pub const ERROR_VMCOMPUTE_SYSTEM_ALREADY_EXISTS = _NDIS_ERROR_TYPEDEF_(0xC037010F);

// The Compute System with the specified identifier did already stop.
pub const ERROR_VMCOMPUTE_SYSTEM_ALREADY_STOPPED = _NDIS_ERROR_TYPEDEF_(0xC0370110);

// A communication protocol error has occurred between the Hyper-V Host and Guest Compute Service.
pub const ERROR_VMCOMPUTE_PROTOCOL_ERROR = _NDIS_ERROR_TYPEDEF_(0xC0370111);

// The container's image contains a layer with an unrecognized format.
pub const ERROR_VMCOMPUTE_INVALID_LAYER = _NDIS_ERROR_TYPEDEF_(0xC0370112);

// To use this container image, you must join the Windows Insider Program. Please see https://go.microsoft.com/fwlink/?linkid=850659 for more information.
pub const ERROR_VMCOMPUTE_WINDOWS_INSIDER_REQUIRED = _NDIS_ERROR_TYPEDEF_(0xC0370113);

// A virtual switch with the given name was not found.
pub const ERROR_VNET_VIRTUAL_SWITCH_NAME_NOT_FOUND = _NDIS_ERROR_TYPEDEF_(0xC0370200);

// A virtual machine is running with its memory allocated across multiple NUMA nodes. This does not indicate a problem unless the performance of your virtual machine is unusually slow. If you are experiencing performance problems, you may need to modify the NUMA configuration.
pub const ERROR_VID_REMOTE_NODE_PARENT_GPA_PAGES_USED = _NDIS_ERROR_TYPEDEF_(0x80370001);

// The specified capability does not exist.
pub const WHV_E_UNKNOWN_CAPABILITY = 0x80370300;

// The specified buffer is too small for the requested data.
pub const WHV_E_INSUFFICIENT_BUFFER = 0x80370301;

// The specified property does not exist.
pub const WHV_E_UNKNOWN_PROPERTY = 0x80370302;

// The configuration of the hypervisor on this system is not supported.
pub const WHV_E_UNSUPPORTED_HYPERVISOR_CONFIG = 0x80370303;

// The configuration of the partition is not valid.
pub const WHV_E_INVALID_PARTITION_CONFIG = 0x80370304;

// The specified GPA range was not found.
pub const WHV_E_GPA_RANGE_NOT_FOUND = 0x80370305;

// A virtual processor with the specified index already exists.
pub const WHV_E_VP_ALREADY_EXISTS = 0x80370306;

// A virtual processor with the specified index does not exist.
pub const WHV_E_VP_DOES_NOT_EXIST = 0x80370307;

// The virtual processor is not in the correct state to perform the requested operation.
pub const WHV_E_INVALID_VP_STATE = 0x80370308;

// A virtual processor register with the specified name does not exist.
pub const WHV_E_INVALID_VP_REGISTER_NAME = 0x80370309;

// The regeneration operation was not able to copy all data from the active plexes due to bad sectors.
pub const ERROR_VOLMGR_INCOMPLETE_REGENERATION = _NDIS_ERROR_TYPEDEF_(0x80380001);

// One or more disks were not fully migrated to the target pack. They may or may not require reimport after fixing the hardware problems.
pub const ERROR_VOLMGR_INCOMPLETE_DISK_MIGRATION = _NDIS_ERROR_TYPEDEF_(0x80380002);

// The configuration database is full.
pub const ERROR_VOLMGR_DATABASE_FULL = _NDIS_ERROR_TYPEDEF_(0xC0380001);

// The configuration data on the disk is corrupted.
pub const ERROR_VOLMGR_DISK_CONFIGURATION_CORRUPTED = _NDIS_ERROR_TYPEDEF_(0xC0380002);

// The configuration on the disk is not insync with the in-memory configuration.
pub const ERROR_VOLMGR_DISK_CONFIGURATION_NOT_IN_SYNC = _NDIS_ERROR_TYPEDEF_(0xC0380003);

// A majority of disks failed to be updated with the new configuration.
pub const ERROR_VOLMGR_PACK_CONFIG_UPDATE_FAILED = _NDIS_ERROR_TYPEDEF_(0xC0380004);

// The disk contains non-simple volumes.
pub const ERROR_VOLMGR_DISK_CONTAINS_NON_SIMPLE_VOLUME = _NDIS_ERROR_TYPEDEF_(0xC0380005);

// The same disk was specified more than once in the migration list.
pub const ERROR_VOLMGR_DISK_DUPLICATE = _NDIS_ERROR_TYPEDEF_(0xC0380006);

// The disk is already dynamic.
pub const ERROR_VOLMGR_DISK_DYNAMIC = _NDIS_ERROR_TYPEDEF_(0xC0380007);

// The specified disk id is invalid. There are no disks with the specified disk id.
pub const ERROR_VOLMGR_DISK_ID_INVALID = _NDIS_ERROR_TYPEDEF_(0xC0380008);

// The specified disk is an invalid disk. Operation cannot complete on an invalid disk.
pub const ERROR_VOLMGR_DISK_INVALID = _NDIS_ERROR_TYPEDEF_(0xC0380009);

// The specified disk(s) cannot be removed since it is the last remaining voter.
pub const ERROR_VOLMGR_DISK_LAST_VOTER = _NDIS_ERROR_TYPEDEF_(0xC038000A);

// The specified disk has an invalid disk layout.
pub const ERROR_VOLMGR_DISK_LAYOUT_INVALID = _NDIS_ERROR_TYPEDEF_(0xC038000B);

// The disk layout contains non-basic partitions which appear after basic paritions. This is an invalid disk layout.
pub const ERROR_VOLMGR_DISK_LAYOUT_NON_BASIC_BETWEEN_BASIC_PARTITIONS = _NDIS_ERROR_TYPEDEF_(0xC038000C);

// The disk layout contains partitions which are not cylinder aligned.
pub const ERROR_VOLMGR_DISK_LAYOUT_NOT_CYLINDER_ALIGNED = _NDIS_ERROR_TYPEDEF_(0xC038000D);

// The disk layout contains partitions which are samller than the minimum size.
pub const ERROR_VOLMGR_DISK_LAYOUT_PARTITIONS_TOO_SMALL = _NDIS_ERROR_TYPEDEF_(0xC038000E);

// The disk layout contains primary partitions in between logical drives. This is an invalid disk layout.
pub const ERROR_VOLMGR_DISK_LAYOUT_PRIMARY_BETWEEN_LOGICAL_PARTITIONS = _NDIS_ERROR_TYPEDEF_(0xC038000F);

// The disk layout contains more than the maximum number of supported partitions.
pub const ERROR_VOLMGR_DISK_LAYOUT_TOO_MANY_PARTITIONS = _NDIS_ERROR_TYPEDEF_(0xC0380010);

// The specified disk is missing. The operation cannot complete on a missing disk.
pub const ERROR_VOLMGR_DISK_MISSING = _NDIS_ERROR_TYPEDEF_(0xC0380011);

// The specified disk is not empty.
pub const ERROR_VOLMGR_DISK_NOT_EMPTY = _NDIS_ERROR_TYPEDEF_(0xC0380012);

// There is not enough usable space for this operation.
pub const ERROR_VOLMGR_DISK_NOT_ENOUGH_SPACE = _NDIS_ERROR_TYPEDEF_(0xC0380013);

// The force revectoring of bad sectors failed.
pub const ERROR_VOLMGR_DISK_REVECTORING_FAILED = _NDIS_ERROR_TYPEDEF_(0xC0380014);

// The specified disk has an invalid sector size.
pub const ERROR_VOLMGR_DISK_SECTOR_SIZE_INVALID = _NDIS_ERROR_TYPEDEF_(0xC0380015);

// The specified disk set contains volumes which exist on disks outside of the set.
pub const ERROR_VOLMGR_DISK_SET_NOT_CONTAINED = _NDIS_ERROR_TYPEDEF_(0xC0380016);

// A disk in the volume layout provides extents to more than one member of a plex.
pub const ERROR_VOLMGR_DISK_USED_BY_MULTIPLE_MEMBERS = _NDIS_ERROR_TYPEDEF_(0xC0380017);

// A disk in the volume layout provides extents to more than one plex.
pub const ERROR_VOLMGR_DISK_USED_BY_MULTIPLE_PLEXES = _NDIS_ERROR_TYPEDEF_(0xC0380018);

// Dynamic disks are not supported on this system.
pub const ERROR_VOLMGR_DYNAMIC_DISK_NOT_SUPPORTED = _NDIS_ERROR_TYPEDEF_(0xC0380019);

// The specified extent is already used by other volumes.
pub const ERROR_VOLMGR_EXTENT_ALREADY_USED = _NDIS_ERROR_TYPEDEF_(0xC038001A);

// The specified volume is retained and can only be extended into a contiguous extent. The specified extent to grow the volume is not contiguous with the specified volume.
pub const ERROR_VOLMGR_EXTENT_NOT_CONTIGUOUS = _NDIS_ERROR_TYPEDEF_(0xC038001B);

// The specified volume extent is not within the public region of the disk.
pub const ERROR_VOLMGR_EXTENT_NOT_IN_PUBLIC_REGION = _NDIS_ERROR_TYPEDEF_(0xC038001C);

// The specifed volume extent is not sector aligned.
pub const ERROR_VOLMGR_EXTENT_NOT_SECTOR_ALIGNED = _NDIS_ERROR_TYPEDEF_(0xC038001D);

// The specified parition overlaps an EBR (the first track of an extended partition on a MBR disks).
pub const ERROR_VOLMGR_EXTENT_OVERLAPS_EBR_PARTITION = _NDIS_ERROR_TYPEDEF_(0xC038001E);

// The specified extent lengths cannot be used to construct a volume with specified length.
pub const ERROR_VOLMGR_EXTENT_VOLUME_LENGTHS_DO_NOT_MATCH = _NDIS_ERROR_TYPEDEF_(0xC038001F);

// The system does not support fault tolerant volumes.
pub const ERROR_VOLMGR_FAULT_TOLERANT_NOT_SUPPORTED = _NDIS_ERROR_TYPEDEF_(0xC0380020);

// The specified interleave length is invalid.
pub const ERROR_VOLMGR_INTERLEAVE_LENGTH_INVALID = _NDIS_ERROR_TYPEDEF_(0xC0380021);

// There is already a maximum number of registered users.
pub const ERROR_VOLMGR_MAXIMUM_REGISTERED_USERS = _NDIS_ERROR_TYPEDEF_(0xC0380022);

// The specified member is already in-sync with the other active members. It does not need to be regenerated.
pub const ERROR_VOLMGR_MEMBER_IN_SYNC = _NDIS_ERROR_TYPEDEF_(0xC0380023);

// The same member index was specified more than once.
pub const ERROR_VOLMGR_MEMBER_INDEX_DUPLICATE = _NDIS_ERROR_TYPEDEF_(0xC0380024);

// The specified member index is greater or equal than the number of members in the volume plex.
pub const ERROR_VOLMGR_MEMBER_INDEX_INVALID = _NDIS_ERROR_TYPEDEF_(0xC0380025);

// The specified member is missing. It cannot be regenerated.
pub const ERROR_VOLMGR_MEMBER_MISSING = _NDIS_ERROR_TYPEDEF_(0xC0380026);

// The specified member is not detached. Cannot replace a member which is not detached.
pub const ERROR_VOLMGR_MEMBER_NOT_DETACHED = _NDIS_ERROR_TYPEDEF_(0xC0380027);

// The specified member is already regenerating.
pub const ERROR_VOLMGR_MEMBER_REGENERATING = _NDIS_ERROR_TYPEDEF_(0xC0380028);

// All disks belonging to the pack failed.
pub const ERROR_VOLMGR_ALL_DISKS_FAILED = _NDIS_ERROR_TYPEDEF_(0xC0380029);

// There are currently no registered users for notifications. The task number is irrelevant unless there are registered users.
pub const ERROR_VOLMGR_NO_REGISTERED_USERS = _NDIS_ERROR_TYPEDEF_(0xC038002A);

// The specified notification user does not exist. Failed to unregister user for notifications.
pub const ERROR_VOLMGR_NO_SUCH_USER = _NDIS_ERROR_TYPEDEF_(0xC038002B);

// The notifications have been reset. Notifications for the current user are invalid. Unregister and re-register for notifications.
pub const ERROR_VOLMGR_NOTIFICATION_RESET = _NDIS_ERROR_TYPEDEF_(0xC038002C);

// The specified number of members is invalid.
pub const ERROR_VOLMGR_NUMBER_OF_MEMBERS_INVALID = _NDIS_ERROR_TYPEDEF_(0xC038002D);

// The specified number of plexes is invalid.
pub const ERROR_VOLMGR_NUMBER_OF_PLEXES_INVALID = _NDIS_ERROR_TYPEDEF_(0xC038002E);

// The specified source and target packs are identical.
pub const ERROR_VOLMGR_PACK_DUPLICATE = _NDIS_ERROR_TYPEDEF_(0xC038002F);

// The specified pack id is invalid. There are no packs with the specified pack id.
pub const ERROR_VOLMGR_PACK_ID_INVALID = _NDIS_ERROR_TYPEDEF_(0xC0380030);

// The specified pack is the invalid pack. The operation cannot complete with the invalid pack.
pub const ERROR_VOLMGR_PACK_INVALID = _NDIS_ERROR_TYPEDEF_(0xC0380031);

// The specified pack name is invalid.
pub const ERROR_VOLMGR_PACK_NAME_INVALID = _NDIS_ERROR_TYPEDEF_(0xC0380032);

// The specified pack is offline.
pub const ERROR_VOLMGR_PACK_OFFLINE = _NDIS_ERROR_TYPEDEF_(0xC0380033);

// The specified pack already has a quorum of healthy disks.
pub const ERROR_VOLMGR_PACK_HAS_QUORUM = _NDIS_ERROR_TYPEDEF_(0xC0380034);

// The pack does not have a quorum of healthy disks.
pub const ERROR_VOLMGR_PACK_WITHOUT_QUORUM = _NDIS_ERROR_TYPEDEF_(0xC0380035);

// The specified disk has an unsupported partition style. Only MBR and GPT partition styles are supported.
pub const ERROR_VOLMGR_PARTITION_STYLE_INVALID = _NDIS_ERROR_TYPEDEF_(0xC0380036);

// Failed to update the disk's partition layout.
pub const ERROR_VOLMGR_PARTITION_UPDATE_FAILED = _NDIS_ERROR_TYPEDEF_(0xC0380037);

// The specified plex is already in-sync with the other active plexes. It does not need to be regenerated.
pub const ERROR_VOLMGR_PLEX_IN_SYNC = _NDIS_ERROR_TYPEDEF_(0xC0380038);

// The same plex index was specified more than once.
pub const ERROR_VOLMGR_PLEX_INDEX_DUPLICATE = _NDIS_ERROR_TYPEDEF_(0xC0380039);

// The specified plex index is greater or equal than the number of plexes in the volume.
pub const ERROR_VOLMGR_PLEX_INDEX_INVALID = _NDIS_ERROR_TYPEDEF_(0xC038003A);

// The specified plex is the last active plex in the volume. The plex cannot be removed or else the volume will go offline.
pub const ERROR_VOLMGR_PLEX_LAST_ACTIVE = _NDIS_ERROR_TYPEDEF_(0xC038003B);

// The specified plex is missing.
pub const ERROR_VOLMGR_PLEX_MISSING = _NDIS_ERROR_TYPEDEF_(0xC038003C);

// The specified plex is currently regenerating.
pub const ERROR_VOLMGR_PLEX_REGENERATING = _NDIS_ERROR_TYPEDEF_(0xC038003D);

// The specified plex type is invalid.
pub const ERROR_VOLMGR_PLEX_TYPE_INVALID = _NDIS_ERROR_TYPEDEF_(0xC038003E);

// The operation is only supported on RAID-5 plexes.
pub const ERROR_VOLMGR_PLEX_NOT_RAID5 = _NDIS_ERROR_TYPEDEF_(0xC038003F);

// The operation is only supported on simple plexes.
pub const ERROR_VOLMGR_PLEX_NOT_SIMPLE = _NDIS_ERROR_TYPEDEF_(0xC0380040);

// The Size fields in the VM_VOLUME_LAYOUT input structure are incorrectly set.
pub const ERROR_VOLMGR_STRUCTURE_SIZE_INVALID = _NDIS_ERROR_TYPEDEF_(0xC0380041);

// There is already a pending request for notifications. Wait for the existing request to return before requesting for more notifications.
pub const ERROR_VOLMGR_TOO_MANY_NOTIFICATION_REQUESTS = _NDIS_ERROR_TYPEDEF_(0xC0380042);

// There is currently a transaction in process.
pub const ERROR_VOLMGR_TRANSACTION_IN_PROGRESS = _NDIS_ERROR_TYPEDEF_(0xC0380043);

// An unexpected layout change occurred outside of the volume manager.
pub const ERROR_VOLMGR_UNEXPECTED_DISK_LAYOUT_CHANGE = _NDIS_ERROR_TYPEDEF_(0xC0380044);

// The specified volume contains a missing disk.
pub const ERROR_VOLMGR_VOLUME_CONTAINS_MISSING_DISK = _NDIS_ERROR_TYPEDEF_(0xC0380045);

// The specified volume id is invalid. There are no volumes with the specified volume id.
pub const ERROR_VOLMGR_VOLUME_ID_INVALID = _NDIS_ERROR_TYPEDEF_(0xC0380046);

// The specified volume length is invalid.
pub const ERROR_VOLMGR_VOLUME_LENGTH_INVALID = _NDIS_ERROR_TYPEDEF_(0xC0380047);

// The specified size for the volume is not a multiple of the sector size.
pub const ERROR_VOLMGR_VOLUME_LENGTH_NOT_SECTOR_SIZE_MULTIPLE = _NDIS_ERROR_TYPEDEF_(0xC0380048);

// The operation is only supported on mirrored volumes.
pub const ERROR_VOLMGR_VOLUME_NOT_MIRRORED = _NDIS_ERROR_TYPEDEF_(0xC0380049);

// The specified volume does not have a retain partition.
pub const ERROR_VOLMGR_VOLUME_NOT_RETAINED = _NDIS_ERROR_TYPEDEF_(0xC038004A);

// The specified volume is offline.
pub const ERROR_VOLMGR_VOLUME_OFFLINE = _NDIS_ERROR_TYPEDEF_(0xC038004B);

// The specified volume already has a retain partition.
pub const ERROR_VOLMGR_VOLUME_RETAINED = _NDIS_ERROR_TYPEDEF_(0xC038004C);

// The specified number of extents is invalid.
pub const ERROR_VOLMGR_NUMBER_OF_EXTENTS_INVALID = _NDIS_ERROR_TYPEDEF_(0xC038004D);

// All disks participating to the volume must have the same sector size.
pub const ERROR_VOLMGR_DIFFERENT_SECTOR_SIZE = _NDIS_ERROR_TYPEDEF_(0xC038004E);

// The boot disk experienced failures.
pub const ERROR_VOLMGR_BAD_BOOT_DISK = _NDIS_ERROR_TYPEDEF_(0xC038004F);

// The configuration of the pack is offline.
pub const ERROR_VOLMGR_PACK_CONFIG_OFFLINE = _NDIS_ERROR_TYPEDEF_(0xC0380050);

// The configuration of the pack is online.
pub const ERROR_VOLMGR_PACK_CONFIG_ONLINE = _NDIS_ERROR_TYPEDEF_(0xC0380051);

// The specified pack is not the primary pack.
pub const ERROR_VOLMGR_NOT_PRIMARY_PACK = _NDIS_ERROR_TYPEDEF_(0xC0380052);

// All disks failed to be updated with the new content of the log.
pub const ERROR_VOLMGR_PACK_LOG_UPDATE_FAILED = _NDIS_ERROR_TYPEDEF_(0xC0380053);

// The specified number of disks in a plex is invalid.
pub const ERROR_VOLMGR_NUMBER_OF_DISKS_IN_PLEX_INVALID = _NDIS_ERROR_TYPEDEF_(0xC0380054);

// The specified number of disks in a plex member is invalid.
pub const ERROR_VOLMGR_NUMBER_OF_DISKS_IN_MEMBER_INVALID = _NDIS_ERROR_TYPEDEF_(0xC0380055);

// The operation is not supported on mirrored volumes.
pub const ERROR_VOLMGR_VOLUME_MIRRORED = _NDIS_ERROR_TYPEDEF_(0xC0380056);

// The operation is only supported on simple and spanned plexes.
pub const ERROR_VOLMGR_PLEX_NOT_SIMPLE_SPANNED = _NDIS_ERROR_TYPEDEF_(0xC0380057);

// The pack has no valid log copies.
pub const ERROR_VOLMGR_NO_VALID_LOG_COPIES = _NDIS_ERROR_TYPEDEF_(0xC0380058);

// A primary pack is already present.
pub const ERROR_VOLMGR_PRIMARY_PACK_PRESENT = _NDIS_ERROR_TYPEDEF_(0xC0380059);

// The specified number of disks is invalid.
pub const ERROR_VOLMGR_NUMBER_OF_DISKS_INVALID = _NDIS_ERROR_TYPEDEF_(0xC038005A);

// The system does not support mirrored volumes.
pub const ERROR_VOLMGR_MIRROR_NOT_SUPPORTED = _NDIS_ERROR_TYPEDEF_(0xC038005B);

// The system does not support RAID-5 volumes.
pub const ERROR_VOLMGR_RAID5_NOT_SUPPORTED = _NDIS_ERROR_TYPEDEF_(0xC038005C);

// Some BCD entries were not imported correctly from the BCD store.
pub const ERROR_BCD_NOT_ALL_ENTRIES_IMPORTED = _NDIS_ERROR_TYPEDEF_(0x80390001);

// Entries enumerated have exceeded the allowed threshold.
pub const ERROR_BCD_TOO_MANY_ELEMENTS = _NDIS_ERROR_TYPEDEF_(0xC0390002);

// Some BCD entries were not synchronized correctly with the firmware.
pub const ERROR_BCD_NOT_ALL_ENTRIES_SYNCHRONIZED = _NDIS_ERROR_TYPEDEF_(0x80390003);

// The virtual hard disk is corrupted. The virtual hard disk drive footer is missing.
pub const ERROR_VHD_DRIVE_FOOTER_MISSING = _NDIS_ERROR_TYPEDEF_(0xC03A0001);

// The virtual hard disk is corrupted. The virtual hard disk drive footer checksum does not match the on-disk checksum.
pub const ERROR_VHD_DRIVE_FOOTER_CHECKSUM_MISMATCH = _NDIS_ERROR_TYPEDEF_(0xC03A0002);

// The virtual hard disk is corrupted. The virtual hard disk drive footer in the virtual hard disk is corrupted.
pub const ERROR_VHD_DRIVE_FOOTER_CORRUPT = _NDIS_ERROR_TYPEDEF_(0xC03A0003);

// The system does not recognize the file format of this virtual hard disk.
pub const ERROR_VHD_FORMAT_UNKNOWN = _NDIS_ERROR_TYPEDEF_(0xC03A0004);

// The version does not support this version of the file format.
pub const ERROR_VHD_FORMAT_UNSUPPORTED_VERSION = _NDIS_ERROR_TYPEDEF_(0xC03A0005);

// The virtual hard disk is corrupted. The sparse header checksum does not match the on-disk checksum.
pub const ERROR_VHD_SPARSE_HEADER_CHECKSUM_MISMATCH = _NDIS_ERROR_TYPEDEF_(0xC03A0006);

// The system does not support this version of the virtual hard disk.This version of the sparse header is not supported.
pub const ERROR_VHD_SPARSE_HEADER_UNSUPPORTED_VERSION = _NDIS_ERROR_TYPEDEF_(0xC03A0007);

// The virtual hard disk is corrupted. The sparse header in the virtual hard disk is corrupt.
pub const ERROR_VHD_SPARSE_HEADER_CORRUPT = _NDIS_ERROR_TYPEDEF_(0xC03A0008);

// Failed to write to the virtual hard disk failed because the system failed to allocate a new block in the virtual hard disk.
pub const ERROR_VHD_BLOCK_ALLOCATION_FAILURE = _NDIS_ERROR_TYPEDEF_(0xC03A0009);

// The virtual hard disk is corrupted. The block allocation table in the virtual hard disk is corrupt.
pub const ERROR_VHD_BLOCK_ALLOCATION_TABLE_CORRUPT = _NDIS_ERROR_TYPEDEF_(0xC03A000A);

// The system does not support this version of the virtual hard disk. The block size is invalid.
pub const ERROR_VHD_INVALID_BLOCK_SIZE = _NDIS_ERROR_TYPEDEF_(0xC03A000B);

// The virtual hard disk is corrupted. The block bitmap does not match with the block data present in the virtual hard disk.
pub const ERROR_VHD_BITMAP_MISMATCH = _NDIS_ERROR_TYPEDEF_(0xC03A000C);

// The chain of virtual hard disks is broken. The system cannot locate the parent virtual hard disk for the differencing disk.
pub const ERROR_VHD_PARENT_VHD_NOT_FOUND = _NDIS_ERROR_TYPEDEF_(0xC03A000D);

// The chain of virtual hard disks is corrupted. There is a mismatch in the identifiers of the parent virtual hard disk and differencing disk.
pub const ERROR_VHD_CHILD_PARENT_ID_MISMATCH = _NDIS_ERROR_TYPEDEF_(0xC03A000E);

// The chain of virtual hard disks is corrupted. The time stamp of the parent virtual hard disk does not match the time stamp of the differencing disk.
pub const ERROR_VHD_CHILD_PARENT_TIMESTAMP_MISMATCH = _NDIS_ERROR_TYPEDEF_(0xC03A000F);

// Failed to read the metadata of the virtual hard disk.
pub const ERROR_VHD_METADATA_READ_FAILURE = _NDIS_ERROR_TYPEDEF_(0xC03A0010);

// Failed to write to the metadata of the virtual hard disk.
pub const ERROR_VHD_METADATA_WRITE_FAILURE = _NDIS_ERROR_TYPEDEF_(0xC03A0011);

// The size of the virtual hard disk is not valid.
pub const ERROR_VHD_INVALID_SIZE = _NDIS_ERROR_TYPEDEF_(0xC03A0012);

// The file size of this virtual hard disk is not valid.
pub const ERROR_VHD_INVALID_FILE_SIZE = _NDIS_ERROR_TYPEDEF_(0xC03A0013);

// A virtual disk support provider for the specified file was not found.
pub const ERROR_VIRTDISK_PROVIDER_NOT_FOUND = _NDIS_ERROR_TYPEDEF_(0xC03A0014);

// The specified disk is not a virtual disk.
pub const ERROR_VIRTDISK_NOT_VIRTUAL_DISK = _NDIS_ERROR_TYPEDEF_(0xC03A0015);

// The chain of virtual hard disks is inaccessible. The process has not been granted access rights to the parent virtual hard disk for the differencing disk.
pub const ERROR_VHD_PARENT_VHD_ACCESS_DENIED = _NDIS_ERROR_TYPEDEF_(0xC03A0016);

// The chain of virtual hard disks is corrupted. There is a mismatch in the virtual sizes of the parent virtual hard disk and differencing disk.
pub const ERROR_VHD_CHILD_PARENT_SIZE_MISMATCH = _NDIS_ERROR_TYPEDEF_(0xC03A0017);

// The chain of virtual hard disks is corrupted. A differencing disk is indicated in its own parent chain.
pub const ERROR_VHD_DIFFERENCING_CHAIN_CYCLE_DETECTED = _NDIS_ERROR_TYPEDEF_(0xC03A0018);

// The chain of virtual hard disks is inaccessible. There was an error opening a virtual hard disk further up the chain.
pub const ERROR_VHD_DIFFERENCING_CHAIN_ERROR_IN_PARENT = _NDIS_ERROR_TYPEDEF_(0xC03A0019);

// The requested operation could not be completed due to a virtual disk system limitation.  Virtual hard disk files must be uncompressed and unencrypted and must not be sparse.
pub const ERROR_VIRTUAL_DISK_LIMITATION = _NDIS_ERROR_TYPEDEF_(0xC03A001A);

// The requested operation cannot be performed on a virtual disk of this type.
pub const ERROR_VHD_INVALID_TYPE = _NDIS_ERROR_TYPEDEF_(0xC03A001B);

// The requested operation cannot be performed on the virtual disk in its current state.
pub const ERROR_VHD_INVALID_STATE = _NDIS_ERROR_TYPEDEF_(0xC03A001C);

// The sector size of the physical disk on which the virtual disk resides is not supported.
pub const ERROR_VIRTDISK_UNSUPPORTED_DISK_SECTOR_SIZE = _NDIS_ERROR_TYPEDEF_(0xC03A001D);

// The disk is already owned by a different owner.
pub const ERROR_VIRTDISK_DISK_ALREADY_OWNED = _NDIS_ERROR_TYPEDEF_(0xC03A001E);

// The disk must be offline or read-only.
pub const ERROR_VIRTDISK_DISK_ONLINE_AND_WRITABLE = _NDIS_ERROR_TYPEDEF_(0xC03A001F);

// Change Tracking is not initialized for this virtual disk.
pub const ERROR_CTLOG_TRACKING_NOT_INITIALIZED = _NDIS_ERROR_TYPEDEF_(0xC03A0020);

// Size of change tracking file exceeded the maximum size limit.
pub const ERROR_CTLOG_LOGFILE_SIZE_EXCEEDED_MAXSIZE = _NDIS_ERROR_TYPEDEF_(0xC03A0021);

// VHD file is changed due to compaction, expansion, or offline updates.
pub const ERROR_CTLOG_VHD_CHANGED_OFFLINE = _NDIS_ERROR_TYPEDEF_(0xC03A0022);

// Change Tracking for the virtual disk is not in a valid state to perform this request.  Change tracking could be discontinued or already in the requested state.
pub const ERROR_CTLOG_INVALID_TRACKING_STATE = _NDIS_ERROR_TYPEDEF_(0xC03A0023);

// Change Tracking file for the virtual disk is not in a valid state.
pub const ERROR_CTLOG_INCONSISTENT_TRACKING_FILE = _NDIS_ERROR_TYPEDEF_(0xC03A0024);

// The requested resize operation could not be completed because it might truncate user data residing on the virtual disk.
pub const ERROR_VHD_RESIZE_WOULD_TRUNCATE_DATA = _NDIS_ERROR_TYPEDEF_(0xC03A0025);

// This may be due to a missing or corrupt partition table.
pub const ERROR_VHD_COULD_NOT_COMPUTE_MINIMUM_VIRTUAL_SIZE = _NDIS_ERROR_TYPEDEF_(0xC03A0026);

// The requested operation could not be completed because the virtual disk's size cannot be safely reduced further.
pub const ERROR_VHD_ALREADY_AT_OR_BELOW_MINIMUM_VIRTUAL_SIZE = _NDIS_ERROR_TYPEDEF_(0xC03A0027);

// There is not enough space in the virtual disk file for the provided metadata item.
pub const ERROR_VHD_METADATA_FULL = _NDIS_ERROR_TYPEDEF_(0xC03A0028);

// The specified change tracking identifier is not valid.
pub const ERROR_VHD_INVALID_CHANGE_TRACKING_ID = _NDIS_ERROR_TYPEDEF_(0xC03A0029);

// Change tracking is disabled for the specified virtual hard disk, so no change tracking information is available.
pub const ERROR_VHD_CHANGE_TRACKING_DISABLED = _NDIS_ERROR_TYPEDEF_(0xC03A002A);

// There is no change tracking data available associated with the specified change tracking identifier.
pub const ERROR_VHD_MISSING_CHANGE_TRACKING_INFORMATION = _NDIS_ERROR_TYPEDEF_(0xC03A0030);

// The virtualization storage subsystem has generated an error.
pub const ERROR_QUERY_STORAGE_ERROR = _NDIS_ERROR_TYPEDEF_(0x803A0001);

// The network was not found.
pub const HNS_NETWORK_NOT_FOUND = 0xC03B0001;

// The endpoint was not found.
pub const HNS_ENDPOINT_NOT_FOUND = 0xC03B0002;

// The network's underlying layer was not found.
pub const HNS_LAYER_NOT_FOUND = 0xC03B0003;

// The virtual switch was not found.
pub const HNS_SWITCH_NOT_FOUND = 0xC03B0004;

// The network does not have a subnet for this endpoint.
pub const HNS_SUBNET_NOT_FOUND = 0xC03B0005;

// An adapter was not found.
pub const HNS_ADAPTER_NOT_FOUND = 0xC03B0006;

// The switch-port was not found.
pub const HNS_PORT_NOT_FOUND = 0xC03B0007;

// An expected policy was not found.
pub const HNS_POLICY_NOT_FOUND = 0xC03B0008;

// A required VFP port setting was not found.
pub const HNS_VFP_PORTSETTING_NOT_FOUND = 0xC03B0009;

// The provided network configuration is invalid or missing parameters.
pub const HNS_INVALID_NETWORK = 0xC03B000A;

// Invalid network type.
pub const HNS_INVALID_NETWORK_TYPE = 0xC03B000B;

// The provided endpoint configuration is invalid or missing parameters.
pub const HNS_INVALID_ENDPOINT = 0xC03B000C;

// The provided policy configuration is invalid or missing parameters.
pub const HNS_INVALID_POLICY = 0xC03B000D;

// Invalid policy type.
pub const HNS_INVALID_POLICY_TYPE = 0xC03B000E;

// This requested operation is invalid for a remote endpoint.
pub const HNS_INVALID_REMOTE_ENDPOINT_OPERATION = 0xC03B000F;

// A network with this name already exists.
pub const HNS_NETWORK_ALREADY_EXISTS = 0xC03B0010;

// A network with this name already exists.
pub const HNS_LAYER_ALREADY_EXISTS = 0xC03B0011;

// Policy information already exists on this object.
pub const HNS_POLICY_ALREADY_EXISTS = 0xC03B0012;

// The specified port already exists.
pub const HNS_PORT_ALREADY_EXISTS = 0xC03B0013;

// This endpoint is already attached to the switch.
pub const HNS_ENDPOINT_ALREADY_ATTACHED = 0xC03B0014;

// The specified request is unsupported.
pub const HNS_REQUEST_UNSUPPORTED = 0xC03B0015;

// Port mapping is not supported on the given network.
pub const HNS_MAPPING_NOT_SUPPORTED = 0xC03B0016;

// There was an operation attempted on a degraded object.
pub const HNS_DEGRADED_OPERATION = 0xC03B0017;

// Cannot modify a switch shared by multiple networks.
pub const HNS_SHARED_SWITCH_MODIFICATION = 0xC03B0018;

// Failed to interpret a parameter as a GUID.
pub const HNS_GUID_CONVERSION_FAILURE = 0xC03B0019;

// Failed to process registry key.
pub const HNS_REGKEY_FAILURE = 0xC03B001A;

// Invalid Json document string.
pub const HNS_INVALID_JSON = 0xC03B001B;

// The reference is invalid in the json document.
pub const HNS_INVALID_JSON_REFERENCE = 0xC03B001C;

// Endpoint sharing is disabled.
pub const HNS_ENDPOINT_SHARING_DISABLED = 0xC03B001D;

// IP address is either invalid or not part of any configured subnet(s).
pub const HNS_INVALID_IP = 0xC03B001E;

// The operation was cancelled.
pub const SDIAG_E_CANCELLED = _NDIS_ERROR_TYPEDEF_(0x803C0100);

// An error occurred when running a PowerShell script.
pub const SDIAG_E_SCRIPT = _NDIS_ERROR_TYPEDEF_(0x803C0101);

// An error occurred when interacting with PowerShell runtime.
pub const SDIAG_E_POWERSHELL = _NDIS_ERROR_TYPEDEF_(0x803C0102);

// An error occurred in the Scripted Diagnostic Managed Host.
pub const SDIAG_E_MANAGEDHOST = _NDIS_ERROR_TYPEDEF_(0x803C0103);

// The troubleshooting pack does not contain a required verifier to complete the verification.
pub const SDIAG_E_NOVERIFIER = _NDIS_ERROR_TYPEDEF_(0x803C0104);

// The troubleshooting pack cannot be executed on this system.
pub const SDIAG_S_CANNOTRUN = _NDIS_ERROR_TYPEDEF_(0x003C0105);

// Scripted diagnostics is disabled by group policy.
pub const SDIAG_E_DISABLED = _NDIS_ERROR_TYPEDEF_(0x803C0106);

// Trust validation of the troubleshooting pack failed.
pub const SDIAG_E_TRUST = _NDIS_ERROR_TYPEDEF_(0x803C0107);

// The troubleshooting pack cannot be executed on this system.
pub const SDIAG_E_CANNOTRUN = _NDIS_ERROR_TYPEDEF_(0x803C0108);

// This version of the troubleshooting pack is not supported.
pub const SDIAG_E_VERSION = _NDIS_ERROR_TYPEDEF_(0x803C0109);

// A required resource cannot be loaded.
pub const SDIAG_E_RESOURCE = _NDIS_ERROR_TYPEDEF_(0x803C010A);

// The troubleshooting pack reported information for a root cause without adding the root cause.
pub const SDIAG_E_ROOTCAUSE = _NDIS_ERROR_TYPEDEF_(0x803C010B);

// The notification channel has already been closed.
pub const WPN_E_CHANNEL_CLOSED = 0x803E0100;

// The notification channel request did not complete successfully.
pub const WPN_E_CHANNEL_REQUEST_NOT_COMPLETE = 0x803E0101;

// The application identifier provided is invalid.
pub const WPN_E_INVALID_APP = 0x803E0102;

// A notification channel request for the provided application identifier is in progress.
pub const WPN_E_OUTSTANDING_CHANNEL_REQUEST = 0x803E0103;

// The channel identifier is already tied to another application endpoint.
pub const WPN_E_DUPLICATE_CHANNEL = 0x803E0104;

// The notification platform is unavailable.
pub const WPN_E_PLATFORM_UNAVAILABLE = 0x803E0105;

// The notification has already been posted.
pub const WPN_E_NOTIFICATION_POSTED = 0x803E0106;

// The notification has already been hidden.
pub const WPN_E_NOTIFICATION_HIDDEN = 0x803E0107;

// The notification cannot be hidden until it has been shown.
pub const WPN_E_NOTIFICATION_NOT_POSTED = 0x803E0108;

// Cloud notifications have been turned off.
pub const WPN_E_CLOUD_DISABLED = 0x803E0109;

// The application does not have the cloud notification capability.
pub const WPN_E_CLOUD_INCAPABLE = 0x803E0110;

// The notification platform is unable to retrieve the authentication credentials required to connect to the cloud notification service.
pub const WPN_E_CLOUD_AUTH_UNAVAILABLE = 0x803E011A;

// The notification platform is unable to connect to the cloud notification service.
pub const WPN_E_CLOUD_SERVICE_UNAVAILABLE = 0x803E011B;

// The notification platform is unable to initialize a callback for lock screen updates.
pub const WPN_E_FAILED_LOCK_SCREEN_UPDATE_INTIALIZATION = 0x803E011C;

// Settings prevent the notification from being delivered.
pub const WPN_E_NOTIFICATION_DISABLED = 0x803E0111;

// Application capabilities prevent the notification from being delivered.
pub const WPN_E_NOTIFICATION_INCAPABLE = 0x803E0112;

// The application does not have the internet access capability.
pub const WPN_E_INTERNET_INCAPABLE = 0x803E0113;

// Settings prevent the notification type from being delivered.
pub const WPN_E_NOTIFICATION_TYPE_DISABLED = 0x803E0114;

// The size of the notification content is too large.
pub const WPN_E_NOTIFICATION_SIZE = 0x803E0115;

// The size of the notification tag is too large.
pub const WPN_E_TAG_SIZE = 0x803E0116;

// The notification platform doesn't have appropriate privilege on resources.
pub const WPN_E_ACCESS_DENIED = 0x803E0117;

// The notification platform found application is already registered.
pub const WPN_E_DUPLICATE_REGISTRATION = 0x803E0118;

// The application background task does not have the push notification capability.
pub const WPN_E_PUSH_NOTIFICATION_INCAPABLE = 0x803E0119;

// The size of the developer id for scheduled notification is too large.
pub const WPN_E_DEV_ID_SIZE = 0x803E0120;

// The notification tag is not alphanumeric.
pub const WPN_E_TAG_ALPHANUMERIC = 0x803E012A;

// The notification platform has received invalid HTTP status code other than 2xx for polling.
pub const WPN_E_INVALID_HTTP_STATUS_CODE = 0x803E012B;

// The notification platform has run out of presentation layer sessions.
pub const WPN_E_OUT_OF_SESSION = 0x803E0200;

// The notification platform rejects image download request due to system in power save mode.
pub const WPN_E_POWER_SAVE = 0x803E0201;

// The notification platform doesn't have the requested image in its cache.
pub const WPN_E_IMAGE_NOT_FOUND_IN_CACHE = 0x803E0202;

// The notification platform cannot complete all of requested image.
pub const WPN_E_ALL_URL_NOT_COMPLETED = 0x803E0203;

// A cloud image downloaded from the notification platform is invalid.
pub const WPN_E_INVALID_CLOUD_IMAGE = 0x803E0204;

// Notification Id provided as filter is matched with what the notification platform maintains.
pub const WPN_E_NOTIFICATION_ID_MATCHED = 0x803E0205;

// Notification callback interface is already registered.
pub const WPN_E_CALLBACK_ALREADY_REGISTERED = 0x803E0206;

// Toast Notification was dropped without being displayed to the user.
pub const WPN_E_TOAST_NOTIFICATION_DROPPED = 0x803E0207;

// The notification platform does not have the proper privileges to complete the request.
pub const WPN_E_STORAGE_LOCKED = 0x803E0208;

// The size of the notification group is too large.
pub const WPN_E_GROUP_SIZE = 0x803E0209;

// The notification group is not alphanumeric.
pub const WPN_E_GROUP_ALPHANUMERIC = 0x803E020A;

// Cloud notifications have been disabled for the application due to a policy setting.
pub const WPN_E_CLOUD_DISABLED_FOR_APP = 0x803E020B;

// Context is not activated.
pub const E_MBN_CONTEXT_NOT_ACTIVATED = 0x80548201;

// Bad SIM is inserted.
pub const E_MBN_BAD_SIM = 0x80548202;

// Requested data class is not avaialable.
pub const E_MBN_DATA_CLASS_NOT_AVAILABLE = 0x80548203;

// Access point name (APN) or Access string is incorrect.
pub const E_MBN_INVALID_ACCESS_STRING = 0x80548204;

// Max activated contexts have reached.
pub const E_MBN_MAX_ACTIVATED_CONTEXTS = 0x80548205;

// Device is in packet detach state.
pub const E_MBN_PACKET_SVC_DETACHED = 0x80548206;

// Provider is not visible.
pub const E_MBN_PROVIDER_NOT_VISIBLE = 0x80548207;

// Radio is powered off.
pub const E_MBN_RADIO_POWER_OFF = 0x80548208;

// MBN subscription is not activated.
pub const E_MBN_SERVICE_NOT_ACTIVATED = 0x80548209;

// SIM is not inserted.
pub const E_MBN_SIM_NOT_INSERTED = 0x8054820A;

// Voice call in progress.
pub const E_MBN_VOICE_CALL_IN_PROGRESS = 0x8054820B;

// Visible provider cache is invalid.
pub const E_MBN_INVALID_CACHE = 0x8054820C;

// Device is not registered.
pub const E_MBN_NOT_REGISTERED = 0x8054820D;

// Providers not found.
pub const E_MBN_PROVIDERS_NOT_FOUND = 0x8054820E;

// Pin is not supported.
pub const E_MBN_PIN_NOT_SUPPORTED = 0x8054820F;

// Pin is required.
pub const E_MBN_PIN_REQUIRED = 0x80548210;

// PIN is disabled.
pub const E_MBN_PIN_DISABLED = 0x80548211;

// Generic Failure.
pub const E_MBN_FAILURE = 0x80548212;

// Profile is invalid.
pub const E_MBN_INVALID_PROFILE = 0x80548218;

// Default profile exist.
pub const E_MBN_DEFAULT_PROFILE_EXIST = 0x80548219;

// SMS encoding is not supported.
pub const E_MBN_SMS_ENCODING_NOT_SUPPORTED = 0x80548220;

// SMS filter is not supported.
pub const E_MBN_SMS_FILTER_NOT_SUPPORTED = 0x80548221;

// Invalid SMS memory index is used.
pub const E_MBN_SMS_INVALID_MEMORY_INDEX = 0x80548222;

// SMS language is not supported.
pub const E_MBN_SMS_LANG_NOT_SUPPORTED = 0x80548223;

// SMS memory failure occurred.
pub const E_MBN_SMS_MEMORY_FAILURE = 0x80548224;

// SMS network timeout happened.
pub const E_MBN_SMS_NETWORK_TIMEOUT = 0x80548225;

// Unknown SMSC address is used.
pub const E_MBN_SMS_UNKNOWN_SMSC_ADDRESS = 0x80548226;

// SMS format is not supported.
pub const E_MBN_SMS_FORMAT_NOT_SUPPORTED = 0x80548227;

// SMS operation is not allowed.
pub const E_MBN_SMS_OPERATION_NOT_ALLOWED = 0x80548228;

// Device SMS memory is full.
pub const E_MBN_SMS_MEMORY_FULL = 0x80548229;

// The IPv6 protocol is not installed.
pub const PEER_E_IPV6_NOT_INSTALLED = 0x80630001;

// The compoment has not been initialized.
pub const PEER_E_NOT_INITIALIZED = 0x80630002;

// The required service canot be started.
pub const PEER_E_CANNOT_START_SERVICE = 0x80630003;

// The P2P protocol is not licensed to run on this OS.
pub const PEER_E_NOT_LICENSED = 0x80630004;

// The graph handle is invalid.
pub const PEER_E_INVALID_GRAPH = 0x80630010;

// The graph database name has changed.
pub const PEER_E_DBNAME_CHANGED = 0x80630011;

// A graph with the same ID already exists.
pub const PEER_E_DUPLICATE_GRAPH = 0x80630012;

// The graph is not ready.
pub const PEER_E_GRAPH_NOT_READY = 0x80630013;

// The graph is shutting down.
pub const PEER_E_GRAPH_SHUTTING_DOWN = 0x80630014;

// The graph is still in use.
pub const PEER_E_GRAPH_IN_USE = 0x80630015;

// The graph database is corrupt.
pub const PEER_E_INVALID_DATABASE = 0x80630016;

// Too many attributes have been used.
pub const PEER_E_TOO_MANY_ATTRIBUTES = 0x80630017;

// The connection can not be found.
pub const PEER_E_CONNECTION_NOT_FOUND = 0x80630103;

// The peer attempted to connect to itself.
pub const PEER_E_CONNECT_SELF = 0x80630106;

// The peer is already listening for connections.
pub const PEER_E_ALREADY_LISTENING = 0x80630107;

// The node was not found.
pub const PEER_E_NODE_NOT_FOUND = 0x80630108;

// The Connection attempt failed.
pub const PEER_E_CONNECTION_FAILED = 0x80630109;

// The peer connection could not be authenticated.
pub const PEER_E_CONNECTION_NOT_AUTHENTICATED = 0x8063010A;

// The connection was refused.
pub const PEER_E_CONNECTION_REFUSED = 0x8063010B;

// The peer name classifier is too long.
pub const PEER_E_CLASSIFIER_TOO_LONG = 0x80630201;

// The maximum number of identities have been created.
pub const PEER_E_TOO_MANY_IDENTITIES = 0x80630202;

// Unable to access a key.
pub const PEER_E_NO_KEY_ACCESS = 0x80630203;

// The group already exists.
pub const PEER_E_GROUPS_EXIST = 0x80630204;

// The requested record could not be found.
pub const PEER_E_RECORD_NOT_FOUND = 0x80630301;

// Access to the database was denied.
pub const PEER_E_DATABASE_ACCESSDENIED = 0x80630302;

// The Database could not be initialized.
pub const PEER_E_DBINITIALIZATION_FAILED = 0x80630303;

// The record is too big.
pub const PEER_E_MAX_RECORD_SIZE_EXCEEDED = 0x80630304;

// The database already exists.
pub const PEER_E_DATABASE_ALREADY_PRESENT = 0x80630305;

// The database could not be found.
pub const PEER_E_DATABASE_NOT_PRESENT = 0x80630306;

// The identity could not be found.
pub const PEER_E_IDENTITY_NOT_FOUND = 0x80630401;

// The event handle could not be found.
pub const PEER_E_EVENT_HANDLE_NOT_FOUND = 0x80630501;

// Invalid search.
pub const PEER_E_INVALID_SEARCH = 0x80630601;

// The search atributes are invalid.
pub const PEER_E_INVALID_ATTRIBUTES = 0x80630602;

// The invitiation is not trusted.
pub const PEER_E_INVITATION_NOT_TRUSTED = 0x80630701;

// The certchain is too long.
pub const PEER_E_CHAIN_TOO_LONG = 0x80630703;

// The time period is invalid.
pub const PEER_E_INVALID_TIME_PERIOD = 0x80630705;

// A circular cert chain was detected.
pub const PEER_E_CIRCULAR_CHAIN_DETECTED = 0x80630706;

// The certstore is corrupted.
pub const PEER_E_CERT_STORE_CORRUPTED = 0x80630801;

// The specified PNRP cloud deos not exist.
pub const PEER_E_NO_CLOUD = 0x80631001;

// The cloud name is ambiguous.
pub const PEER_E_CLOUD_NAME_AMBIGUOUS = 0x80631005;

// The record is invlaid.
pub const PEER_E_INVALID_RECORD = 0x80632010;

// Not authorized.
pub const PEER_E_NOT_AUTHORIZED = 0x80632020;

// The password does not meet policy requirements.
pub const PEER_E_PASSWORD_DOES_NOT_MEET_POLICY = 0x80632021;

// The record validation has been defered.
pub const PEER_E_DEFERRED_VALIDATION = 0x80632030;

// The group properies are invalid.
pub const PEER_E_INVALID_GROUP_PROPERTIES = 0x80632040;

// The peername is invalid.
pub const PEER_E_INVALID_PEER_NAME = 0x80632050;

// The classifier is invalid.
pub const PEER_E_INVALID_CLASSIFIER = 0x80632060;

// The friendly name is invalid.
pub const PEER_E_INVALID_FRIENDLY_NAME = 0x80632070;

// Invalid role property.
pub const PEER_E_INVALID_ROLE_PROPERTY = 0x80632071;

// Invalid classifer property.
pub const PEER_E_INVALID_CLASSIFIER_PROPERTY = 0x80632072;

// Invlaid record expiration.
pub const PEER_E_INVALID_RECORD_EXPIRATION = 0x80632080;

// Invlaid credential info.
pub const PEER_E_INVALID_CREDENTIAL_INFO = 0x80632081;

// Invalid credential.
pub const PEER_E_INVALID_CREDENTIAL = 0x80632082;

// Invalid record size.
pub const PEER_E_INVALID_RECORD_SIZE = 0x80632083;

// Unsupported version.
pub const PEER_E_UNSUPPORTED_VERSION = 0x80632090;

// The group is not ready.
pub const PEER_E_GROUP_NOT_READY = 0x80632091;

// The group is still in use.
pub const PEER_E_GROUP_IN_USE = 0x80632092;

// The group is invalid.
pub const PEER_E_INVALID_GROUP = 0x80632093;

// No members were found.
pub const PEER_E_NO_MEMBERS_FOUND = 0x80632094;

// There are no member connections.
pub const PEER_E_NO_MEMBER_CONNECTIONS = 0x80632095;

// Unable to listen.
pub const PEER_E_UNABLE_TO_LISTEN = 0x80632096;

// The identity does not exist.
pub const PEER_E_IDENTITY_DELETED = 0x806320A0;

// The service is not availible.
pub const PEER_E_SERVICE_NOT_AVAILABLE = 0x806320A1;

// THe contact could not be found.
pub const PEER_E_CONTACT_NOT_FOUND = 0x80636001;

// The graph data was created.
pub const PEER_S_GRAPH_DATA_CREATED = 0x00630001;

// There is not more event data.
pub const PEER_S_NO_EVENT_DATA = 0x00630002;

// The graph is already connect.
pub const PEER_S_ALREADY_CONNECTED = 0x00632000;

// The subscription already exists.
pub const PEER_S_SUBSCRIPTION_EXISTS = 0x00636000;

// No connectivity.
pub const PEER_S_NO_CONNECTIVITY = 0x00630005;

// Already a member.
pub const PEER_S_ALREADY_A_MEMBER = 0x00630006;

// The peername could not be converted to a DNS pnrp name.
pub const PEER_E_CANNOT_CONVERT_PEER_NAME = 0x80634001;

// Invalid peer host name.
pub const PEER_E_INVALID_PEER_HOST_NAME = 0x80634002;

// No more data could be found.
pub const PEER_E_NO_MORE = 0x80634003;

// The existing peer name is already registered.
pub const PEER_E_PNRP_DUPLICATE_PEER_NAME = 0x80634005;

// The app invite request was cancelled by the user.
pub const PEER_E_INVITE_CANCELLED = 0x80637000;

// No response of the invite was received.
pub const PEER_E_INVITE_RESPONSE_NOT_AVAILABLE = 0x80637001;

// User is not signed into serverless presence.
pub const PEER_E_NOT_SIGNED_IN = 0x80637003;

// The user declined the privacy policy prompt.
pub const PEER_E_PRIVACY_DECLINED = 0x80637004;

// A timeout occurred.
pub const PEER_E_TIMEOUT = 0x80637005;

// The address is invalid.
pub const PEER_E_INVALID_ADDRESS = 0x80637007;

// A required firewall exception is disabled.
pub const PEER_E_FW_EXCEPTION_DISABLED = 0x80637008;

// The service is blocked by a firewall policy.
pub const PEER_E_FW_BLOCKED_BY_POLICY = 0x80637009;

// Firewall exceptions are disabled.
pub const PEER_E_FW_BLOCKED_BY_SHIELDS_UP = 0x8063700A;

// The user declined to enable the firewall exceptions.
pub const PEER_E_FW_DECLINED = 0x8063700B;

// The object could not be created.
pub const UI_E_CREATE_FAILED = 0x802A0001;

// Shutdown was already called on this object or the object that owns it.
pub const UI_E_SHUTDOWN_CALLED = 0x802A0002;

// This method cannot be called during this type of callback.
pub const UI_E_ILLEGAL_REENTRANCY = 0x802A0003;

// This object has been sealed, so this change is no longer allowed.
pub const UI_E_OBJECT_SEALED = 0x802A0004;

// The requested value was never set.
pub const UI_E_VALUE_NOT_SET = 0x802A0005;

// The requested value cannot be determined.
pub const UI_E_VALUE_NOT_DETERMINED = 0x802A0006;

// A callback returned an invalid output parameter.
pub const UI_E_INVALID_OUTPUT = 0x802A0007;

// A callback returned a success code other than S_OK or S_FALSE.
pub const UI_E_BOOLEAN_EXPECTED = 0x802A0008;

// A parameter that should be owned by this object is owned by a different object.
pub const UI_E_DIFFERENT_OWNER = 0x802A0009;

// More than one item matched the search criteria.
pub const UI_E_AMBIGUOUS_MATCH = 0x802A000A;

// A floating-point overflow occurred.
pub const UI_E_FP_OVERFLOW = 0x802A000B;

// This method can only be called from the thread that created the object.
pub const UI_E_WRONG_THREAD = 0x802A000C;

// The storyboard is currently in the schedule.
pub const UI_E_STORYBOARD_ACTIVE = 0x802A0101;

// The storyboard is not playing.
pub const UI_E_STORYBOARD_NOT_PLAYING = 0x802A0102;

// The start keyframe might occur after the end keyframe.
pub const UI_E_START_KEYFRAME_AFTER_END = 0x802A0103;

// It might not be possible to determine the end keyframe time when the start keyframe is reached.
pub const UI_E_END_KEYFRAME_NOT_DETERMINED = 0x802A0104;

// Two repeated portions of a storyboard might overlap.
pub const UI_E_LOOPS_OVERLAP = 0x802A0105;

// The transition has already been added to a storyboard.
pub const UI_E_TRANSITION_ALREADY_USED = 0x802A0106;

// The transition has not been added to a storyboard.
pub const UI_E_TRANSITION_NOT_IN_STORYBOARD = 0x802A0107;

// The transition might eclipse the beginning of another transition in the storyboard.
pub const UI_E_TRANSITION_ECLIPSED = 0x802A0108;

// The given time is earlier than the time passed to the last update.
pub const UI_E_TIME_BEFORE_LAST_UPDATE = 0x802A0109;

// This client is already connected to a timer.
pub const UI_E_TIMER_CLIENT_ALREADY_CONNECTED = 0x802A010A;

// The passed dimension is invalid or does not match the object's dimension.
pub const UI_E_INVALID_DIMENSION = 0x802A010B;

// The added primitive begins at or beyond the duration of the interpolator.
pub const UI_E_PRIMITIVE_OUT_OF_BOUNDS = 0x802A010C;

// The operation cannot be completed because the window is being closed.
pub const UI_E_WINDOW_CLOSED = 0x802A0201;

// The attribute handle given was not valid on this server.
pub const E_BLUETOOTH_ATT_INVALID_HANDLE = 0x80650001;

// The attribute cannot be read.
pub const E_BLUETOOTH_ATT_READ_NOT_PERMITTED = 0x80650002;

// The attribute cannot be written.
pub const E_BLUETOOTH_ATT_WRITE_NOT_PERMITTED = 0x80650003;

// The attribute PDU was invalid.
pub const E_BLUETOOTH_ATT_INVALID_PDU = 0x80650004;

// The attribute requires authentication before it can be read or written.
pub const E_BLUETOOTH_ATT_INSUFFICIENT_AUTHENTICATION = 0x80650005;

// Attribute server does not support the request received from the client.
pub const E_BLUETOOTH_ATT_REQUEST_NOT_SUPPORTED = 0x80650006;

// Offset specified was past the end of the attribute.
pub const E_BLUETOOTH_ATT_INVALID_OFFSET = 0x80650007;

// The attribute requires authorization before it can be read or written.
pub const E_BLUETOOTH_ATT_INSUFFICIENT_AUTHORIZATION = 0x80650008;

// Too many prepare writes have been queued.
pub const E_BLUETOOTH_ATT_PREPARE_QUEUE_FULL = 0x80650009;

// No attribute found within the given attribute handle range.
pub const E_BLUETOOTH_ATT_ATTRIBUTE_NOT_FOUND = 0x8065000A;

// The attribute cannot be read or written using the Read Blob Request.
pub const E_BLUETOOTH_ATT_ATTRIBUTE_NOT_LONG = 0x8065000B;

// The Encryption Key Size used for encrypting this link is insufficient.
pub const E_BLUETOOTH_ATT_INSUFFICIENT_ENCRYPTION_KEY_SIZE = 0x8065000C;

// The attribute value length is invalid for the operation.
pub const E_BLUETOOTH_ATT_INVALID_ATTRIBUTE_VALUE_LENGTH = 0x8065000D;

// The attribute request that was requested has encountered an error that was unlikely, and therefore could not be completed as requested.
pub const E_BLUETOOTH_ATT_UNLIKELY = 0x8065000E;

// The attribute requires encryption before it can be read or written.
pub const E_BLUETOOTH_ATT_INSUFFICIENT_ENCRYPTION = 0x8065000F;

// The attribute type is not a supported grouping attribute as defined by a higher layer specification.
pub const E_BLUETOOTH_ATT_UNSUPPORTED_GROUP_TYPE = 0x80650010;

// Insufficient Resources to complete the request.
pub const E_BLUETOOTH_ATT_INSUFFICIENT_RESOURCES = 0x80650011;

// An error that lies in the reserved range has been received.
pub const E_BLUETOOTH_ATT_UNKNOWN_ERROR = 0x80651000;

// PortCls could not find an audio engine node exposed by a miniport driver claiming support for IMiniportAudioEngineNode.
pub const E_AUDIO_ENGINE_NODE_NOT_FOUND = 0x80660001;

// HD Audio widget encountered an unexpected empty connection list.
pub const E_HDAUDIO_EMPTY_CONNECTION_LIST = 0x80660002;

// HD Audio widget does not support the connection list parameter.
pub const E_HDAUDIO_CONNECTION_LIST_NOT_SUPPORTED = 0x80660003;

// No HD Audio subdevices were successfully created.
pub const E_HDAUDIO_NO_LOGICAL_DEVICES_CREATED = 0x80660004;

// An unexpected NULL pointer was encountered in a linked list.
pub const E_HDAUDIO_NULL_LINKED_LIST_ENTRY = 0x80660005;

// Optimistic locking failure. Data cannot be updated if it has changed since it was read.
pub const STATEREPOSITORY_E_CONCURRENCY_LOCKING_FAILURE = 0x80670001;

// A prepared statement has been stepped at least once but not run to completion or reset. This may result in busy waits.
pub const STATEREPOSITORY_E_STATEMENT_INPROGRESS = 0x80670002;

// The StateRepository configuration is not valid.
pub const STATEREPOSITORY_E_CONFIGURATION_INVALID = 0x80670003;

// The StateRepository schema version is not known.
pub const STATEREPOSITORY_E_UNKNOWN_SCHEMA_VERSION = 0x80670004;

// A StateRepository dictionary is not valid.
pub const STATEREPOSITORY_ERROR_DICTIONARY_CORRUPTED = 0x80670005;

// The request failed because the StateRepository is actively blocking requests.
pub const STATEREPOSITORY_E_BLOCKED = 0x80670006;

// The database file is locked. The request will be retried.
pub const STATEREPOSITORY_E_BUSY_RETRY = 0x80670007;

// The database file is locked because another process is busy recovering the database. The request will be retried.
pub const STATEREPOSITORY_E_BUSY_RECOVERY_RETRY = 0x80670008;

// A table in the database is locked. The request will be retried.
pub const STATEREPOSITORY_E_LOCKED_RETRY = 0x80670009;

// The shared cache for the database is locked by another connection. The request will be retried.
pub const STATEREPOSITORY_E_LOCKED_SHAREDCACHE_RETRY = 0x8067000A;

// A transaction is required to perform the request operation.
pub const STATEREPOSITORY_E_TRANSACTION_REQUIRED = 0x8067000B;

// The database file is locked. The request has exceeded the allowed threshold.
pub const STATEREPOSITORY_E_BUSY_TIMEOUT_EXCEEDED = 0x8067000C;

// The database file is locked because another process is busy recovering the database. The request has exceeded the allowed threshold.
pub const STATEREPOSITORY_E_BUSY_RECOVERY_TIMEOUT_EXCEEDED = 0x8067000D;

// A table in the database is locked. The request has exceeded the allowed threshold.
pub const STATEREPOSITORY_E_LOCKED_TIMEOUT_EXCEEDED = 0x8067000E;

// The shared cache for the database is locked by another connection. The request has exceeded the allowed threshold.
pub const STATEREPOSITORY_E_LOCKED_SHAREDCACHE_TIMEOUT_EXCEEDED = 0x8067000F;

// The StateRepository service Stop event is in progress.
pub const STATEREPOSITORY_E_SERVICE_STOP_IN_PROGRESS = 0x80670010;

// Nested transactions are not supported.
pub const STATEREPOSTORY_E_NESTED_TRANSACTION_NOT_SUPPORTED = 0x80670011;

// The storage pool was deleted by the driver. The object cache should be updated.
pub const ERROR_SPACES_POOL_WAS_DELETED = 0x00E70001;

// The specified fault domain type or combination of minimum / maximum fault domain type is not valid.
pub const ERROR_SPACES_FAULT_DOMAIN_TYPE_INVALID = 0x80E70001;

// A Storage Spaces internal error occurred.
pub const ERROR_SPACES_INTERNAL_ERROR = 0x80E70002;

// The specified resiliency type is not valid.
pub const ERROR_SPACES_RESILIENCY_TYPE_INVALID = 0x80E70003;

// The physical disk's sector size is not supported by the storage pool.
pub const ERROR_SPACES_DRIVE_SECTOR_SIZE_INVALID = 0x80E70004;

// The requested redundancy is outside of the supported range of values.
pub const ERROR_SPACES_DRIVE_REDUNDANCY_INVALID = 0x80E70006;

// The number of data copies requested is outside of the supported range of values.
pub const ERROR_SPACES_NUMBER_OF_DATA_COPIES_INVALID = 0x80E70007;

// The value for ParityLayout is outside of the supported range of values.
pub const ERROR_SPACES_PARITY_LAYOUT_INVALID = 0x80E70008;

// The value for interleave length is outside of the supported range of values or is not a power of 2.
pub const ERROR_SPACES_INTERLEAVE_LENGTH_INVALID = 0x80E70009;

// The number of columns specified is outside of the supported range of values.
pub const ERROR_SPACES_NUMBER_OF_COLUMNS_INVALID = 0x80E7000A;

// There were not enough physical disks to complete the requested operation.
pub const ERROR_SPACES_NOT_ENOUGH_DRIVES = 0x80E7000B;

// Extended error information is available.
pub const ERROR_SPACES_EXTENDED_ERROR = 0x80E7000C;

// The specified provisioning type is not valid.
pub const ERROR_SPACES_PROVISIONING_TYPE_INVALID = 0x80E7000D;

// The allocation size is outside of the supported range of values.
pub const ERROR_SPACES_ALLOCATION_SIZE_INVALID = 0x80E7000E;

// Enclosure awareness is not supported for this virtual disk.
pub const ERROR_SPACES_ENCLOSURE_AWARE_INVALID = 0x80E7000F;

// The write cache size is outside of the supported range of values.
pub const ERROR_SPACES_WRITE_CACHE_SIZE_INVALID = 0x80E70010;

// The value for number of groups is outside of the supported range of values.
pub const ERROR_SPACES_NUMBER_OF_GROUPS_INVALID = 0x80E70011;

// The OperationalState of the physical disk is invalid for this operation.
pub const ERROR_SPACES_DRIVE_OPERATIONAL_STATE_INVALID = 0x80E70012;

// The bootfile is too small to support persistent snapshots.
pub const ERROR_VOLSNAP_BOOTFILE_NOT_VALID = 0x80820001;

// Activation of persistent snapshots on this volume took longer than was allowed.
pub const ERROR_VOLSNAP_ACTIVATION_TIMEOUT = 0x80820002;

// The specified volume does not support storage tiers.
pub const ERROR_TIERING_NOT_SUPPORTED_ON_VOLUME = 0x80830001;

// The Storage Tiers Management service detected that the specified volume is in the process of being dismounted.
pub const ERROR_TIERING_VOLUME_DISMOUNT_IN_PROGRESS = 0x80830002;

// The specified storage tier could not be found on the volume. Confirm that the storage tier name is valid.
pub const ERROR_TIERING_STORAGE_TIER_NOT_FOUND = 0x80830003;

// The file identifier specified is not valid on the volume.
pub const ERROR_TIERING_INVALID_FILE_ID = 0x80830004;

// Storage tier operations must be called on the clustering node that owns the metadata volume.
pub const ERROR_TIERING_WRONG_CLUSTER_NODE = 0x80830005;

// The Storage Tiers Management service is already optimizing the storage tiers on the specified volume.
pub const ERROR_TIERING_ALREADY_PROCESSING = 0x80830006;

// The requested object type cannot be assigned to a storage tier.
pub const ERROR_TIERING_CANNOT_PIN_OBJECT = 0x80830007;

// The requested file is not pinned to a tier.
pub const ERROR_TIERING_FILE_IS_NOT_PINNED = 0x80830008;

// The volume is not a tiered volume.
pub const ERROR_NOT_A_TIERED_VOLUME = 0x80830009;

// The requested attribute is not present on the specified file or directory.
pub const ERROR_ATTRIBUTE_NOT_PRESENT = 0x8083000A;

// The command was not recognized by the security core
pub const ERROR_SECCORE_INVALID_COMMAND = 0xC0E80000;

// No applicable app licenses found.
pub const ERROR_NO_APPLICABLE_APP_LICENSES_FOUND = 0xC0EA0001;

// CLiP license not found.
pub const ERROR_CLIP_LICENSE_NOT_FOUND = 0xC0EA0002;

// CLiP device license not found.
pub const ERROR_CLIP_DEVICE_LICENSE_MISSING = 0xC0EA0003;

// CLiP license has an invalid signature.
pub const ERROR_CLIP_LICENSE_INVALID_SIGNATURE = 0xC0EA0004;

// CLiP keyholder license is invalid or missing.
pub const ERROR_CLIP_KEYHOLDER_LICENSE_MISSING_OR_INVALID = 0xC0EA0005;

// CLiP license has expired.
pub const ERROR_CLIP_LICENSE_EXPIRED = 0xC0EA0006;

// CLiP license is signed by an unknown source.
pub const ERROR_CLIP_LICENSE_SIGNED_BY_UNKNOWN_SOURCE = 0xC0EA0007;

// CLiP license is not signed.
pub const ERROR_CLIP_LICENSE_NOT_SIGNED = 0xC0EA0008;

// CLiP license hardware ID is out of tolerance.
pub const ERROR_CLIP_LICENSE_HARDWARE_ID_OUT_OF_TOLERANCE = 0xC0EA0009;

// CLiP license device ID does not match the device ID in the bound device license.
pub const ERROR_CLIP_LICENSE_DEVICE_ID_MISMATCH = 0xC0EA000A;

// The Present operation was invisible to the user.
pub const DXGI_STATUS_OCCLUDED = 0x087A0001;

// The Present operation was partially invisible to the user.
pub const DXGI_STATUS_CLIPPED = 0x087A0002;

// The driver is requesting that the DXGI runtime not use shared resources to communicate with the Desktop Window Manager.
pub const DXGI_STATUS_NO_REDIRECTION = 0x087A0004;

// The Present operation was not visible because the Windows session has switched to another desktop (for example, ctrl-alt-del).
pub const DXGI_STATUS_NO_DESKTOP_ACCESS = 0x087A0005;

// The Present operation was not visible because the target monitor was being used for some other purpose.
pub const DXGI_STATUS_GRAPHICS_VIDPN_SOURCE_IN_USE = 0x087A0006;

// The Present operation was not visible because the display mode changed. DXGI will have re-attempted the presentation.
pub const DXGI_STATUS_MODE_CHANGED = 0x087A0007;

// The Present operation was not visible because another Direct3D device was attempting to take fullscreen mode at the time.
pub const DXGI_STATUS_MODE_CHANGE_IN_PROGRESS = 0x087A0008;

// Enable the D3D debug layer in order to see details via debug messages.
pub const DXGI_ERROR_INVALID_CALL = 0x887A0001;

// The object was not found. If calling IDXGIFactory::EnumAdaptes, there is no adapter with the specified ordinal.
pub const DXGI_ERROR_NOT_FOUND = 0x887A0002;

// The caller did not supply a sufficiently large buffer.
pub const DXGI_ERROR_MORE_DATA = 0x887A0003;

// The specified device interface or feature level is not supported on this system.
pub const DXGI_ERROR_UNSUPPORTED = 0x887A0004;

// The GPU device instance has been suspended. Use GetDeviceRemovedReason to determine the appropriate action.
pub const DXGI_ERROR_DEVICE_REMOVED = 0x887A0005;

// The GPU will not respond to more commands, most likely because of an invalid command passed by the calling application.
pub const DXGI_ERROR_DEVICE_HUNG = 0x887A0006;

// The calling application should re-create the device and continue.
pub const DXGI_ERROR_DEVICE_RESET = 0x887A0007;

// The GPU was busy at the moment when the call was made, and the call was neither executed nor scheduled.
pub const DXGI_ERROR_WAS_STILL_DRAWING = 0x887A000A;

// considered invalid.
pub const DXGI_ERROR_FRAME_STATISTICS_DISJOINT = 0x887A000B;

// Fullscreen mode could not be achieved because the specified output was already in use.
pub const DXGI_ERROR_GRAPHICS_VIDPN_SOURCE_IN_USE = 0x887A000C;

// and the application should not continue.
pub const DXGI_ERROR_DRIVER_INTERNAL_ERROR = 0x887A0020;

// A global counter resource was in use, and the specified counter cannot be used by this Direct3D device at this time.
pub const DXGI_ERROR_NONEXCLUSIVE = 0x887A0021;

// A resource is not available at the time of the call, but may become available later.
pub const DXGI_ERROR_NOT_CURRENTLY_AVAILABLE = 0x887A0022;

// The application should call IDXGIFactory1::IsCurrent to find out when the remote device becomes available again.
pub const DXGI_ERROR_REMOTE_CLIENT_DISCONNECTED = 0x887A0023;

// The device has been removed during a remote session because the remote computer ran out of memory.
pub const DXGI_ERROR_REMOTE_OUTOFMEMORY = 0x887A0024;

// The keyed mutex was abandoned.
pub const DXGI_ERROR_ACCESS_LOST = 0x887A0026;

// The timeout value has elapsed and the resource is not yet available.
pub const DXGI_ERROR_WAIT_TIMEOUT = 0x887A0027;

// This happens when a remote user disconnects, or when "switch user" is used locally.
pub const DXGI_ERROR_SESSION_DISCONNECTED = 0x887A0028;

// The DXGI outuput (monitor) to which the swapchain content was restricted, has been disconnected or changed.
pub const DXGI_ERROR_RESTRICT_TO_OUTPUT_STALE = 0x887A0029;

// or by the application using a swapchain that is incompatible with content protection.
pub const DXGI_ERROR_CANNOT_PROTECT_CONTENT = 0x887A002A;

// This is most commonly caused by writing to a shared resource with read-only access.
pub const DXGI_ERROR_ACCESS_DENIED = 0x887A002B;

// The application is trying to create a shared handle using a name that is already associated with some other resource.
pub const DXGI_ERROR_NAME_ALREADY_EXISTS = 0x887A002C;

// The application requested an operation that depends on an SDK component that is missing or mismatched.
pub const DXGI_ERROR_SDK_COMPONENT_MISSING = 0x887A002D;

// The DXGI objects that the application has created are no longer current & need to be recreated for this operation to be performed.
pub const DXGI_ERROR_NOT_CURRENT = 0x887A002E;

// Insufficient HW protected memory exits for proper function.
pub const DXGI_ERROR_HW_PROTECTION_OUTOFMEMORY = 0x887A0030;

// Creating this device would violate the process's dynamic code policy.
pub const DXGI_ERROR_DYNAMIC_CODE_POLICY_VIOLATION = 0x887A0031;

// The operation failed because the compositor is not in control of the output.
pub const DXGI_ERROR_NON_COMPOSITED_UI = 0x887A0032;

// The swapchain has become unoccluded.
pub const DXGI_STATUS_UNOCCLUDED = 0x087A0009;

// The adapter did not have access to the required resources to complete the Desktop Duplication Present() call, the Present() call needs to be made again
pub const DXGI_STATUS_DDA_WAS_STILL_DRAWING = 0x087A000A;

// An on-going mode change prevented completion of the call. The call may succeed if attempted later.
pub const DXGI_ERROR_MODE_CHANGE_IN_PROGRESS = 0x887A0025;

// The present succeeded but the caller should present again on the next V-sync, even if there are no changes to the content.
pub const DXGI_STATUS_PRESENT_REQUIRED = 0x087A002F;

// The cache is corrupt and either could not be opened or could not be reset.
pub const DXGI_ERROR_CACHE_CORRUPT = 0x887A0033;

// This entry would cause the cache to exceed its quota. On a load operation, this may indicate exceeding the maximum in-memory size.
pub const DXGI_ERROR_CACHE_FULL = 0x887A0034;

// A cache entry was found, but the key provided does not match the key stored in the entry.
pub const DXGI_ERROR_CACHE_HASH_COLLISION = 0x887A0035;

// The desired element already exists.
pub const DXGI_ERROR_ALREADY_EXISTS = 0x887A0036;

// The GPU was busy when the operation was requested.
pub const DXGI_DDI_ERR_WASSTILLDRAWING = 0x887B0001;

// The driver has rejected the creation of this resource.
pub const DXGI_DDI_ERR_UNSUPPORTED = 0x887B0002;

// The GPU counter was in use by another process or d3d device when application requested access to it.
pub const DXGI_DDI_ERR_NONEXCLUSIVE = 0x887B0003;

// The limit is 4096 for feature levels up to 11.1.
pub const D3D10_ERROR_TOO_MANY_UNIQUE_STATE_OBJECTS = 0x88790001;

// The specified file was not found.
pub const D3D10_ERROR_FILE_NOT_FOUND = 0x88790002;

// The limit is 4096 for feature levels up to 11.1.
pub const D3D11_ERROR_TOO_MANY_UNIQUE_STATE_OBJECTS = 0x887C0001;

// The specified file was not found.
pub const D3D11_ERROR_FILE_NOT_FOUND = 0x887C0002;

// The limit is 2^20 for feature levels up to 11.1.
pub const D3D11_ERROR_TOO_MANY_UNIQUE_VIEW_OBJECTS = 0x887C0003;

// The application's first call per command list to Map on a deferred context did not use D3D11_MAP_WRITE_DISCARD.
pub const D3D11_ERROR_DEFERRED_CONTEXT_MAP_WITHOUT_INITIAL_DISCARD = 0x887C0004;

// The blob provided does not match the adapter that the device was created on.
pub const D3D12_ERROR_ADAPTER_NOT_FOUND = 0x887E0001;

// The blob provided was created for a different version of the driver, and must be re-created.
pub const D3D12_ERROR_DRIVER_VERSION_MISMATCH = 0x887E0002;

// The object was not in the correct state to process the method.
pub const D2DERR_WRONG_STATE = 0x88990001;

// The object has not yet been initialized.
pub const D2DERR_NOT_INITIALIZED = 0x88990002;

// The requested operation is not supported.
pub const D2DERR_UNSUPPORTED_OPERATION = 0x88990003;

// The geometry scanner failed to process the data.
pub const D2DERR_SCANNER_FAILED = 0x88990004;

// Direct2D could not access the screen.
pub const D2DERR_SCREEN_ACCESS_DENIED = 0x88990005;

// A valid display state could not be determined.
pub const D2DERR_DISPLAY_STATE_INVALID = 0x88990006;

// The supplied vector is zero.
pub const D2DERR_ZERO_VECTOR = 0x88990007;

// An internal error (Direct2D bug) occurred. On checked builds, we would assert. The application should close this instance of Direct2D and should consider restarting its process.
pub const D2DERR_INTERNAL_ERROR = 0x88990008;

// The display format Direct2D needs to render is not supported by the hardware device.
pub const D2DERR_DISPLAY_FORMAT_NOT_SUPPORTED = 0x88990009;

// A call to this method is invalid.
pub const D2DERR_INVALID_CALL = 0x8899000A;

// No hardware rendering device is available for this operation.
pub const D2DERR_NO_HARDWARE_DEVICE = 0x8899000B;

// There has been a presentation error that may be recoverable. The caller needs to recreate, rerender the entire frame, and reattempt present.
pub const D2DERR_RECREATE_TARGET = 0x8899000C;

// Shader construction failed because it was too complex.
pub const D2DERR_TOO_MANY_SHADER_ELEMENTS = 0x8899000D;

// Shader compilation failed.
pub const D2DERR_SHADER_COMPILE_FAILED = 0x8899000E;

// Requested DirectX surface size exceeded maximum texture size.
pub const D2DERR_MAX_TEXTURE_SIZE_EXCEEDED = 0x8899000F;

// The requested Direct2D version is not supported.
pub const D2DERR_UNSUPPORTED_VERSION = 0x88990010;

// Invalid number.
pub const D2DERR_BAD_NUMBER = 0x88990011;

// Objects used together must be created from the same factory instance.
pub const D2DERR_WRONG_FACTORY = 0x88990012;

// A layer resource can only be in use once at any point in time.
pub const D2DERR_LAYER_ALREADY_IN_USE = 0x88990013;

// The pop call did not match the corresponding push call.
pub const D2DERR_POP_CALL_DID_NOT_MATCH_PUSH = 0x88990014;

// The resource was realized on the wrong render target.
pub const D2DERR_WRONG_RESOURCE_DOMAIN = 0x88990015;

// The push and pop calls were unbalanced.
pub const D2DERR_PUSH_POP_UNBALANCED = 0x88990016;

// Attempt to copy from a render target while a layer or clip rect is applied.
pub const D2DERR_RENDER_TARGET_HAS_LAYER_OR_CLIPRECT = 0x88990017;

// The brush types are incompatible for the call.
pub const D2DERR_INCOMPATIBLE_BRUSH_TYPES = 0x88990018;

// An unknown win32 failure occurred.
pub const D2DERR_WIN32_ERROR = 0x88990019;

// The render target is not compatible with GDI.
pub const D2DERR_TARGET_NOT_GDI_COMPATIBLE = 0x8899001A;

// A text client drawing effect object is of the wrong type.
pub const D2DERR_TEXT_EFFECT_IS_WRONG_TYPE = 0x8899001B;

// The application is holding a reference to the IDWriteTextRenderer interface after the corresponding DrawText or DrawTextLayout call has returned. The IDWriteTextRenderer instance will be invalid.
pub const D2DERR_TEXT_RENDERER_NOT_RELEASED = 0x8899001C;

// The requested size is larger than the guaranteed supported texture size at the Direct3D device's current feature level.
pub const D2DERR_EXCEEDS_MAX_BITMAP_SIZE = 0x8899001D;

// There was a configuration error in the graph.
pub const D2DERR_INVALID_GRAPH_CONFIGURATION = 0x8899001E;

// There was a internal configuration error in the graph.
pub const D2DERR_INVALID_INTERNAL_GRAPH_CONFIGURATION = 0x8899001F;

// There was a cycle in the graph.
pub const D2DERR_CYCLIC_GRAPH = 0x88990020;

// Cannot draw with a bitmap that has the D2D1_BITMAP_OPTIONS_CANNOT_DRAW option.
pub const D2DERR_BITMAP_CANNOT_DRAW = 0x88990021;

// The operation cannot complete while there are outstanding references to the target bitmap.
pub const D2DERR_OUTSTANDING_BITMAP_REFERENCES = 0x88990022;

// The operation failed because the original target is not currently bound as a target.
pub const D2DERR_ORIGINAL_TARGET_NOT_BOUND = 0x88990023;

// Cannot set the image as a target because it is either an effect or is a bitmap that does not have the D2D1_BITMAP_OPTIONS_TARGET flag set.
pub const D2DERR_INVALID_TARGET = 0x88990024;

// Cannot draw with a bitmap that is currently bound as the target bitmap.
pub const D2DERR_BITMAP_BOUND_AS_TARGET = 0x88990025;

// D3D Device does not have sufficient capabilities to perform the requested action.
pub const D2DERR_INSUFFICIENT_DEVICE_CAPABILITIES = 0x88990026;

// The graph could not be rendered with the context's current tiling settings.
pub const D2DERR_INTERMEDIATE_TOO_LARGE = 0x88990027;

// The CLSID provided to Unregister did not correspond to a registered effect.
pub const D2DERR_EFFECT_IS_NOT_REGISTERED = 0x88990028;

// The specified property does not exist.
pub const D2DERR_INVALID_PROPERTY = 0x88990029;

// The specified sub-property does not exist.
pub const D2DERR_NO_SUBPROPERTIES = 0x8899002A;

// AddPage or Close called after print job is already closed.
pub const D2DERR_PRINT_JOB_CLOSED = 0x8899002B;

// Error during print control creation. Indicates that none of the package target types (representing printer formats) are supported by Direct2D print control.
pub const D2DERR_PRINT_FORMAT_NOT_SUPPORTED = 0x8899002C;

// An effect attempted to use a transform with too many inputs.
pub const D2DERR_TOO_MANY_TRANSFORM_INPUTS = 0x8899002D;

// An error was encountered while decoding or parsing the requested glyph image.
pub const D2DERR_INVALID_GLYPH_IMAGE = 0x8899002E;

// Indicates an error in an input file such as a font file.
pub const DWRITE_E_FILEFORMAT = 0x88985000;

// Indicates an error originating in DirectWrite code, which is not expected to occur but is safe to recover from.
pub const DWRITE_E_UNEXPECTED = 0x88985001;

// Indicates the specified font does not exist.
pub const DWRITE_E_NOFONT = 0x88985002;

// A font file could not be opened because the file, directory, network location, drive, or other storage location does not exist or is unavailable.
pub const DWRITE_E_FILENOTFOUND = 0x88985003;

// A font file exists but could not be opened due to access denied, sharing violation, or similar error.
pub const DWRITE_E_FILEACCESS = 0x88985004;

// A font collection is obsolete due to changes in the system.
pub const DWRITE_E_FONTCOLLECTIONOBSOLETE = 0x88985005;

// The given interface is already registered.
pub const DWRITE_E_ALREADYREGISTERED = 0x88985006;

// The font cache contains invalid data.
pub const DWRITE_E_CACHEFORMAT = 0x88985007;

// A font cache file corresponds to a different version of DirectWrite.
pub const DWRITE_E_CACHEVERSION = 0x88985008;

// The operation is not supported for this type of font.
pub const DWRITE_E_UNSUPPORTEDOPERATION = 0x88985009;

// The version of the text renderer interface is not compatible.
pub const DWRITE_E_TEXTRENDERERINCOMPATIBLE = 0x8898500A;

// The flow direction conflicts with the reading direction. They must be perpendicular to each other.
pub const DWRITE_E_FLOWDIRECTIONCONFLICTS = 0x8898500B;

// The font or glyph run does not contain any colored glyphs.
pub const DWRITE_E_NOCOLOR = 0x8898500C;

// A font resource could not be accessed because it is remote.
pub const DWRITE_E_REMOTEFONT = 0x8898500D;

// A font download was canceled.
pub const DWRITE_E_DOWNLOADCANCELLED = 0x8898500E;

// A font download failed.
pub const DWRITE_E_DOWNLOADFAILED = 0x8898500F;

// A font download request was not added or a download failed because there are too many active downloads.
pub const DWRITE_E_TOOMANYDOWNLOADS = 0x88985010;

// The codec is in the wrong state.
pub const WINCODEC_ERR_WRONGSTATE = 0x88982F04;

// The value is out of range.
pub const WINCODEC_ERR_VALUEOUTOFRANGE = 0x88982F05;

// The image format is unknown.
pub const WINCODEC_ERR_UNKNOWNIMAGEFORMAT = 0x88982F07;

// The SDK version is unsupported.
pub const WINCODEC_ERR_UNSUPPORTEDVERSION = 0x88982F0B;

// The component is not initialized.
pub const WINCODEC_ERR_NOTINITIALIZED = 0x88982F0C;

// There is already an outstanding read or write lock.
pub const WINCODEC_ERR_ALREADYLOCKED = 0x88982F0D;

// The specified bitmap property cannot be found.
pub const WINCODEC_ERR_PROPERTYNOTFOUND = 0x88982F40;

// The bitmap codec does not support the bitmap property.
pub const WINCODEC_ERR_PROPERTYNOTSUPPORTED = 0x88982F41;

// The bitmap property size is invalid.
pub const WINCODEC_ERR_PROPERTYSIZE = 0x88982F42;

// An unknown error has occurred.
pub const WINCODEC_ERR_CODECPRESENT = 0x88982F43;

// The bitmap codec does not support a thumbnail.
pub const WINCODEC_ERR_CODECNOTHUMBNAIL = 0x88982F44;

// The bitmap palette is unavailable.
pub const WINCODEC_ERR_PALETTEUNAVAILABLE = 0x88982F45;

// Too many scanlines were requested.
pub const WINCODEC_ERR_CODECTOOMANYSCANLINES = 0x88982F46;

// An internal error occurred.
pub const WINCODEC_ERR_INTERNALERROR = 0x88982F48;

// The bitmap bounds do not match the bitmap dimensions.
pub const WINCODEC_ERR_SOURCERECTDOESNOTMATCHDIMENSIONS = 0x88982F49;

// The component cannot be found.
pub const WINCODEC_ERR_COMPONENTNOTFOUND = 0x88982F50;

// The bitmap size is outside the valid range.
pub const WINCODEC_ERR_IMAGESIZEOUTOFRANGE = 0x88982F51;

// There is too much metadata to be written to the bitmap.
pub const WINCODEC_ERR_TOOMUCHMETADATA = 0x88982F52;

// The image is unrecognized.
pub const WINCODEC_ERR_BADIMAGE = 0x88982F60;

// The image header is unrecognized.
pub const WINCODEC_ERR_BADHEADER = 0x88982F61;

// The bitmap frame is missing.
pub const WINCODEC_ERR_FRAMEMISSING = 0x88982F62;

// The image metadata header is unrecognized.
pub const WINCODEC_ERR_BADMETADATAHEADER = 0x88982F63;

// The stream data is unrecognized.
pub const WINCODEC_ERR_BADSTREAMDATA = 0x88982F70;

// Failed to write to the stream.
pub const WINCODEC_ERR_STREAMWRITE = 0x88982F71;

// Failed to read from the stream.
pub const WINCODEC_ERR_STREAMREAD = 0x88982F72;

// The stream is not available.
pub const WINCODEC_ERR_STREAMNOTAVAILABLE = 0x88982F73;

// The bitmap pixel format is unsupported.
pub const WINCODEC_ERR_UNSUPPORTEDPIXELFORMAT = 0x88982F80;

// The operation is unsupported.
pub const WINCODEC_ERR_UNSUPPORTEDOPERATION = 0x88982F81;

// The component registration is invalid.
pub const WINCODEC_ERR_INVALIDREGISTRATION = 0x88982F8A;

// The component initialization has failed.
pub const WINCODEC_ERR_COMPONENTINITIALIZEFAILURE = 0x88982F8B;

// The buffer allocated is insufficient.
pub const WINCODEC_ERR_INSUFFICIENTBUFFER = 0x88982F8C;

// Duplicate metadata is present.
pub const WINCODEC_ERR_DUPLICATEMETADATAPRESENT = 0x88982F8D;

// The bitmap property type is unexpected.
pub const WINCODEC_ERR_PROPERTYUNEXPECTEDTYPE = 0x88982F8E;

// The size is unexpected.
pub const WINCODEC_ERR_UNEXPECTEDSIZE = 0x88982F8F;

// The property query is invalid.
pub const WINCODEC_ERR_INVALIDQUERYREQUEST = 0x88982F90;

// The metadata type is unexpected.
pub const WINCODEC_ERR_UNEXPECTEDMETADATATYPE = 0x88982F91;

// The specified bitmap property is only valid at root level.
pub const WINCODEC_ERR_REQUESTONLYVALIDATMETADATAROOT = 0x88982F92;

// The query string contains an invalid character.
pub const WINCODEC_ERR_INVALIDQUERYCHARACTER = 0x88982F93;

// Windows Codecs received an error from the Win32 system.
pub const WINCODEC_ERR_WIN32ERROR = 0x88982F94;

// The requested level of detail is not present.
pub const WINCODEC_ERR_INVALIDPROGRESSIVELEVEL = 0x88982F95;

// The scan index is invalid.
pub const WINCODEC_ERR_INVALIDJPEGSCANINDEX = 0x88982F96;

// MILERR_OBJECTBUSY
pub const MILERR_OBJECTBUSY = 0x88980001;

// MILERR_INSUFFICIENTBUFFER
pub const MILERR_INSUFFICIENTBUFFER = 0x88980002;

// MILERR_WIN32ERROR
pub const MILERR_WIN32ERROR = 0x88980003;

// MILERR_SCANNER_FAILED
pub const MILERR_SCANNER_FAILED = 0x88980004;

// MILERR_SCREENACCESSDENIED
pub const MILERR_SCREENACCESSDENIED = 0x88980005;

// MILERR_DISPLAYSTATEINVALID
pub const MILERR_DISPLAYSTATEINVALID = 0x88980006;

// MILERR_NONINVERTIBLEMATRIX
pub const MILERR_NONINVERTIBLEMATRIX = 0x88980007;

// MILERR_ZEROVECTOR
pub const MILERR_ZEROVECTOR = 0x88980008;

// MILERR_TERMINATED
pub const MILERR_TERMINATED = 0x88980009;

// MILERR_BADNUMBER
pub const MILERR_BADNUMBER = 0x8898000A;

// An internal error (MIL bug) occurred. On checked builds, an assert would be raised.
pub const MILERR_INTERNALERROR = 0x88980080;

// The display format we need to render is not supported by the hardware device.
pub const MILERR_DISPLAYFORMATNOTSUPPORTED = 0x88980084;

// A call to this method is invalid.
pub const MILERR_INVALIDCALL = 0x88980085;

// Lock attempted on an already locked object.
pub const MILERR_ALREADYLOCKED = 0x88980086;

// Unlock attempted on an unlocked object.
pub const MILERR_NOTLOCKED = 0x88980087;

// No algorithm avaliable to render text with this device
pub const MILERR_DEVICECANNOTRENDERTEXT = 0x88980088;

// Some glyph bitmaps, required for glyph run rendering, are not contained in glyph cache.
pub const MILERR_GLYPHBITMAPMISSED = 0x88980089;

// Some glyph bitmaps in glyph cache are unexpectedly big.
pub const MILERR_MALFORMEDGLYPHCACHE = 0x8898008A;

// Marker error for known Win32 errors that are currently being ignored by the compositor. This is to avoid returning S_OK when an error has occurred, but still unwind the stack in the correct location.
pub const MILERR_GENERIC_IGNORE = 0x8898008B;

// Guideline coordinates are not sorted properly or contain NaNs.
pub const MILERR_MALFORMED_GUIDELINE_DATA = 0x8898008C;

// No HW rendering device is available for this operation.
pub const MILERR_NO_HARDWARE_DEVICE = 0x8898008D;

// There are two known case for this: 1) D3D Driver Internal error 2) D3D E_FAIL 2a) Unknown root cause b) When resizing too quickly for DWM and D3D stay in sync
pub const MILERR_NEED_RECREATE_AND_PRESENT = 0x8898008E;

// The object has already been initialized.
pub const MILERR_ALREADY_INITIALIZED = 0x8898008F;

// The size of the object does not match the expected size.
pub const MILERR_MISMATCHED_SIZE = 0x88980090;

// No Redirection surface available.
pub const MILERR_NO_REDIRECTION_SURFACE_AVAILABLE = 0x88980091;

// Remoting of this content is not supported.
pub const MILERR_REMOTING_NOT_SUPPORTED = 0x88980092;

// Queued Presents are not supported.
pub const MILERR_QUEUED_PRESENT_NOT_SUPPORTED = 0x88980093;

// Queued Presents are not being used.
pub const MILERR_NOT_QUEUING_PRESENTS = 0x88980094;

// No redirection surface was available. Caller should retry the call.
pub const MILERR_NO_REDIRECTION_SURFACE_RETRY_LATER = 0x88980095;

// Shader construction failed because it was too complex.
pub const MILERR_TOOMANYSHADERELEMNTS = 0x88980096;

// MROW attempt to get a read lock failed.
pub const MILERR_MROW_READLOCK_FAILED = 0x88980097;

// MROW attempt to update the data failed because another update was outstanding.
pub const MILERR_MROW_UPDATE_FAILED = 0x88980098;

// Shader compilation failed.
pub const MILERR_SHADER_COMPILE_FAILED = 0x88980099;

// Requested DX redirection surface size exceeded maximum texture size.
pub const MILERR_MAX_TEXTURE_SIZE_EXCEEDED = 0x8898009A;

// QueryPerformanceCounter returned a time in the past.
pub const MILERR_QPC_TIME_WENT_BACKWARD = 0x8898009B;

// Primary Display device returned an invalid refresh rate.
pub const MILERR_DXGI_ENUMERATION_OUT_OF_SYNC = 0x8898009D;

// DWM can not find the adapter specified by the LUID.
pub const MILERR_ADAPTER_NOT_FOUND = 0x8898009E;

// The requested bitmap color space is not supported.
pub const MILERR_COLORSPACE_NOT_SUPPORTED = 0x8898009F;

// The requested bitmap pre-filtering state is not supported.
pub const MILERR_PREFILTER_NOT_SUPPORTED = 0x889800A0;

// Access is denied to the requested bitmap for the specified display id.
pub const MILERR_DISPLAYID_ACCESS_DENIED = 0x889800A1;

// UCEERR_INVALIDPACKETHEADER
pub const UCEERR_INVALIDPACKETHEADER = 0x88980400;

// UCEERR_UNKNOWNPACKET
pub const UCEERR_UNKNOWNPACKET = 0x88980401;

// UCEERR_ILLEGALPACKET
pub const UCEERR_ILLEGALPACKET = 0x88980402;

// UCEERR_MALFORMEDPACKET
pub const UCEERR_MALFORMEDPACKET = 0x88980403;

// UCEERR_ILLEGALHANDLE
pub const UCEERR_ILLEGALHANDLE = 0x88980404;

// UCEERR_HANDLELOOKUPFAILED
pub const UCEERR_HANDLELOOKUPFAILED = 0x88980405;

// UCEERR_RENDERTHREADFAILURE
pub const UCEERR_RENDERTHREADFAILURE = 0x88980406;

// UCEERR_CTXSTACKFRSTTARGETNULL
pub const UCEERR_CTXSTACKFRSTTARGETNULL = 0x88980407;

// UCEERR_CONNECTIONIDLOOKUPFAILED
pub const UCEERR_CONNECTIONIDLOOKUPFAILED = 0x88980408;

// UCEERR_BLOCKSFULL
pub const UCEERR_BLOCKSFULL = 0x88980409;

// UCEERR_MEMORYFAILURE
pub const UCEERR_MEMORYFAILURE = 0x8898040A;

// UCEERR_PACKETRECORDOUTOFRANGE
pub const UCEERR_PACKETRECORDOUTOFRANGE = 0x8898040B;

// UCEERR_ILLEGALRECORDTYPE
pub const UCEERR_ILLEGALRECORDTYPE = 0x8898040C;

// UCEERR_OUTOFHANDLES
pub const UCEERR_OUTOFHANDLES = 0x8898040D;

// UCEERR_UNCHANGABLE_UPDATE_ATTEMPTED
pub const UCEERR_UNCHANGABLE_UPDATE_ATTEMPTED = 0x8898040E;

// UCEERR_NO_MULTIPLE_WORKER_THREADS
pub const UCEERR_NO_MULTIPLE_WORKER_THREADS = 0x8898040F;

// UCEERR_REMOTINGNOTSUPPORTED
pub const UCEERR_REMOTINGNOTSUPPORTED = 0x88980410;

// UCEERR_MISSINGENDCOMMAND
pub const UCEERR_MISSINGENDCOMMAND = 0x88980411;

// UCEERR_MISSINGBEGINCOMMAND
pub const UCEERR_MISSINGBEGINCOMMAND = 0x88980412;

// UCEERR_CHANNELSYNCTIMEDOUT
pub const UCEERR_CHANNELSYNCTIMEDOUT = 0x88980413;

// UCEERR_CHANNELSYNCABANDONED
pub const UCEERR_CHANNELSYNCABANDONED = 0x88980414;

// UCEERR_UNSUPPORTEDTRANSPORTVERSION
pub const UCEERR_UNSUPPORTEDTRANSPORTVERSION = 0x88980415;

// UCEERR_TRANSPORTUNAVAILABLE
pub const UCEERR_TRANSPORTUNAVAILABLE = 0x88980416;

// UCEERR_FEEDBACK_UNSUPPORTED
pub const UCEERR_FEEDBACK_UNSUPPORTED = 0x88980417;

// UCEERR_COMMANDTRANSPORTDENIED
pub const UCEERR_COMMANDTRANSPORTDENIED = 0x88980418;

// UCEERR_GRAPHICSSTREAMUNAVAILABLE
pub const UCEERR_GRAPHICSSTREAMUNAVAILABLE = 0x88980419;

// UCEERR_GRAPHICSSTREAMALREADYOPEN
pub const UCEERR_GRAPHICSSTREAMALREADYOPEN = 0x88980420;

// UCEERR_TRANSPORTDISCONNECTED
pub const UCEERR_TRANSPORTDISCONNECTED = 0x88980421;

// UCEERR_TRANSPORTOVERLOADED
pub const UCEERR_TRANSPORTOVERLOADED = 0x88980422;

// UCEERR_PARTITION_ZOMBIED
pub const UCEERR_PARTITION_ZOMBIED = 0x88980423;

// MILAVERR_NOCLOCK
pub const MILAVERR_NOCLOCK = 0x88980500;

// MILAVERR_NOMEDIATYPE
pub const MILAVERR_NOMEDIATYPE = 0x88980501;

// MILAVERR_NOVIDEOMIXER
pub const MILAVERR_NOVIDEOMIXER = 0x88980502;

// MILAVERR_NOVIDEOPRESENTER
pub const MILAVERR_NOVIDEOPRESENTER = 0x88980503;

// MILAVERR_NOREADYFRAMES
pub const MILAVERR_NOREADYFRAMES = 0x88980504;

// MILAVERR_MODULENOTLOADED
pub const MILAVERR_MODULENOTLOADED = 0x88980505;

// MILAVERR_WMPFACTORYNOTREGISTERED
pub const MILAVERR_WMPFACTORYNOTREGISTERED = 0x88980506;

// MILAVERR_INVALIDWMPVERSION
pub const MILAVERR_INVALIDWMPVERSION = 0x88980507;

// MILAVERR_INSUFFICIENTVIDEORESOURCES
pub const MILAVERR_INSUFFICIENTVIDEORESOURCES = 0x88980508;

// MILAVERR_VIDEOACCELERATIONNOTAVAILABLE
pub const MILAVERR_VIDEOACCELERATIONNOTAVAILABLE = 0x88980509;

// MILAVERR_REQUESTEDTEXTURETOOBIG
pub const MILAVERR_REQUESTEDTEXTURETOOBIG = 0x8898050A;

// MILAVERR_SEEKFAILED
pub const MILAVERR_SEEKFAILED = 0x8898050B;

// MILAVERR_UNEXPECTEDWMPFAILURE
pub const MILAVERR_UNEXPECTEDWMPFAILURE = 0x8898050C;

// MILAVERR_MEDIAPLAYERCLOSED
pub const MILAVERR_MEDIAPLAYERCLOSED = 0x8898050D;

// MILAVERR_UNKNOWNHARDWAREERROR
pub const MILAVERR_UNKNOWNHARDWAREERROR = 0x8898050E;

// MILEFFECTSERR_UNKNOWNPROPERTY
pub const MILEFFECTSERR_UNKNOWNPROPERTY = 0x8898060E;

// MILEFFECTSERR_EFFECTNOTPARTOFGROUP
pub const MILEFFECTSERR_EFFECTNOTPARTOFGROUP = 0x8898060F;

// MILEFFECTSERR_NOINPUTSOURCEATTACHED
pub const MILEFFECTSERR_NOINPUTSOURCEATTACHED = 0x88980610;

// MILEFFECTSERR_CONNECTORNOTCONNECTED
pub const MILEFFECTSERR_CONNECTORNOTCONNECTED = 0x88980611;

// MILEFFECTSERR_CONNECTORNOTASSOCIATEDWITHEFFECT
pub const MILEFFECTSERR_CONNECTORNOTASSOCIATEDWITHEFFECT = 0x88980612;

// MILEFFECTSERR_RESERVED
pub const MILEFFECTSERR_RESERVED = 0x88980613;

// MILEFFECTSERR_CYCLEDETECTED
pub const MILEFFECTSERR_CYCLEDETECTED = 0x88980614;

// MILEFFECTSERR_EFFECTINMORETHANONEGRAPH
pub const MILEFFECTSERR_EFFECTINMORETHANONEGRAPH = 0x88980615;

// MILEFFECTSERR_EFFECTALREADYINAGRAPH
pub const MILEFFECTSERR_EFFECTALREADYINAGRAPH = 0x88980616;

// MILEFFECTSERR_EFFECTHASNOCHILDREN
pub const MILEFFECTSERR_EFFECTHASNOCHILDREN = 0x88980617;

// MILEFFECTSERR_ALREADYATTACHEDTOLISTENER
pub const MILEFFECTSERR_ALREADYATTACHEDTOLISTENER = 0x88980618;

// MILEFFECTSERR_NOTAFFINETRANSFORM
pub const MILEFFECTSERR_NOTAFFINETRANSFORM = 0x88980619;

// MILEFFECTSERR_EMPTYBOUNDS
pub const MILEFFECTSERR_EMPTYBOUNDS = 0x8898061A;

// MILEFFECTSERR_OUTPUTSIZETOOLARGE
pub const MILEFFECTSERR_OUTPUTSIZETOOLARGE = 0x8898061B;

// DWMERR_STATE_TRANSITION_FAILED
pub const DWMERR_STATE_TRANSITION_FAILED = 0x88980700;

// DWMERR_THEME_FAILED
pub const DWMERR_THEME_FAILED = 0x88980701;

// DWMERR_CATASTROPHIC_FAILURE
pub const DWMERR_CATASTROPHIC_FAILURE = 0x88980702;

// DCOMPOSITION_ERROR_WINDOW_ALREADY_COMPOSED
pub const DCOMPOSITION_ERROR_WINDOW_ALREADY_COMPOSED = 0x88980800;

// DCOMPOSITION_ERROR_SURFACE_BEING_RENDERED
pub const DCOMPOSITION_ERROR_SURFACE_BEING_RENDERED = 0x88980801;

// DCOMPOSITION_ERROR_SURFACE_NOT_BEING_RENDERED
pub const DCOMPOSITION_ERROR_SURFACE_NOT_BEING_RENDERED = 0x88980802;

// Authentication target is invalid or not configured correctly.
pub const ONL_E_INVALID_AUTHENTICATION_TARGET = 0x80860001;

// Your application cannot get the Online Id properties due to the Terms of Use accepted by the user.
pub const ONL_E_ACCESS_DENIED_BY_TOU = 0x80860002;

// The application requesting authentication tokens is either disabled or incorrectly configured.
pub const ONL_E_INVALID_APPLICATION = 0x80860003;

// Online Id password must be updated before signin.
pub const ONL_E_PASSWORD_UPDATE_REQUIRED = 0x80860004;

// Online Id account properties must be updated before signin.
pub const ONL_E_ACCOUNT_UPDATE_REQUIRED = 0x80860005;

// To help protect your Online Id account you must signin again.
pub const ONL_E_FORCESIGNIN = 0x80860006;

// Online Id account was locked because there have been too many attempts to sign in.
pub const ONL_E_ACCOUNT_LOCKED = 0x80860007;

// Online Id account requires parental consent before proceeding.
pub const ONL_E_PARENTAL_CONSENT_REQUIRED = 0x80860008;

// Online Id signin name is not yet verified. Email verification is required before signin.
pub const ONL_E_EMAIL_VERIFICATION_REQUIRED = 0x80860009;

// We have noticed some unusual activity in your Online Id account. Your action is needed to make sure no one else is using your account.
pub const ONL_E_ACCOUNT_SUSPENDED_COMPROIMISE = 0x8086000A;

// We detected some suspicious activity with your Online Id account. To help protect you, we've temporarily blocked your account.
pub const ONL_E_ACCOUNT_SUSPENDED_ABUSE = 0x8086000B;

// User interaction is required for authentication.
pub const ONL_E_ACTION_REQUIRED = 0x8086000C;

// User has reached the maximum device associations per user limit.
pub const ONL_CONNECTION_COUNT_LIMIT = 0x8086000D;

// Cannot sign out from the application since the user account is connected.
pub const ONL_E_CONNECTED_ACCOUNT_CAN_NOT_SIGNOUT = 0x8086000E;

// User authentication is required for this operation.
pub const ONL_E_USER_AUTHENTICATION_REQUIRED = 0x8086000F;

// We want to make sure this is you. User interaction is required for authentication.
pub const ONL_E_REQUEST_THROTTLED = 0x80860010;

// The maximum number of items for the access list has been reached. An item must be removed before another item is added.
pub const FA_E_MAX_PERSISTED_ITEMS_REACHED = 0x80270220;

// Cannot access Homegroup. Homegroup may not be set up or may have encountered an error.
pub const FA_E_HOMEGROUP_NOT_AVAILABLE = 0x80270222;

// This app can't start because the screen resolution is below 1024x768. Choose a higher screen resolution and then try again.
pub const E_MONITOR_RESOLUTION_TOO_LOW = 0x80270250;

// This app can't be activated from an elevated context.
pub const E_ELEVATED_ACTIVATION_NOT_SUPPORTED = 0x80270251;

// This app can't be activated when UAC is disabled.
pub const E_UAC_DISABLED = 0x80270252;

// This app can't be activated by the Built-in Administrator.
pub const E_FULL_ADMIN_NOT_SUPPORTED = 0x80270253;

// This app does not support the contract specified or is not installed.
pub const E_APPLICATION_NOT_REGISTERED = 0x80270254;

// This app has mulitple extensions registered to support the specified contract. Activation by AppUserModelId is ambiguous.
pub const E_MULTIPLE_EXTENSIONS_FOR_APPLICATION = 0x80270255;

// This app's package family has more than one package installed. This is not supported.
pub const E_MULTIPLE_PACKAGES_FOR_FAMILY = 0x80270256;

// The app manager is required to activate applications, but is not running.
pub const E_APPLICATION_MANAGER_NOT_RUNNING = 0x80270257;

// The Store was launched instead of the specified app because the app's package was in an invalid state.
pub const S_STORE_LAUNCHED_FOR_REMEDIATION = 0x00270258;

// This app failed to launch, but the error was handled with a dialog.
pub const S_APPLICATION_ACTIVATION_ERROR_HANDLED_BY_DIALOG = 0x00270259;

// The app didn't start in the required time.
pub const E_APPLICATION_ACTIVATION_TIMED_OUT = 0x8027025A;

// The app didn't start.
pub const E_APPLICATION_ACTIVATION_EXEC_FAILURE = 0x8027025B;

// This app failed to launch because of an issue with its license. Please try again in a moment.
pub const E_APPLICATION_TEMPORARY_LICENSE_ERROR = 0x8027025C;

// This app failed to launch because its trial license has expired.
pub const E_APPLICATION_TRIAL_LICENSE_EXPIRED = 0x8027025D;

// Please choose a folder on a drive that's formatted with the NTFS file system.
pub const E_SKYDRIVE_ROOT_TARGET_FILE_SYSTEM_NOT_SUPPORTED = 0x80270260;

// This location is already being used. Please choose a different location.
pub const E_SKYDRIVE_ROOT_TARGET_OVERLAP = 0x80270261;

// This location cannot be indexed. Please choose a different location.
pub const E_SKYDRIVE_ROOT_TARGET_CANNOT_INDEX = 0x80270262;

// Sorry, the action couldn't be completed because the file hasn't finished uploading. Try again later.
pub const E_SKYDRIVE_FILE_NOT_UPLOADED = 0x80270263;

// Sorry, the action couldn't be completed.
pub const E_SKYDRIVE_UPDATE_AVAILABILITY_FAIL = 0x80270264;

// This content can only be moved to a folder. To move the content to this drive, please choose or create a folder.
pub const E_SKYDRIVE_ROOT_TARGET_VOLUME_ROOT_NOT_SUPPORTED = 0x80270265;

// The file size is larger than supported by the sync engine.
pub const E_SYNCENGINE_FILE_SIZE_OVER_LIMIT = 0x8802B001;

// The file cannot be uploaded because it doesn't fit in the user's available service provided storage space.
pub const E_SYNCENGINE_FILE_SIZE_EXCEEDS_REMAINING_QUOTA = 0x8802B002;

// The file name contains invalid characters.
pub const E_SYNCENGINE_UNSUPPORTED_FILE_NAME = 0x8802B003;

// The maximum file count has been reached for this folder in the sync engine.
pub const E_SYNCENGINE_FOLDER_ITEM_COUNT_LIMIT_EXCEEDED = 0x8802B004;

// The file sync has been delegated to another program and has run into an issue.
pub const E_SYNCENGINE_FILE_SYNC_PARTNER_ERROR = 0x8802B005;

// Sync has been delayed due to a throttling request from the service.
pub const E_SYNCENGINE_SYNC_PAUSED_BY_SERVICE = 0x8802B006;

// We can't seem to find that file. Please try again later.
pub const E_SYNCENGINE_FILE_IDENTIFIER_UNKNOWN = 0x8802C002;

// The account you're signed in with doesn't have permission to open this file.
pub const E_SYNCENGINE_SERVICE_AUTHENTICATION_FAILED = 0x8802C003;

// There was a problem connecting to the service. Please try again later.
pub const E_SYNCENGINE_UNKNOWN_SERVICE_ERROR = 0x8802C004;

// Sorry, there was a problem downloading the file.
pub const E_SYNCENGINE_SERVICE_RETURNED_UNEXPECTED_SIZE = 0x8802C005;

// We're having trouble downloading the file right now. Please try again later.
pub const E_SYNCENGINE_REQUEST_BLOCKED_BY_SERVICE = 0x8802C006;

// We're having trouble downloading the file right now. Please try again later.
pub const E_SYNCENGINE_REQUEST_BLOCKED_DUE_TO_CLIENT_ERROR = 0x8802C007;

// The sync engine does not have permissions to access a local folder under the sync root.
pub const E_SYNCENGINE_FOLDER_INACCESSIBLE = 0x8802D001;

// The folder name contains invalid characters.
pub const E_SYNCENGINE_UNSUPPORTED_FOLDER_NAME = 0x8802D002;

// The sync engine is not allowed to run in your current market.
pub const E_SYNCENGINE_UNSUPPORTED_MARKET = 0x8802D003;

// All files and folders can't be uploaded because a path of a file or folder is too long.
pub const E_SYNCENGINE_PATH_LENGTH_LIMIT_EXCEEDED = 0x8802D004;

// All file and folders cannot be synchronized because a path of a file or folder would exceed the local path limit.
pub const E_SYNCENGINE_REMOTE_PATH_LENGTH_LIMIT_EXCEEDED = 0x8802D005;

// Updates are needed in order to use the sync engine.
pub const E_SYNCENGINE_CLIENT_UPDATE_NEEDED = 0x8802D006;

// The sync engine needs to authenticate with a proxy server.
pub const E_SYNCENGINE_PROXY_AUTHENTICATION_REQUIRED = 0x8802D007;

// There was a problem setting up the storage services for the account.
pub const E_SYNCENGINE_STORAGE_SERVICE_PROVISIONING_FAILED = 0x8802D008;

// Files can't be uploaded because there's an unsupported reparse point.
pub const E_SYNCENGINE_UNSUPPORTED_REPARSE_POINT = 0x8802D009;

// The service has blocked your account from accessing the storage service.
pub const E_SYNCENGINE_STORAGE_SERVICE_BLOCKED = 0x8802D00A;

// The action can't be performed right now because this folder is being moved. Please try again later.
pub const E_SYNCENGINE_FOLDER_IN_REDIRECTION = 0x8802D00B;

// Windows cannot evaluate this EAS policy since this is not managed by the operating system.
pub const EAS_E_POLICY_NOT_MANAGED_BY_OS = 0x80550001;

// The system can be made compliant to this EAS policy if certain actions are performed by the user.
pub const EAS_E_POLICY_COMPLIANT_WITH_ACTIONS = 0x80550002;

// The EAS policy being evaluated cannot be enforced by the system.
pub const EAS_E_REQUESTED_POLICY_NOT_ENFORCEABLE = 0x80550003;

// EAS password policies for the user cannot be evaluated as the user has a blank password.
pub const EAS_E_CURRENT_USER_HAS_BLANK_PASSWORD = 0x80550004;

// EAS password expiration policy cannot be satisfied as the password expiration interval is less than the minimum password interval of the system.
pub const EAS_E_REQUESTED_POLICY_PASSWORD_EXPIRATION_INCOMPATIBLE = 0x80550005;

// The user is not allowed to change her password.
pub const EAS_E_USER_CANNOT_CHANGE_PASSWORD = 0x80550006;

// EAS password policies cannot be evaluated as one or more admins have blank passwords.
pub const EAS_E_ADMINS_HAVE_BLANK_PASSWORD = 0x80550007;

// One or more admins are not allowed to change their password.
pub const EAS_E_ADMINS_CANNOT_CHANGE_PASSWORD = 0x80550008;

// There are other standard users present who are not allowed to change their password.
pub const EAS_E_LOCAL_CONTROLLED_USERS_CANNOT_CHANGE_PASSWORD = 0x80550009;

// The EAS password policy cannot be enforced by the connected account provider of at least one administrator.
pub const EAS_E_PASSWORD_POLICY_NOT_ENFORCEABLE_FOR_CONNECTED_ADMINS = 0x8055000A;

// There is at least one administrator whose connected account password needs to be changed for EAS password policy compliance.
pub const EAS_E_CONNECTED_ADMINS_NEED_TO_CHANGE_PASSWORD = 0x8055000B;

// The EAS password policy cannot be enforced by the connected account provider of the current user.
pub const EAS_E_PASSWORD_POLICY_NOT_ENFORCEABLE_FOR_CURRENT_CONNECTED_USER = 0x8055000C;

// The connected account password of the current user needs to be changed for EAS password policy compliance.
pub const EAS_E_CURRENT_CONNECTED_USER_NEED_TO_CHANGE_PASSWORD = 0x8055000D;

// Unsupported format.
pub const WEB_E_UNSUPPORTED_FORMAT = 0x83750001;

// Invalid XML.
pub const WEB_E_INVALID_XML = 0x83750002;

// Missing required element.
pub const WEB_E_MISSING_REQUIRED_ELEMENT = 0x83750003;

// Missing required attribute.
pub const WEB_E_MISSING_REQUIRED_ATTRIBUTE = 0x83750004;

// Unexpected content.
pub const WEB_E_UNEXPECTED_CONTENT = 0x83750005;

// Resource too large.
pub const WEB_E_RESOURCE_TOO_LARGE = 0x83750006;

// Invalid JSON string.
pub const WEB_E_INVALID_JSON_STRING = 0x83750007;

// Invalid JSON number.
pub const WEB_E_INVALID_JSON_NUMBER = 0x83750008;

// JSON value not found.
pub const WEB_E_JSON_VALUE_NOT_FOUND = 0x83750009;

// Unexpected HTTP status code.
pub const HTTP_E_STATUS_UNEXPECTED = 0x80190001;

// Unexpected redirection status code (3xx).
pub const HTTP_E_STATUS_UNEXPECTED_REDIRECTION = 0x80190003;

// Unexpected client error status code (4xx).
pub const HTTP_E_STATUS_UNEXPECTED_CLIENT_ERROR = 0x80190004;

// Unexpected server error status code (5xx).
pub const HTTP_E_STATUS_UNEXPECTED_SERVER_ERROR = 0x80190005;

// Multiple choices (300).
pub const HTTP_E_STATUS_AMBIGUOUS = 0x8019012C;

// Moved permanently (301).
pub const HTTP_E_STATUS_MOVED = 0x8019012D;

// Found (302).
pub const HTTP_E_STATUS_REDIRECT = 0x8019012E;

// See Other (303).
pub const HTTP_E_STATUS_REDIRECT_METHOD = 0x8019012F;

// Not modified (304).
pub const HTTP_E_STATUS_NOT_MODIFIED = 0x80190130;

// Use proxy (305).
pub const HTTP_E_STATUS_USE_PROXY = 0x80190131;

// Temporary redirect (307).
pub const HTTP_E_STATUS_REDIRECT_KEEP_VERB = 0x80190133;

// Bad request (400).
pub const HTTP_E_STATUS_BAD_REQUEST = 0x80190190;

// Unauthorized (401).
pub const HTTP_E_STATUS_DENIED = 0x80190191;

// Payment required (402).
pub const HTTP_E_STATUS_PAYMENT_REQ = 0x80190192;

// Forbidden (403).
pub const HTTP_E_STATUS_FORBIDDEN = 0x80190193;

// Not found (404).
pub const HTTP_E_STATUS_NOT_FOUND = 0x80190194;

// Method not allowed (405).
pub const HTTP_E_STATUS_BAD_METHOD = 0x80190195;

// Not acceptable (406).
pub const HTTP_E_STATUS_NONE_ACCEPTABLE = 0x80190196;

// Proxy authentication required (407).
pub const HTTP_E_STATUS_PROXY_AUTH_REQ = 0x80190197;

// Request timeout (408).
pub const HTTP_E_STATUS_REQUEST_TIMEOUT = 0x80190198;

// Conflict (409).
pub const HTTP_E_STATUS_CONFLICT = 0x80190199;

// Gone (410).
pub const HTTP_E_STATUS_GONE = 0x8019019A;

// Length required (411).
pub const HTTP_E_STATUS_LENGTH_REQUIRED = 0x8019019B;

// Precondition failed (412).
pub const HTTP_E_STATUS_PRECOND_FAILED = 0x8019019C;

// Request entity too large (413).
pub const HTTP_E_STATUS_REQUEST_TOO_LARGE = 0x8019019D;

// Request-URI too long (414).
pub const HTTP_E_STATUS_URI_TOO_LONG = 0x8019019E;

// Unsupported media type (415).
pub const HTTP_E_STATUS_UNSUPPORTED_MEDIA = 0x8019019F;

// Requested range not satisfiable (416).
pub const HTTP_E_STATUS_RANGE_NOT_SATISFIABLE = 0x801901A0;

// Expectation failed (417).
pub const HTTP_E_STATUS_EXPECTATION_FAILED = 0x801901A1;

// Internal server error (500).
pub const HTTP_E_STATUS_SERVER_ERROR = 0x801901F4;

// Not implemented (501).
pub const HTTP_E_STATUS_NOT_SUPPORTED = 0x801901F5;

// Bad gateway (502).
pub const HTTP_E_STATUS_BAD_GATEWAY = 0x801901F6;

// Service unavailable (503).
pub const HTTP_E_STATUS_SERVICE_UNAVAIL = 0x801901F7;

// Gateway timeout (504).
pub const HTTP_E_STATUS_GATEWAY_TIMEOUT = 0x801901F8;

// Version not supported (505).
pub const HTTP_E_STATUS_VERSION_NOT_SUP = 0x801901F9;

// Invalid operation performed by the protocol.
pub const E_INVALID_PROTOCOL_OPERATION = 0x83760001;

// Invalid data format for the specific protocol operation.
pub const E_INVALID_PROTOCOL_FORMAT = 0x83760002;

// Protocol extensions are not supported.
pub const E_PROTOCOL_EXTENSIONS_NOT_SUPPORTED = 0x83760003;

// Subrotocol is not supported.
pub const E_SUBPROTOCOL_NOT_SUPPORTED = 0x83760004;

// Incorrect protocol version.
pub const E_PROTOCOL_VERSION_NOT_SUPPORTED = 0x83760005;

// Input data cannot be processed in the non-chronological order.
pub const INPUT_E_OUT_OF_ORDER = 0x80400000;

// Requested operation cannot be performed inside the callback or event handler.
pub const INPUT_E_REENTRANCY = 0x80400001;

// Input cannot be processed because there is ongoing interaction with another pointer type.
pub const INPUT_E_MULTIMODAL = 0x80400002;

// One or more fields in the input packet are invalid.
pub const INPUT_E_PACKET = 0x80400003;

// Packets in the frame are inconsistent. Either pointer ids are not unique or there is a discrepancy in timestamps, frame ids, pointer types or source devices.
pub const INPUT_E_FRAME = 0x80400004;

// The history of frames is inconsistent. Pointer ids, types, source devices don't match, or frame ids are not unique, or timestamps are out of order.
pub const INPUT_E_HISTORY = 0x80400005;

// Failed to retrieve information about the input device.
pub const INPUT_E_DEVICE_INFO = 0x80400006;

// Coordinate system transformation failed to transform the data.
pub const INPUT_E_TRANSFORM = 0x80400007;

// The property is not supported or not reported correctly by the input device.
pub const INPUT_E_DEVICE_PROPERTY = 0x80400008;

// The URL is invalid.
pub const INET_E_INVALID_URL = 0x800C0002;

// No Internet session has been established.
pub const INET_E_NO_SESSION = 0x800C0003;

// Unable to connect to the target server.
pub const INET_E_CANNOT_CONNECT = 0x800C0004;

// The system cannot locate the resource specified.
pub const INET_E_RESOURCE_NOT_FOUND = 0x800C0005;

// The system cannot locate the object specified.
pub const INET_E_OBJECT_NOT_FOUND = 0x800C0006;

// No data is available for the requested resource.
pub const INET_E_DATA_NOT_AVAILABLE = 0x800C0007;

// The download of the specified resource has failed.
pub const INET_E_DOWNLOAD_FAILURE = 0x800C0008;

// Authentication is required to access this resource.
pub const INET_E_AUTHENTICATION_REQUIRED = 0x800C0009;

// The server could not recognize the provided mime type.
pub const INET_E_NO_VALID_MEDIA = 0x800C000A;

// The operation was timed out.
pub const INET_E_CONNECTION_TIMEOUT = 0x800C000B;

// The server did not understand the request, or the request was invalid.
pub const INET_E_INVALID_REQUEST = 0x800C000C;

// The specified protocol is unknown.
pub const INET_E_UNKNOWN_PROTOCOL = 0x800C000D;

// A security problem occurred.
pub const INET_E_SECURITY_PROBLEM = 0x800C000E;

// The system could not load the persisted data.
pub const INET_E_CANNOT_LOAD_DATA = 0x800C000F;

// Unable to instantiate the object.
pub const INET_E_CANNOT_INSTANTIATE_OBJECT = 0x800C0010;

// Security certificate required to access this resource is invalid.
pub const INET_E_INVALID_CERTIFICATE = 0x800C0019;

// A redirection problem occurred.
pub const INET_E_REDIRECT_FAILED = 0x800C0014;

// The requested resource is a directory, not a file.
pub const INET_E_REDIRECT_TO_DIR = 0x800C0015;

// Could not create new process from ARM architecture device.
pub const ERROR_DBG_CREATE_PROCESS_FAILURE_LOCKDOWN = 0x80B00001;

// Could not attach to the application process from ARM architecture device.
pub const ERROR_DBG_ATTACH_PROCESS_FAILURE_LOCKDOWN = 0x80B00002;

// Could not connect to dbgsrv server from ARM architecture device.
pub const ERROR_DBG_CONNECT_SERVER_FAILURE_LOCKDOWN = 0x80B00003;

// Could not start dbgsrv server from ARM architecture device.
pub const ERROR_DBG_START_SERVER_FAILURE_LOCKDOWN = 0x80B00004;

// The operation was preempted by a higher priority operation. It must be resumed later.
pub const ERROR_IO_PREEMPTED = 0x89010001;

// Function could not execute because it was deleted or garbage collected.
pub const JSCRIPT_E_CANTEXECUTE = 0x89020001;

// One or more fixed volumes are not provisioned with the 3rd party encryption providers to support device encryption. Enable encryption with the 3rd party provider to comply with policy.
pub const WEP_E_NOT_PROVISIONED_ON_ALL_VOLUMES = 0x88010001;

// This computer is not fully encrypted. There are fixed volumes present which are not supported for encryption.
pub const WEP_E_FIXED_DATA_NOT_SUPPORTED = 0x88010002;

// This computer does not meet the hardware requirements to support device encryption with the installed 3rd party provider.
pub const WEP_E_HARDWARE_NOT_COMPLIANT = 0x88010003;

// This computer cannot support device encryption because the requisites for the device lock feature are not configured.
pub const WEP_E_LOCK_NOT_CONFIGURED = 0x88010004;

// Protection is enabled on this volume but is not in the active state.
pub const WEP_E_PROTECTION_SUSPENDED = 0x88010005;

// The 3rd party provider has been installed, but cannot activate encryption beacuse a license has not been activated.
pub const WEP_E_NO_LICENSE = 0x88010006;

// The operating system drive is not protected by 3rd party drive encryption.
pub const WEP_E_OS_NOT_PROTECTED = 0x88010007;

// Unexpected failure was encountered while calling into the 3rd Party drive encryption plugin.
pub const WEP_E_UNEXPECTED_FAIL = 0x88010008;

// The input buffer size for the lockout metadata used by the 3rd party drive encryption is too large.
pub const WEP_E_BUFFER_TOO_LARGE = 0x88010009;

// The proper error code with sense data was stored on server side.
pub const ERROR_SVHDX_ERROR_STORED = 0xC05C0000;

// The requested error data is not available on the server.
pub const ERROR_SVHDX_ERROR_NOT_AVAILABLE = 0xC05CFF00;

// Unit Attention data is available for the initiator to query.
pub const ERROR_SVHDX_UNIT_ATTENTION_AVAILABLE = 0xC05CFF01;

// The data capacity of the device has changed, resulting in a Unit Attention condition.
pub const ERROR_SVHDX_UNIT_ATTENTION_CAPACITY_DATA_CHANGED = 0xC05CFF02;

// A previous operation resulted in this initiator's reservations being preempted, resulting in a Unit Attention condition.
pub const ERROR_SVHDX_UNIT_ATTENTION_RESERVATIONS_PREEMPTED = 0xC05CFF03;

// A previous operation resulted in this initiator's reservations being released, resulting in a Unit Attention condition.
pub const ERROR_SVHDX_UNIT_ATTENTION_RESERVATIONS_RELEASED = 0xC05CFF04;

// A previous operation resulted in this initiator's registrations being preempted, resulting in a Unit Attention condition.
pub const ERROR_SVHDX_UNIT_ATTENTION_REGISTRATIONS_PREEMPTED = 0xC05CFF05;

// The data storage format of the device has changed, resulting in a Unit Attention condition.
pub const ERROR_SVHDX_UNIT_ATTENTION_OPERATING_DEFINITION_CHANGED = 0xC05CFF06;

// The current initiator is not allowed to perform the SCSI command because of a reservation conflict.
pub const ERROR_SVHDX_RESERVATION_CONFLICT = 0xC05CFF07;

// Multiple virtual machines sharing a virtual hard disk is supported only on Fixed or Dynamic VHDX format virtual hard disks.
pub const ERROR_SVHDX_WRONG_FILE_TYPE = 0xC05CFF08;

// The server version does not match the requested version.
pub const ERROR_SVHDX_VERSION_MISMATCH = 0xC05CFF09;

// The requested operation cannot be performed on the virtual disk as it is currently used in shared mode.
pub const ERROR_VHD_SHARED = 0xC05CFF0A;

// Invalid Shared VHDX open due to lack of initiator ID. Check for related Continuous Availability failures.
pub const ERROR_SVHDX_NO_INITIATOR = 0xC05CFF0B;

// The requested operation failed due to a missing backing storage file.
pub const ERROR_VHDSET_BACKING_STORAGE_NOT_FOUND = 0xC05CFF0C;

// Failed to negotiate a preauthentication integrity hash function.
pub const ERROR_SMB_NO_PREAUTH_INTEGRITY_HASH_OVERLAP = 0xC05D0000;

// The current cluster functional level does not support this SMB dialect.
pub const ERROR_SMB_BAD_CLUSTER_DIALECT = 0xC05D0001;

// No more Internet handles can be allocated
pub const WININET_E_OUT_OF_HANDLES = 0x80072EE1;

// The operation timed out
pub const WININET_E_TIMEOUT = 0x80072EE2;

// The server returned extended information
pub const WININET_E_EXTENDED_ERROR = 0x80072EE3;

// An internal error occurred in the Microsoft Internet extensions
pub const WININET_E_INTERNAL_ERROR = 0x80072EE4;

// The URL is invalid
pub const WININET_E_INVALID_URL = 0x80072EE5;

// The URL does not use a recognized protocol
pub const WININET_E_UNRECOGNIZED_SCHEME = 0x80072EE6;

// The server name or address could not be resolved
pub const WININET_E_NAME_NOT_RESOLVED = 0x80072EE7;

// A protocol with the required capabilities was not found
pub const WININET_E_PROTOCOL_NOT_FOUND = 0x80072EE8;

// The option is invalid
pub const WININET_E_INVALID_OPTION = 0x80072EE9;

// The length is incorrect for the option type
pub const WININET_E_BAD_OPTION_LENGTH = 0x80072EEA;

// The option value cannot be set
pub const WININET_E_OPTION_NOT_SETTABLE = 0x80072EEB;

// Microsoft Internet Extension support has been shut down
pub const WININET_E_SHUTDOWN = 0x80072EEC;

// The user name was not allowed
pub const WININET_E_INCORRECT_USER_NAME = 0x80072EED;

// The password was not allowed
pub const WININET_E_INCORRECT_PASSWORD = 0x80072EEE;

// The login request was denied
pub const WININET_E_LOGIN_FAILURE = 0x80072EEF;

// The requested operation is invalid
pub const WININET_E_INVALID_OPERATION = 0x80072EF0;

// The operation has been canceled
pub const WININET_E_OPERATION_CANCELLED = 0x80072EF1;

// The supplied handle is the wrong type for the requested operation
pub const WININET_E_INCORRECT_HANDLE_TYPE = 0x80072EF2;

// The handle is in the wrong state for the requested operation
pub const WININET_E_INCORRECT_HANDLE_STATE = 0x80072EF3;

// The request cannot be made on a Proxy session
pub const WININET_E_NOT_PROXY_REQUEST = 0x80072EF4;

// The registry value could not be found
pub const WININET_E_REGISTRY_VALUE_NOT_FOUND = 0x80072EF5;

// The registry parameter is incorrect
pub const WININET_E_BAD_REGISTRY_PARAMETER = 0x80072EF6;

// Direct Internet access is not available
pub const WININET_E_NO_DIRECT_ACCESS = 0x80072EF7;

// No context value was supplied
pub const WININET_E_NO_CONTEXT = 0x80072EF8;

// No status callback was supplied
pub const WININET_E_NO_CALLBACK = 0x80072EF9;

// There are outstanding requests
pub const WININET_E_REQUEST_PENDING = 0x80072EFA;

// The information format is incorrect
pub const WININET_E_INCORRECT_FORMAT = 0x80072EFB;

// The requested item could not be found
pub const WININET_E_ITEM_NOT_FOUND = 0x80072EFC;

// A connection with the server could not be established
pub const WININET_E_CANNOT_CONNECT = 0x80072EFD;

// The connection with the server was terminated abnormally
pub const WININET_E_CONNECTION_ABORTED = 0x80072EFE;

// The connection with the server was reset
pub const WININET_E_CONNECTION_RESET = 0x80072EFF;

// The action must be retried
pub const WININET_E_FORCE_RETRY = 0x80072F00;

// The proxy request is invalid
pub const WININET_E_INVALID_PROXY_REQUEST = 0x80072F01;

// User interaction is required to complete the operation
pub const WININET_E_NEED_UI = 0x80072F02;

// The handle already exists
pub const WININET_E_HANDLE_EXISTS = 0x80072F04;

// The date in the certificate is invalid or has expired
pub const WININET_E_SEC_CERT_DATE_INVALID = 0x80072F05;

// The host name in the certificate is invalid or does not match
pub const WININET_E_SEC_CERT_CN_INVALID = 0x80072F06;

// A redirect request will change a non-secure to a secure connection
pub const WININET_E_HTTP_TO_HTTPS_ON_REDIR = 0x80072F07;

// A redirect request will change a secure to a non-secure connection
pub const WININET_E_HTTPS_TO_HTTP_ON_REDIR = 0x80072F08;

// Mixed secure and non-secure connections
pub const WININET_E_MIXED_SECURITY = 0x80072F09;

// Changing to non-secure post
pub const WININET_E_CHG_POST_IS_NON_SECURE = 0x80072F0A;

// Data is being posted on a non-secure connection
pub const WININET_E_POST_IS_NON_SECURE = 0x80072F0B;

// A certificate is required to complete client authentication
pub const WININET_E_CLIENT_AUTH_CERT_NEEDED = 0x80072F0C;

// The certificate authority is invalid or incorrect
pub const WININET_E_INVALID_CA = 0x80072F0D;

// Client authentication has not been correctly installed
pub const WININET_E_CLIENT_AUTH_NOT_SETUP = 0x80072F0E;

// An error has occurred in a Wininet asynchronous thread. You may need to restart
pub const WININET_E_ASYNC_THREAD_FAILED = 0x80072F0F;

// The protocol scheme has changed during a redirect operaiton
pub const WININET_E_REDIRECT_SCHEME_CHANGE = 0x80072F10;

// There are operations awaiting retry
pub const WININET_E_DIALOG_PENDING = 0x80072F11;

// The operation must be retried
pub const WININET_E_RETRY_DIALOG = 0x80072F12;

// There are no new cache containers
pub const WININET_E_NO_NEW_CONTAINERS = 0x80072F13;

// A security zone check indicates the operation must be retried
pub const WININET_E_HTTPS_HTTP_SUBMIT_REDIR = 0x80072F14;

// The SSL certificate contains errors.
pub const WININET_E_SEC_CERT_ERRORS = 0x80072F17;

// It was not possible to connect to the revocation server or a definitive response could not be obtained.
pub const WININET_E_SEC_CERT_REV_FAILED = 0x80072F19;

// The requested header was not found
pub const WININET_E_HEADER_NOT_FOUND = 0x80072F76;

// The server does not support the requested protocol level
pub const WININET_E_DOWNLEVEL_SERVER = 0x80072F77;

// The server returned an invalid or unrecognized response
pub const WININET_E_INVALID_SERVER_RESPONSE = 0x80072F78;

// The supplied HTTP header is invalid
pub const WININET_E_INVALID_HEADER = 0x80072F79;

// The request for a HTTP header is invalid
pub const WININET_E_INVALID_QUERY_REQUEST = 0x80072F7A;

// The HTTP header already exists
pub const WININET_E_HEADER_ALREADY_EXISTS = 0x80072F7B;

// The HTTP redirect request failed
pub const WININET_E_REDIRECT_FAILED = 0x80072F7C;

// An error occurred in the secure channel support
pub const WININET_E_SECURITY_CHANNEL_ERROR = 0x80072F7D;

// The file could not be written to the cache
pub const WININET_E_UNABLE_TO_CACHE_FILE = 0x80072F7E;

// The TCP/IP protocol is not installed properly
pub const WININET_E_TCPIP_NOT_INSTALLED = 0x80072F7F;

// The computer is disconnected from the network
pub const WININET_E_DISCONNECTED = 0x80072F83;

// The server is unreachable
pub const WININET_E_SERVER_UNREACHABLE = 0x80072F84;

// The proxy server is unreachable
pub const WININET_E_PROXY_SERVER_UNREACHABLE = 0x80072F85;

// The proxy auto-configuration script is in error
pub const WININET_E_BAD_AUTO_PROXY_SCRIPT = 0x80072F86;

// Could not download the proxy auto-configuration script file
pub const WININET_E_UNABLE_TO_DOWNLOAD_SCRIPT = 0x80072F87;

// The supplied certificate is invalid
pub const WININET_E_SEC_INVALID_CERT = 0x80072F89;

// The supplied certificate has been revoked
pub const WININET_E_SEC_CERT_REVOKED = 0x80072F8A;

// The Dialup failed because file sharing was turned on and a failure was requested if security check was needed
pub const WININET_E_FAILED_DUETOSECURITYCHECK = 0x80072F8B;

// Initialization of the WinINet API has not occurred
pub const WININET_E_NOT_INITIALIZED = 0x80072F8C;

// Login failed and the client should display the entity body to the user
pub const WININET_E_LOGIN_FAILURE_DISPLAY_ENTITY_BODY = 0x80072F8E;

// Content decoding has failed
pub const WININET_E_DECODING_FAILED = 0x80072F8F;

// The HTTP request was not redirected
pub const WININET_E_NOT_REDIRECTED = 0x80072F80;

// A cookie from the server must be confirmed by the user
pub const WININET_E_COOKIE_NEEDS_CONFIRMATION = 0x80072F81;

// A cookie from the server has been declined acceptance
pub const WININET_E_COOKIE_DECLINED = 0x80072F82;

// The HTTP redirect request must be confirmed by the user
pub const WININET_E_REDIRECT_NEEDS_CONFIRMATION = 0x80072F88;

// SQL error or missing database
pub const SQLITE_E_ERROR = 0x87AF0001;

// Internal logic error in SQLite
pub const SQLITE_E_INTERNAL = 0x87AF0002;

// Access permission denied
pub const SQLITE_E_PERM = 0x87AF0003;

// Callback routine requested an abort
pub const SQLITE_E_ABORT = 0x87AF0004;

// The database file is locked
pub const SQLITE_E_BUSY = 0x87AF0005;

// A table in the database is locked
pub const SQLITE_E_LOCKED = 0x87AF0006;

// A malloc() failed
pub const SQLITE_E_NOMEM = 0x87AF0007;

// Attempt to write a readonly database
pub const SQLITE_E_READONLY = 0x87AF0008;

// Operation terminated by sqlite3_interrupt()
pub const SQLITE_E_INTERRUPT = 0x87AF0009;

// Some kind of disk I/O error occurred
pub const SQLITE_E_IOERR = 0x87AF000A;

// The database disk image is malformed
pub const SQLITE_E_CORRUPT = 0x87AF000B;

// Unknown opcode in sqlite3_file_control()
pub const SQLITE_E_NOTFOUND = 0x87AF000C;

// Insertion failed because database is full
pub const SQLITE_E_FULL = 0x87AF000D;

// Unable to open the database file
pub const SQLITE_E_CANTOPEN = 0x87AF000E;

// Database lock protocol error
pub const SQLITE_E_PROTOCOL = 0x87AF000F;

// Database is empty
pub const SQLITE_E_EMPTY = 0x87AF0010;

// The database schema changed
pub const SQLITE_E_SCHEMA = 0x87AF0011;

// String or BLOB exceeds size limit
pub const SQLITE_E_TOOBIG = 0x87AF0012;

// Abort due to constraint violation
pub const SQLITE_E_CONSTRAINT = 0x87AF0013;

// Data type mismatch
pub const SQLITE_E_MISMATCH = 0x87AF0014;

// Library used incorrectly
pub const SQLITE_E_MISUSE = 0x87AF0015;

// Uses OS features not supported on host
pub const SQLITE_E_NOLFS = 0x87AF0016;

// Authorization denied
pub const SQLITE_E_AUTH = 0x87AF0017;

// Auxiliary database format error
pub const SQLITE_E_FORMAT = 0x87AF0018;

// 2nd parameter to sqlite3_bind out of range
pub const SQLITE_E_RANGE = 0x87AF0019;

// File opened that is not a database file
pub const SQLITE_E_NOTADB = 0x87AF001A;

// Notifications from sqlite3_log()
pub const SQLITE_E_NOTICE = 0x87AF001B;

// Warnings from sqlite3_log()
pub const SQLITE_E_WARNING = 0x87AF001C;

// sqlite3_step() has another row ready
pub const SQLITE_E_ROW = 0x87AF0064;

// sqlite3_step() has finished executing
pub const SQLITE_E_DONE = 0x87AF0065;

// SQLITE_IOERR_READ
pub const SQLITE_E_IOERR_READ = 0x87AF010A;

// SQLITE_IOERR_SHORT_READ
pub const SQLITE_E_IOERR_SHORT_READ = 0x87AF020A;

// SQLITE_IOERR_WRITE
pub const SQLITE_E_IOERR_WRITE = 0x87AF030A;

// SQLITE_IOERR_FSYNC
pub const SQLITE_E_IOERR_FSYNC = 0x87AF040A;

// SQLITE_IOERR_DIR_FSYNC
pub const SQLITE_E_IOERR_DIR_FSYNC = 0x87AF050A;

// SQLITE_IOERR_TRUNCATE
pub const SQLITE_E_IOERR_TRUNCATE = 0x87AF060A;

// SQLITE_IOERR_FSTAT
pub const SQLITE_E_IOERR_FSTAT = 0x87AF070A;

// SQLITE_IOERR_UNLOCK
pub const SQLITE_E_IOERR_UNLOCK = 0x87AF080A;

// SQLITE_IOERR_RDLOCK
pub const SQLITE_E_IOERR_RDLOCK = 0x87AF090A;

// SQLITE_IOERR_DELETE
pub const SQLITE_E_IOERR_DELETE = 0x87AF0A0A;

// SQLITE_IOERR_BLOCKED
pub const SQLITE_E_IOERR_BLOCKED = 0x87AF0B0A;

// SQLITE_IOERR_NOMEM
pub const SQLITE_E_IOERR_NOMEM = 0x87AF0C0A;

// SQLITE_IOERR_ACCESS
pub const SQLITE_E_IOERR_ACCESS = 0x87AF0D0A;

// SQLITE_IOERR_CHECKRESERVEDLOCK
pub const SQLITE_E_IOERR_CHECKRESERVEDLOCK = 0x87AF0E0A;

// SQLITE_IOERR_LOCK
pub const SQLITE_E_IOERR_LOCK = 0x87AF0F0A;

// SQLITE_IOERR_CLOSE
pub const SQLITE_E_IOERR_CLOSE = 0x87AF100A;

// SQLITE_IOERR_DIR_CLOSE
pub const SQLITE_E_IOERR_DIR_CLOSE = 0x87AF110A;

// SQLITE_IOERR_SHMOPEN
pub const SQLITE_E_IOERR_SHMOPEN = 0x87AF120A;

// SQLITE_IOERR_SHMSIZE
pub const SQLITE_E_IOERR_SHMSIZE = 0x87AF130A;

// SQLITE_IOERR_SHMLOCK
pub const SQLITE_E_IOERR_SHMLOCK = 0x87AF140A;

// SQLITE_IOERR_SHMMAP
pub const SQLITE_E_IOERR_SHMMAP = 0x87AF150A;

// SQLITE_IOERR_SEEK
pub const SQLITE_E_IOERR_SEEK = 0x87AF160A;

// SQLITE_IOERR_DELETE_NOENT
pub const SQLITE_E_IOERR_DELETE_NOENT = 0x87AF170A;

// SQLITE_IOERR_MMAP
pub const SQLITE_E_IOERR_MMAP = 0x87AF180A;

// SQLITE_IOERR_GETTEMPPATH
pub const SQLITE_E_IOERR_GETTEMPPATH = 0x87AF190A;

// SQLITE_IOERR_CONVPATH
pub const SQLITE_E_IOERR_CONVPATH = 0x87AF1A0A;

// SQLITE_IOERR_VNODE
pub const SQLITE_E_IOERR_VNODE = 0x87AF1A02;

// SQLITE_IOERR_AUTH
pub const SQLITE_E_IOERR_AUTH = 0x87AF1A03;

// SQLITE_LOCKED_SHAREDCACHE
pub const SQLITE_E_LOCKED_SHAREDCACHE = 0x87AF0106;

// SQLITE_BUSY_RECOVERY
pub const SQLITE_E_BUSY_RECOVERY = 0x87AF0105;

// SQLITE_BUSY_SNAPSHOT
pub const SQLITE_E_BUSY_SNAPSHOT = 0x87AF0205;

// SQLITE_CANTOPEN_NOTEMPDIR
pub const SQLITE_E_CANTOPEN_NOTEMPDIR = 0x87AF010E;

// SQLITE_CANTOPEN_ISDIR
pub const SQLITE_E_CANTOPEN_ISDIR = 0x87AF020E;

// SQLITE_CANTOPEN_FULLPATH
pub const SQLITE_E_CANTOPEN_FULLPATH = 0x87AF030E;

// SQLITE_CANTOPEN_CONVPATH
pub const SQLITE_E_CANTOPEN_CONVPATH = 0x87AF040E;

// SQLITE_CORRUPT_VTAB
pub const SQLITE_E_CORRUPT_VTAB = 0x87AF010B;

// SQLITE_READONLY_RECOVERY
pub const SQLITE_E_READONLY_RECOVERY = 0x87AF0108;

// SQLITE_READONLY_CANTLOCK
pub const SQLITE_E_READONLY_CANTLOCK = 0x87AF0208;

// SQLITE_READONLY_ROLLBACK
pub const SQLITE_E_READONLY_ROLLBACK = 0x87AF0308;

// SQLITE_READONLY_DBMOVED
pub const SQLITE_E_READONLY_DBMOVED = 0x87AF0408;

// SQLITE_ABORT_ROLLBACK
pub const SQLITE_E_ABORT_ROLLBACK = 0x87AF0204;

// SQLITE_CONSTRAINT_CHECK
pub const SQLITE_E_CONSTRAINT_CHECK = 0x87AF0113;

// SQLITE_CONSTRAINT_COMMITHOOK
pub const SQLITE_E_CONSTRAINT_COMMITHOOK = 0x87AF0213;

// SQLITE_CONSTRAINT_FOREIGNKEY
pub const SQLITE_E_CONSTRAINT_FOREIGNKEY = 0x87AF0313;

// SQLITE_CONSTRAINT_FUNCTION
pub const SQLITE_E_CONSTRAINT_FUNCTION = 0x87AF0413;

// SQLITE_CONSTRAINT_NOTNULL
pub const SQLITE_E_CONSTRAINT_NOTNULL = 0x87AF0513;

// SQLITE_CONSTRAINT_PRIMARYKEY
pub const SQLITE_E_CONSTRAINT_PRIMARYKEY = 0x87AF0613;

// SQLITE_CONSTRAINT_TRIGGER
pub const SQLITE_E_CONSTRAINT_TRIGGER = 0x87AF0713;

// SQLITE_CONSTRAINT_UNIQUE
pub const SQLITE_E_CONSTRAINT_UNIQUE = 0x87AF0813;

// SQLITE_CONSTRAINT_VTAB
pub const SQLITE_E_CONSTRAINT_VTAB = 0x87AF0913;

// SQLITE_CONSTRAINT_ROWID
pub const SQLITE_E_CONSTRAINT_ROWID = 0x87AF0A13;

// SQLITE_NOTICE_RECOVER_WAL
pub const SQLITE_E_NOTICE_RECOVER_WAL = 0x87AF011B;

// SQLITE_NOTICE_RECOVER_ROLLBACK
pub const SQLITE_E_NOTICE_RECOVER_ROLLBACK = 0x87AF021B;

// SQLITE_WARNING_AUTOINDEX
pub const SQLITE_E_WARNING_AUTOINDEX = 0x87AF011C;

// Toggle (alternative) trace started
pub const UTC_E_TOGGLE_TRACE_STARTED = 0x87C51001;

// Cannot pre-empt running trace: The current trace has a higher priority
pub const UTC_E_ALTERNATIVE_TRACE_CANNOT_PREEMPT = 0x87C51002;

// The always-on-trace is not running
pub const UTC_E_AOT_NOT_RUNNING = 0x87C51003;

// RunScriptAction contains an invalid script type
pub const UTC_E_SCRIPT_TYPE_INVALID = 0x87C51004;

// Requested scenario definition cannot be found
pub const UTC_E_SCENARIODEF_NOT_FOUND = 0x87C51005;

// Requested trace profile cannot be found
pub const UTC_E_TRACEPROFILE_NOT_FOUND = 0x87C51006;

// Trigger forwarder is already enabled
pub const UTC_E_FORWARDER_ALREADY_ENABLED = 0x87C51007;

// Trigger forwarder is already disabled
pub const UTC_E_FORWARDER_ALREADY_DISABLED = 0x87C51008;

// Cannot parse EventLog XML: The entry is malformed
pub const UTC_E_EVENTLOG_ENTRY_MALFORMED = 0x87C51009;

// <diagrules> node contains a schemaversion which is not compatible with this client
pub const UTC_E_DIAGRULES_SCHEMAVERSION_MISMATCH = 0x87C5100A;

// RunScriptAction was forced to terminate a script
pub const UTC_E_SCRIPT_TERMINATED = 0x87C5100B;

// ToggleTraceWithCustomFilterAction contains an invalid custom filter
pub const UTC_E_INVALID_CUSTOM_FILTER = 0x87C5100C;

// The trace is not running
pub const UTC_E_TRACE_NOT_RUNNING = 0x87C5100D;

// A scenario failed to escalate: This scenario has escalated too recently
pub const UTC_E_REESCALATED_TOO_QUICKLY = 0x87C5100E;

// A scenario failed to escalate: This scenario is already running an escalation
pub const UTC_E_ESCALATION_ALREADY_RUNNING = 0x87C5100F;

// Cannot start tracing: PerfTrack component is already tracing
pub const UTC_E_PERFTRACK_ALREADY_TRACING = 0x87C51010;

// A scenario failed to escalate: This scenario has reached max escalations for this escalation type
pub const UTC_E_REACHED_MAX_ESCALATIONS = 0x87C51011;

// Cannot update forwarder: The forwarder passed to the function is of a different type
pub const UTC_E_FORWARDER_PRODUCER_MISMATCH = 0x87C51012;

// RunScriptAction failed intentionally to force this escalation to terminate
pub const UTC_E_INTENTIONAL_SCRIPT_FAILURE = 0x87C51013;

// Failed to initialize SQM logger
pub const UTC_E_SQM_INIT_FAILED = 0x87C51014;

// Failed to initialize WER logger: This system does not support WER for UTC
pub const UTC_E_NO_WER_LOGGER_SUPPORTED = 0x87C51015;

// The TraceManager has attempted to take a tracing action without initializing tracers
pub const UTC_E_TRACERS_DONT_EXIST = 0x87C51016;

// WinRT initialization failed
pub const UTC_E_WINRT_INIT_FAILED = 0x87C51017;

// <scenario> node contains a schemaversion that is not compatible with this client
pub const UTC_E_SCENARIODEF_SCHEMAVERSION_MISMATCH = 0x87C51018;

// Scenario contains an invalid filter that can never be satisfied
pub const UTC_E_INVALID_FILTER = 0x87C51019;

// RunExeWithArgsAction was forced to terminate a running executable
pub const UTC_E_EXE_TERMINATED = 0x87C5101A;

// Escalation for scenario failed due to insufficient permissions
pub const UTC_E_ESCALATION_NOT_AUTHORIZED = 0x87C5101B;

// Setup for scenario failed due to insufficient permissions
pub const UTC_E_SETUP_NOT_AUTHORIZED = 0x87C5101C;

// A process launched by UTC failed with a non-zero exit code.
pub const UTC_E_CHILD_PROCESS_FAILED = 0x87C5101D;

// A RunExeWithArgs action contains an unauthorized command line.
pub const UTC_E_COMMAND_LINE_NOT_AUTHORIZED = 0x87C5101E;

// UTC cannot load Scenario Editor XML. Convert the scenario file to a DiagTrack XML using the editor.
pub const UTC_E_CANNOT_LOAD_SCENARIO_EDITOR_XML = 0x87C5101F;

// Escalation for scenario has timed out
pub const UTC_E_ESCALATION_TIMED_OUT = 0x87C51020;

// Setup for scenario has timed out
pub const UTC_E_SETUP_TIMED_OUT = 0x87C51021;

// The given trigger does not match the expected trigger type
pub const UTC_E_TRIGGER_MISMATCH = 0x87C51022;

// Requested trigger cannot be found
pub const UTC_E_TRIGGER_NOT_FOUND = 0x87C51023;

// SIF is not supported on the machine
pub const UTC_E_SIF_NOT_SUPPORTED = 0x87C51024;

// The delay action was terminated
pub const UTC_E_DELAY_TERMINATED = 0x87C51025;

// The device ticket was not obtained
pub const UTC_E_DEVICE_TICKET_ERROR = 0x87C51026;

// The trace profile needs more memory than is available for tracing
pub const UTC_E_TRACE_BUFFER_LIMIT_EXCEEDED = 0x87C51027;

// The API was not completed successfully so the result is unavailable
pub const UTC_E_API_RESULT_UNAVAILABLE = 0x87C51028;

// The requested API encountered a timeout in the API manager
pub const UTC_E_RPC_TIMEOUT = 0x87C51029;

// The synchronous API encountered a wait failure
pub const UTC_E_RPC_WAIT_FAILED = 0x87C5102A;

// The UTC API is busy with another request
pub const UTC_E_API_BUSY = 0x87C5102B;

// The running trace profile does not have a sufficient runtime to fulfill the escalation request
pub const UTC_E_TRACE_MIN_DURATION_REQUIREMENT_NOT_MET = 0x87C5102C;

// The trace profile could not be started because it requires exclusivity and another higher priority trace is already running
pub const UTC_E_EXCLUSIVITY_NOT_AVAILABLE = 0x87C5102D;

// The file path is not approved for the GetFile escalation action
pub const UTC_E_GETFILE_FILE_PATH_NOT_APPROVED = 0x87C5102E;

// The escalation working directory for the requested escalation could not be created because it already exists
pub const UTC_E_ESCALATION_DIRECTORY_ALREADY_EXISTS = 0x87C5102F;

// Time triggers cannot be used on a transition originating from the "_start" state
pub const UTC_E_TIME_TRIGGER_ON_START_INVALID = 0x87C51030;

// Time triggers can only be attached to a single transition
pub const UTC_E_TIME_TRIGGER_ONLY_VALID_ON_SINGLE_TRANSITION = 0x87C51031;

// Time trigger duration must fall within an inclusive range of one second and 15 minutes
pub const UTC_E_TIME_TRIGGER_INVALID_TIME_RANGE = 0x87C51032;

// Only one Time Trigger is allowed per state
pub const UTC_E_MULTIPLE_TIME_TRIGGER_ON_SINGLE_STATE = 0x87C51033;

// A RunExeWithArgs action contains a binary which is not present on the targeted device.
pub const UTC_E_BINARY_MISSING = 0x87C51034;

// A network capture trace is not allowed.
pub const UTC_E_NETWORK_CAPTURE_NOT_ALLOWED = 0x87C51035;

// UTC failed to identify the container id to use for a scenario escalation action.
pub const UTC_E_FAILED_TO_RESOLVE_CONTAINER_ID = 0x87C51036;

// Failed to resolve session ID during API invocation.
pub const UTC_E_UNABLE_TO_RESOLVE_SESSION = 0x87C51037;

// UTC has throttled the event for firing too often.
pub const UTC_E_THROTTLED = 0x87C51038;

// The script is not approved to run as part of DiagTrack scenario.
pub const UTC_E_UNAPPROVED_SCRIPT = 0x87C51039;

// The script referenced in DiagTrack scenario is not present on the system.
pub const UTC_E_SCRIPT_MISSING = 0x87C5103A;

// A trigger in this scenario is throttled, blocking the scenario from being loaded.
pub const UTC_E_SCENARIO_THROTTLED = 0x87C5103B;

// The requested UTC API call is not supported on this device.
pub const UTC_E_API_NOT_SUPPORTED = 0x87C5103C;

// The file path is not approved for collection on external rings for the GetFile escalation action.
pub const UTC_E_GETFILE_EXTERNAL_PATH_NOT_APPROVED = 0x87C5103D;

// Querying a scenario definition exceeded the specified maximum timeout.
pub const UTC_E_TRY_GET_SCENARIO_TIMEOUT_EXCEEDED = 0x87C5103E;

pub const OLE_E_FIRST = 0x80040000;
pub const OLE_E_LAST = 0x800400FF;
pub const OLE_S_FIRST = 0x00040000;
pub const OLE_S_LAST = 0x000400FF;

pub const S_OK = 0;
pub const S_FALSE = 1;

pub const SEC_E_NO_SPM = SEC_E_INTERNAL_ERROR;
pub const SEC_E_NOT_SUPPORTED = SEC_E_UNSUPPORTED_FUNCTION;

pub const SCARD_S_SUCCESS = NO_ERROR;

pub inline fn HRESULT_FROM_NT(x: i32) i32 {
    return x | FACILITY_NT_BIT;
}

pub inline fn SUCCEEDED(hr: u32) bool {
    return hr >= 0;
}

pub inline fn FAILED(hr: u32) bool {
    return hr < 0;
}

pub inline fn IS_ERROR(status: u32) bool {
    return (status >> 31) == SEVERITY_ERROR;
}

pub inline fn HRESULT_FROM_WIN32(x: i32) i32 {
    return if (x <= 0)
        x
    else
        @bitCast(i32, @bitCast(u32, x & 0x0000FFFF) | (FACILITY_WIN32 << 16) | 0x80000000);
}

pub inline fn HRESULT_CODE(hr: i32) u16 {
    return @truncate(u16, hr);
}

pub inline fn HRESULT_FACILITY(hr: i32) u13 {
    return @truncate(u13, hr >> 16);
}

pub inline fn HRESULT_SEVERITY(hr: i32) u2 {
    return @truncate(u2, hr >> 31);
}

pub inline fn MAKE_HRESULT(sev: u2, fac: u13, code: u16) i32 {
    return @bitCast(i32, (@as(u32, sev) << 31) | (@as(u32, fac) << 16) | (@as(u32, code)));
}

pub const SCODE_SEVERITY = HRESULT_SEVERITY;
pub const SCODE_FACILITY = HRESULT_FACILITY;
pub const SCODE_CODE = HRESULT_CODE;
pub const MAKE_SCODE = MAKE_SCODE;

pub inline fn HRESULT_FROM_SETUPAPI(x: i32) i32 {
    const mask = APPLICATION_ERROR_MASK|ERROR_SEVERITY_ERROR;
    
    return if (x & mask == mask)
        @bitCast(i32, (@bitCast(u32, x) & 0x0000FFFF) | (FACILITY_SETUPAPI << 16) | 0x80000000)
    else
        HRESULT_FROM_WIN32(x);
}

pub inline fn FILTER_HRESULT_FROM_FLT_NTSTATUS(x: i32) i32 {
    std.debug.assert(@bitCast(u32, x & 0xfff0000) == 0x001c0000);
    return @bitCast(i32, @bitCast(u32, x & 0x8000FFFF) | (FACILITY_USERMODE_FILTER_MANAGER << 16));
}