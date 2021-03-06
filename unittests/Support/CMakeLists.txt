set(LLVM_LINK_COMPONENTS
  ${LLVM_TARGETS_TO_BUILD}
  Support
  )

add_llvm_unittest(SupportTests
  AlignOfTest.cpp
  AllocatorTest.cpp
  ArrayRecyclerTest.cpp
  BlockFrequencyTest.cpp
  BranchProbabilityTest.cpp
  Casting.cpp
  CommandLineTest.cpp
  CompressionTest.cpp
  ConvertUTFTest.cpp
  DataExtractorTest.cpp
  DwarfTest.cpp
  EndianStreamTest.cpp
  EndianTest.cpp
  ErrorOrTest.cpp
  FileOutputBufferTest.cpp
  IteratorTest.cpp
  LEB128Test.cpp
  LineIteratorTest.cpp
  LockFileManagerTest.cpp
  MD5Test.cpp
  ManagedStatic.cpp
  MathExtrasTest.cpp
  MemoryBufferTest.cpp
  MemoryTest.cpp
  Path.cpp
  ProcessTest.cpp
  ProgramTest.cpp
  RegexTest.cpp
  ReplaceFileTest.cpp
  ScaledNumberTest.cpp
  SourceMgrTest.cpp
  SpecialCaseListTest.cpp
  StreamingMemoryObject.cpp
  StringPool.cpp
  SwapByteOrderTest.cpp
  TargetRegistry.cpp
  ThreadLocalTest.cpp
  ThreadPool.cpp
  TimeValueTest.cpp
  TrailingObjectsTest.cpp
  UnicodeTest.cpp
  YAMLIOTest.cpp
  YAMLParserTest.cpp
  formatted_raw_ostream_test.cpp
  raw_ostream_test.cpp
  raw_pwrite_stream_test.cpp
  )

# ManagedStatic.cpp uses <pthread>.
if(LLVM_ENABLE_THREADS AND HAVE_LIBPTHREAD)
  target_link_libraries(SupportTests pthread)
endif()
