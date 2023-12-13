// ignore_for_file: constant_identifier_names

enum StopCode {
  APC_INDEX_MISMATCH(0x00000001),
  DEVICE_QUEUE_NOT_BUSY(0x00000002),
  INVALID_AFFINITY_SET(0x00000003),
  INVALID_DATA_ACCESS_TRAP(0x00000004),
  INVALID_PROCESS_ATTACH_ATTEMPT(0x00000005),
  INVALID_PROCESS_DETACH_ATTEMPT(0x00000006),
  INVALID_SOFTWARE_INTERRUPT(0x00000007),
  IRQL_NOT_DISPATCH_LEVEL(0x00000008),
  IRQL_NOT_GREATER_OR_EQUAL(0x00000009),
  IRQL_NOT_LESS_OR_EQUAL(0x0000000A),
  NO_EXCEPTION_HANDLING_SUPPORT(0x0000000B),
  MAXIMUM_WAIT_OBJECTS_EXCEEDED(0x0000000C),
  MUTEX_LEVEL_NUMBER_VIOLATION(0x0000000D),
  NO_USER_MODE_CONTEXT(0x0000000E),
  SPIN_LOCK_ALREADY_OWNED(0x0000000F),
  SPIN_LOCK_NOT_OWNED(0x00000010),
  THREAD_NOT_MUTEX_OWNER(0x00000011),
  TRAP_CAUSE_UNKNOWN(0x00000012),
  EMPTY_THREAD_REAPER_LIST(0x00000013),
  CREATE_DELETE_LOCK_NOT_LOCKED(0x00000014),
  LAST_CHANCE_CALLED_FROM_KMODE(0x00000015),
  CID_HANDLE_CREATION(0x00000016),
  CID_HANDLE_DELETION(0x00000017),
  REFERENCE_BY_POINTER(0x00000018),
  BAD_POOL_HEADER(0x00000019),
  MEMORY_MANAGEMENT(0x0000001A),
  PFN_SHARE_COUNT(0x0000001B),
  PFN_REFERENCE_COUNT(0x0000001C),
  NO_SPIN_LOCK_AVAILABLE(0x0000001D),
  KMODE_EXCEPTION_NOT_HANDLED(0x0000001E),
  SHARED_RESOURCE_CONV_ERROR(0x0000001F),
  KERNEL_APC_PENDING_DURING_EXIT(0x00000020),
  QUOTA_UNDERFLOW(0x00000021),
  FILE_SYSTEM(0x00000022),
  FAT_FILE_SYSTEM(0x00000023),
  NTFS_FILE_SYSTEM(0x00000024),
  NPFS_FILE_SYSTEM(0x00000025),
  CDFS_FILE_SYSTEM(0x00000026),
  RDR_FILE_SYSTEM(0x00000027),
  CORRUPT_ACCESS_TOKEN(0x00000028),
  SECURITY_SYSTEM(0x00000029),
  INCONSISTENT_IRP(0x0000002A),
  PANIC_STACK_SWITCH(0x0000002B),
  PORT_DRIVER_INTERNAL(0x0000002C),
  SCSI_DISK_DRIVER_INTERNAL(0x0000002D),
  DATA_BUS_ERROR(0x0000002E),
  INSTRUCTION_BUS_ERROR(0x0000002F),
  SET_OF_INVALID_CONTEXT(0x00000030),
  PHASE0_INITIALIZATION_FAILED(0x00000031),
  PHASE1_INITIALIZATION_FAILED(0x00000032),
  UNEXPECTED_INITIALIZATION_CALL(0x00000033),
  CACHE_MANAGER(0x00000034),
  NO_MORE_IRP_STACK_LOCATIONS(0x00000035),
  DEVICE_REFERENCE_COUNT_NOT_ZERO(0x00000036),
  FLOPPY_INTERNAL_ERROR(0x00000037),
  SERIAL_DRIVER_INTERNAL(0x00000038),
  SYSTEM_EXIT_OWNED_MUTEX(0x00000039),
  SYSTEM_UNWIND_PREVIOUS_USER(0x0000003A),
  SYSTEM_SERVICE_EXCEPTION(0x0000003B),
  INTERRUPT_UNWIND_ATTEMPTED(0x0000003C),
  INTERRUPT_EXCEPTION_NOT_HANDLED(0x0000003D),
  MULTIPROCESSOR_CONFIGURATION_NOT_SUPPORTED(0x0000003E),
  NO_MORE_SYSTEM_PTES(0x0000003F),
  TARGET_MDL_TOO_SMALL(0x00000040),
  MUST_SUCCEED_POOL_EMPTY(0x00000041),
  ATDISK_DRIVER_INTERNAL(0x00000042),
  NO_SUCH_PARTITION(0x00000043),
  MULTIPLE_IRP_COMPLETE_REQUESTS(0x00000044),
  INSUFFICIENT_SYSTEM_MAP_REGS(0x00000045),
  DEREF_UNKNOWN_LOGON_SESSION(0x00000046),
  REF_UNKNOWN_LOGON_SESSION(0x00000047),
  CANCEL_STATE_IN_COMPLETED_IRP(0x00000048),
  PAGE_FAULT_WITH_INTERRUPTS_OFF(0x00000049),
  IRQL_GT_ZERO_AT_SYSTEM_SERVICE(0x0000004A),
  STREAMS_INTERNAL_ERROR(0x0000004B),
  FATAL_UNHANDLED_HARD_ERROR(0x0000004C),
  NO_PAGES_AVAILABLE(0x0000004D),
  PFN_LIST_CORRUPT(0x0000004E),
  NDIS_INTERNAL_ERROR(0x0000004F),
  PAGE_FAULT_IN_NONPAGED_AREA(0x00000050),
  REGISTRY_ERROR(0x00000051),
  MAILSLOT_FILE_SYSTEM(0x00000052),
  NO_BOOT_DEVICE(0x00000053),
  LM_SERVER_INTERNAL_ERROR(0x00000054),
  DATA_COHERENCY_EXCEPTION(0x00000055),
  INSTRUCTION_COHERENCY_EXCEPTION(0x00000056),
  XNS_INTERNAL_ERROR(0x00000057),
  FTDISK_INTERNAL_ERROR(0x00000058),
  PINBALL_FILE_SYSTEM(0x00000059),
  CRITICAL_SERVICE_FAILED(0x0000005A),
  SET_ENV_VAR_FAILED(0x0000005B),
  HAL_INITIALIZATION_FAILED(0x0000005C),
  UNSUPPORTED_PROCESSOR(0x0000005D),
  OBJECT_INITIALIZATION_FAILED(0x0000005E),
  SECURITY_INITIALIZATION_FAILED(0x0000005F),
  PROCESS_INITIALIZATION_FAILED(0x00000060),
  HAL1_INITIALIZATION_FAILED(0x00000061),
  OBJECT1_INITIALIZATION_FAILED(0x00000062),
  SECURITY1_INITIALIZATION_FAILED(0x00000063),
  SYMBOLIC_INITIALIZATION_FAILED(0x00000064),
  MEMORY1_INITIALIZATION_FAILED(0x00000065),
  CACHE_INITIALIZATION_FAILED(0x00000066),
  CONFIG_INITIALIZATION_FAILED(0x00000067),
  FILE_INITIALIZATION_FAILED(0x00000068),
  IO1_INITIALIZATION_FAILED(0x00000069),
  LPC_INITIALIZATION_FAILED(0x0000006A),
  PROCESS1_INITIALIZATION_FAILED(0x0000006B),
  REFMON_INITIALIZATION_FAILED(0x0000006C),
  SESSION1_INITIALIZATION_FAILED(0x0000006D),
  SESSION2_INITIALIZATION_FAILED(0x0000006E),
  SESSION3_INITIALIZATION_FAILED(0x0000006F),
  SESSION4_INITIALIZATION_FAILED(0x00000070),
  SESSION5_INITIALIZATION_FAILED(0x00000071),
  ASSIGN_DRIVE_LETTERS_FAILED(0x00000072),
  CONFIG_LIST_FAILED(0x00000073),
  BAD_SYSTEM_CONFIG_INFO(0x00000074),
  CANNOT_WRITE_CONFIGURATION(0x00000075),
  PROCESS_HAS_LOCKED_PAGES(0x00000076),
  KERNEL_STACK_INPAGE_ERROR(0x00000077),
  PHASE0_EXCEPTION(0x00000078),
  MISMATCHED_HAL(0x00000079),
  KERNEL_DATA_INPAGE_ERROR(0x0000007A),
  INACCESSIBLE_BOOT_DEVICE(0x0000007B),
  BUGCODE_NDIS_DRIVER(0x0000007C),
  INSTALL_MORE_MEMORY(0x0000007D),
  SYSTEM_THREAD_EXCEPTION_NOT_HANDLED(0x0000007E),
  UNEXPECTED_KERNEL_MODE_TRAP(0x0000007F),
  NMI_HARDWARE_FAILURE(0x00000080),
  SPIN_LOCK_INIT_FAILURE(0x00000081),
  DFS_FILE_SYSTEM(0x00000082),
  SETUP_FAILURE(0x00000085),
  MBR_CHECKSUM_MISMATCH(0x0000008B),
  KERNEL_MODE_EXCEPTION_NOT_HANDLED(0x0000008E),
  PP0_INITIALIZATION_FAILED(0x0000008F),
  PP1_INITIALIZATION_FAILED(0x00000090),
  UP_DRIVER_ON_MP_SYSTEM(0x00000092),
  INVALID_KERNEL_HANDLE(0x00000093),
  KERNEL_STACK_LOCKED_AT_EXIT(0x00000094),
  INVALID_WORK_QUEUE_ITEM(0x00000096),
  BOUND_IMAGE_UNSUPPORTED(0x00000097),
  END_OF_NT_EVALUATION_PERIOD(0x00000098),
  INVALID_REGION_OR_SEGMENT(0x00000099),
  SYSTEM_LICENSE_VIOLATION(0x0000009A),
  UDFS_FILE_SYSTEM(0x0000009B),
  MACHINE_CHECK_EXCEPTION(0x0000009C),
  USER_MODE_HEALTH_MONITOR(0x0000009E),
  DRIVER_POWER_STATE_FAILURE(0x0000009F),
  INTERNAL_POWER_ERROR(0x000000A0),
  PCI_BUS_DRIVER_INTERNAL(0x000000A1),
  MEMORY_IMAGE_CORRUPT(0x000000A2),
  ACPI_DRIVER_INTERNAL(0x000000A3),
  CNSS_FILE_SYSTEM_FILTER(0x000000A4),
  ACPI_BIOS_ERROR(0x000000A5),
  BAD_EXHANDLE(0x000000A7),
  HAL_MEMORY_ALLOCATION(0x000000AC),
  VIDEO_DRIVER_DEBUG_REPORT_REQUEST(0x000000AD),
  BGI_DETECTED_VIOLATION(0x000000B1),
  VIDEO_DRIVER_INIT_FAILURE(0x000000B4),
  ATTEMPTED_SWITCH_FROM_DPC(0x000000B8),
  CHIPSET_DETECTED_ERROR(0x000000B9),
  SESSION_HAS_VALID_VIEWS_ON_EXIT(0x000000BA),
  NETWORK_BOOT_INITIALIZATION_FAILED(0x000000BB),
  NETWORK_BOOT_DUPLICATE_ADDRESS(0x000000BC),
  INVALID_HIBERNATED_STATE(0x000000BD),
  ATTEMPTED_WRITE_TO_READONLY_MEMORY(0x000000BE),
  MUTEX_ALREADY_OWNED(0x000000BF),
  SPECIAL_POOL_DETECTED_MEMORY_CORRUPTION(0x000000C1),
  BAD_POOL_CALLER(0x000000C2),
  DRIVER_VERIFIER_DETECTED_VIOLATION(0x000000C4),
  DRIVER_CORRUPTED_EXPOOL(0x000000C5),
  DRIVER_CAUGHT_MODIFYING_FREED_POOL(0x000000C6),
  TIMER_OR_DPC_INVALID(0x000000C7),
  IRQL_UNEXPECTED_VALUE(0x000000C8),
  DRIVER_VERIFIER_IOMANAGER_VIOLATION(0x000000C9),
  PNP_DETECTED_FATAL_ERROR(0x000000CA),
  DRIVER_LEFT_LOCKED_PAGES_IN_PROCESS(0x000000CB),
  PAGE_FAULT_IN_FREED_SPECIAL_POOL(0x000000CC),
  PAGE_FAULT_BEYOND_END_OF_ALLOCATION(0x000000CD),
  DRIVER_UNLOADED_WITHOUT_CANCELLING_PENDING_OPERATIONS(0x000000CE),
  TERMINAL_SERVER_DRIVER_MADE_INCORRECT_MEMORY_REFERENCE(0x000000CF),
  DRIVER_CORRUPTED_MMPOOL(0x000000D0),
  DRIVER_IRQL_NOT_LESS_OR_EQUAL(0x000000D1),
  BUGCODE_ID_DRIVER(0x000000D2),
  DRIVER_PORTION_MUST_BE_NONPAGED(0x000000D3),
  SYSTEM_SCAN_AT_RAISED_IRQL_CAUGHT_IMPROPER_DRIVER_UNLOAD(0x000000D4),
  DRIVER_PAGE_FAULT_IN_FREED_SPECIAL_POOL(0x000000D5),
  DRIVER_PAGE_FAULT_BEYOND_END_OF_ALLOCATION(0x000000D6),
  DRIVER_UNMAPPING_INVALID_VIEW(0x000000D7),
  DRIVER_USED_EXCESSIVE_PTES(0x000000D8),
  LOCKED_PAGES_TRACKER_CORRUPTION(0x000000D9),
  SYSTEM_PTE_MISUSE(0x000000DA),
  DRIVER_CORRUPTED_SYSPTES(0x000000DB),
  DRIVER_INVALID_STACK_ACCESS(0x000000DC),
  POOL_CORRUPTION_IN_FILE_AREA(0x000000DE),
  IMPERSONATING_WORKER_THREAD(0x000000DF),
  ACPI_BIOS_FATAL_ERROR(0x000000E0),
  WORKER_THREAD_RETURNED_AT_BAD_IRQL(0x000000E1),
  MANUALLY_INITIATED_CRASH(0x000000E2),
  RESOURCE_NOT_OWNED(0x000000E3),
  WORKER_INVALID(0x000000E4),
  DRIVER_VERIFIER_DMA_VIOLATION(0x000000E6),
  INVALID_FLOATING_POINT_STATE(0x000000E7),
  INVALID_CANCEL_OF_FILE_OPEN(0x000000E8),
  ACTIVE_EX_WORKER_THREAD_TERMINATION(0x000000E9),
  THREAD_STUCK_IN_DEVICE_DRIVER(0x000000EA),
  DIRTY_MAPPED_PAGES_CONGESTION(0x000000EB),
  SESSION_HAS_VALID_SPECIAL_POOL_ON_EXIT(0x000000EC),
  UNMOUNTABLE_BOOT_VOLUME(0x000000ED),
  CRITICAL_PROCESS_DIED(0x000000EF),
  STORAGE_MINIPORT_ERROR(0x000000F0),
  SCSI_VERIFIER_DETECTED_VIOLATION(0x000000F1),
  HARDWARE_INTERRUPT_STORM(0x000000F2),
  DISORDERLY_SHUTDOWN(0x000000F3),
  CRITICAL_OBJECT_TERMINATION(0x000000F4),
  FLTMGR_FILE_SYSTEM(0x000000F5),
  PCI_VERIFIER_DETECTED_VIOLATION(0x000000F6),
  DRIVER_OVERRAN_STACK_BUFFER(0x000000F7),
  RAMDISK_BOOT_INITIALIZATION_FAILED(0x000000F8),
  DRIVER_RETURNED_STATUS_REPARSE_FOR_VOLUME_OPEN(0x000000F9),
  HTTP_DRIVER_CORRUPTED(0x000000FA),
  ATTEMPTED_EXECUTE_OF_NOEXECUTE_MEMORY(0x000000FC),
  DIRTY_NOWRITE_PAGES_CONGESTION(0x000000FD),
  BUGCODE_USB_DRIVER(0x000000FE),
  RESERVE_QUEUE_OVERFLOW(0x000000FF),
  LOADER_BLOCK_MISMATCH(0x00000100),
  CLOCK_WATCHDOG_TIMEOUT(0x00000101),
  DPC_WATCHDOG_TIMEOUT(0x00000102),
  MUP_FILE_SYSTEM(0x00000103),
  AGP_INVALID_ACCESS(0x00000104),
  AGP_GART_CORRUPTION(0x00000105),
  AGP_ILLEGALLY_REPROGRAMMED(0x00000106),
  THIRD_PARTY_FILE_SYSTEM_FAILURE(0x00000108),
  CRITICAL_STRUCTURE_CORRUPTION(0x00000109),
  APP_TAGGING_INITIALIZATION_FAILED(0x0000010A),
  FSRTL_EXTRA_CREATE_PARAMETER_VIOLATION(0x0000010C),
  WDF_VIOLATION(0x0000010D),
  VIDEO_MEMORY_MANAGEMENT_INTERNAL(0x0000010E),
  RESOURCE_MANAGER_EXCEPTION_NOT_HANDLED(0x0000010F),
  RECURSIVE_NMI(0x00000111),
  MSRPC_STATE_VIOLATION(0x00000112),
  VIDEO_DXGKRNL_FATAL_ERROR(0x00000113),
  VIDEO_SHADOW_DRIVER_FATAL_ERROR(0x00000114),
  AGP_INTERNAL(0x00000115),
  VIDEO_TDR_FAILURE(0x00000116),
  VIDEO_TDR_TIMEOUT_DETECTED(0x00000117),
  VIDEO_SCHEDULER_INTERNAL_ERROR(0x00000119),
  EM_INITIALIZATION_FAILURE(0x0000011A),
  DRIVER_RETURNED_HOLDING_CANCEL_LOCK(0x0000011B),
  ATTEMPTED_WRITE_TO_CM_PROTECTED_STORAGE(0x0000011C),
  EVENT_TRACING_FATAL_ERROR(0x0000011D),
  TOO_MANY_RECURSIVE_FAULTS(0x0000011E),
  INVALID_DRIVER_HANDLE(0x0000011F),
  BITLOCKER_FATAL_ERROR(0x00000120),
  DRIVER_VIOLATION(0x00000121),
  WHEA_INTERNAL_ERROR(0x00000122),
  CRYPTO_SELF_TEST_FAILURE(0x00000123),
  WHEA_UNCORRECTABLE_ERROR(0x00000124),
  NMR_INVALID_STATE(0x00000125),
  NETIO_INVALID_POOL_CALLER(0x00000126),
  PAGE_NOT_ZERO(0x00000127),
  WORKER_THREAD_RETURNED_WITH_BAD_IO_PRIORITY(0x00000128),
  WORKER_THREAD_RETURNED_WITH_BAD_PAGING_IO_PRIORITY(0x00000129),
  MUI_NO_VALID_SYSTEM_LANGUAGE(0x0000012A),
  FAULTY_HARDWARE_CORRUPTED_PAGE(0x0000012B),
  EXFAT_FILE_SYSTEM(0x0000012C),
  VOLSNAP_OVERLAPPED_TABLE_ACCESS(0x0000012D),
  INVALID_MDL_RANGE(0x0000012E),
  VHD_BOOT_INITIALIZATION_FAILED(0x0000012F),
  DYNAMIC_ADD_PROCESSOR_MISMATCH(0x00000130),
  INVALID_EXTENDED_PROCESSOR_STATE(0x00000131),
  RESOURCE_OWNER_POINTER_INVALID(0x00000132),
  DPC_WATCHDOG_VIOLATION(0x00000133),
  DRIVE_EXTENDER(0x00000134),
  REGISTRY_FILTER_DRIVER_EXCEPTION(0x00000135),
  VHD_BOOT_HOST_VOLUME_NOT_ENOUGH_SPACE(0x00000136),
  WIN32K_HANDLE_MANAGER(0x00000137),
  GPIO_CONTROLLER_DRIVER_ERROR(0x00000138),
  KERNEL_SECURITY_CHECK_FAILURE(0x00000139),
  KERNEL_MODE_HEAP_CORRUPTION(0x0000013A),
  PASSIVE_INTERRUPT_ERROR(0x0000013B),
  INVALID_IO_BOOST_STATE(0x0000013C),
  CRITICAL_INITIALIZATION_FAILURE(0x0000013D),
  STORAGE_DEVICE_ABNORMALITY_DETECTED(0x00000140),
  PROCESSOR_DRIVER_INTERNAL(0x00000143),
  BUGCODE_USB3_DRIVER(0x00000144),
  SECURE_BOOT_VIOLATION(0x00000145),
  ABNORMAL_RESET_DETECTED(0x00000147),
  REFS_FILE_SYSTEM(0x00000149),
  KERNEL_WMI_INTERNAL(0x0000014A),
  SOC_SUBSYSTEM_FAILURE(0x0000014B),
  FATAL_ABNORMAL_RESET_ERROR(0x0000014C),
  EXCEPTION_SCOPE_INVALID(0x0000014D),
  SOC_CRITICAL_DEVICE_REMOVED(0x0000014E),
  PDC_WATCHDOG_TIMEOUT(0x0000014F),
  TCPIP_AOAC_NIC_ACTIVE_REFERENCE_LEAK(0x00000150),
  UNSUPPORTED_INSTRUCTION_MODE(0x00000151),
  INVALID_PUSH_LOCK_FLAGS(0x00000152),
  KERNEL_LOCK_ENTRY_LEAKED_ON_THREAD_TERMINATION(0x00000153),
  UNEXPECTED_STORE_EXCEPTION(0x00000154),
  OS_DATA_TAMPERING(0x00000155),
  KERNEL_THREAD_PRIORITY_FLOOR_VIOLATION(0x00000157),
  ILLEGAL_IOMMU_PAGE_FAULT(0x00000158),
  HAL_ILLEGAL_IOMMU_PAGE_FAULT(0x00000159),
  SDBUS_INTERNAL_ERROR(0x0000015A),
  WORKER_THREAD_RETURNED_WITH_SYSTEM_PAGE_PRIORITY_ACTIVE(0x0000015B),
  WIN32K_ATOMIC_CHECK_FAILURE(0x00000160),
  KERNEL_AUTO_BOOST_INVALID_LOCK_RELEASE(0x00000162),
  WORKER_THREAD_TEST_CONDITION(0x00000163),
  WIN32K_CRITICAL_FAILURE(0x00000164),
  INVALID_RUNDOWN_PROTECTION_FLAGS(0x0000016C),
  INVALID_SLOT_ALLOCATOR_FLAGS(0x0000016D),
  ERESOURCE_INVALID_RELEASE(0x0000016E),
  CLUSTER_CSV_CLUSSVC_DISCONNECT_WATCHDOG(0x00000170),
  CRYPTO_LIBRARY_INTERNAL_ERROR(0x00000171),
  COREMSGCALL_INTERNAL_ERROR(0x00000173),
  COREMSG_INTERNAL_ERROR(0x00000174),
  ELAM_DRIVER_DETECTED_FATAL_ERROR(0x00000178),
  PROFILER_CONFIGURATION_ILLEGAL(0x0000017B),
  MICROCODE_REVISION_MISMATCH(0x0000017E),
  VIDEO_DWMINIT_TIMEOUT_FALLBACK_BDD(0x00000187),
  BAD_OBJECT_HEADER(0x00000189),
  SECURE_KERNEL_ERROR(0x0000018B),
  HYPERGUARD_VIOLATION(0x0000018C),
  SECURE_FAULT_UNHANDLED(0x0000018D),
  KERNEL_PARTITION_REFERENCE_VIOLATION(0x0000018E),
  PF_DETECTED_CORRUPTION(0x00000191),
  KERNEL_AUTO_BOOST_LOCK_ACQUISITION_WITH_RAISED_IRQL(0x00000192),
  LOADER_ROLLBACK_DETECTED(0x00000196),
  WIN32K_SECURITY_FAILURE(0x00000197),
  KERNEL_STORAGE_SLOT_IN_USE(0x00000199),
  WORKER_THREAD_RETURNED_WHILE_ATTACHED_TO_SILO(0x0000019A),
  TTM_FATAL_ERROR(0x0000019B),
  WIN32K_POWER_WATCHDOG_TIMEOUT(0x0000019C),
  TTM_WATCHDOG_TIMEOUT(0x000001A0),
  WIN32K_CALLOUT_WATCHDOG_BUGCHECK(0x000001A2),
  EXCEPTION_ON_INVALID_STACK(0x000001AA),
  UNWIND_ON_INVALID_STACK(0x000001AB),
  FAST_ERESOURCE_PRECONDITION_VIOLATION(0x000001C6),
  STORE_DATA_STRUCTURE_CORRUPTION(0x000001C7),
  MANUALLY_INITIATED_POWER_BUTTON_HOLD(0x000001C8),
  SYNTHETIC_WATCHDOG_TIMEOUT(0x000001CA),
  INVALID_SILO_DETACH(0x000001CB),
  INVALID_CALLBACK_STACK_ADDRESS(0x000001CD),
  INVALID_KERNEL_STACK_ADDRESS(0x000001CE),
  HARDWARE_WATCHDOG_TIMEOUT(0x000001CF),
  CPI_FIRMWARE_WATCHDOG_TIMEOUT(0x000001D0),
  WORKER_THREAD_INVALID_STATE(0x000001D2),
  WFP_INVALID_OPERATION(0x000001D3),
  DRIVER_PNP_WATCHDOG(0x000001D5),
  WORKER_THREAD_RETURNED_WITH_NON_DEFAULT_WORKLOAD_CLASS(0x000001D6),
  EFS_FATAL_ERROR(0x000001D7),
  UCMUCSI_FAILURE(0x000001D8),
  HAL_IOMMU_INTERNAL_ERROR(0x000001D9),
  HAL_BLOCKED_PROCESSOR_INTERNAL_ERROR(0x000001DA),
  IPI_WATCHDOG_TIMEOUT(0x000001DB),
  DMA_COMMON_BUFFER_VECTOR_ERROR(0x000001DC),
  BUGCODE_MBBADAPTER_DRIVER(0x000001DD),
  BUGCODE_WIFIADAPTER_DRIVER(0x000001DE),
  PROCESSOR_START_TIMEOUT(0x000001DF),
  VIDEO_DXGKRNL_SYSMM_FATAL_ERROR(0x000001E4),
  ILLEGAL_ATS_INITIALIZATION(0x000001E9),
  SECURE_PCI_CONFIG_SPACE_ACCESS_VIOLATION(0x000001EA),
  DAM_WATCHDOG_TIMEOUT(0x000001EB),
  HANDLE_ERROR_ON_CRITICAL_THREAD(0x000001ED),
  XBOX_ERACTRL_CS_TIMEOUT(0x00000356),
  BC_BLUETOOTH_VERIFIER_FAULT(0x00000BFE),
  BC_BTHMINI_VERIFIER_FAULT(0x00000BFF),
  HYPERVISOR_ERROR(0x00020001),
  SYSTEM_THREAD_EXCEPTION_NOT_HANDLED_M(0x1000007E),
  UNEXPECTED_KERNEL_MODE_TRAP_M(0x1000007F),
  KERNEL_MODE_EXCEPTION_NOT_HANDLED_M(0x1000008E),
  THREAD_STUCK_IN_DEVICE_DRIVER_M(0x100000EA),
  THREAD_TERMINATE_HELD_MUTEX(0x4000008A),
  STATUS_CANNOT_LOAD_REGISTRY_FILE(0xC0000218),
  WINLOGON_FATAL_ERROR(0xC000021A),
  STATUS_IMAGE_CHECKSUM_MISMATCH(0xC0000221),
  MANUALLY_INITIATED_CRASH1(0xDEADDEAD);

  final int code;
  
  const StopCode(this.code);
}
