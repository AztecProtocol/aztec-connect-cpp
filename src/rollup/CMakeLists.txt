if(NOT WASM)
  include(FetchContent)
  FetchContent_Declare(
      leveldb
      GIT_REPOSITORY https://github.com/google/leveldb.git
      GIT_TAG 1.22
  )

  FetchContent_GetProperties(leveldb)
  if(NOT leveldb_POPULATED)
      FetchContent_Populate(leveldb)
      set(LEVELDB_BUILD_TESTS OFF CACHE BOOL "LevelDB tests off")
      add_subdirectory(${leveldb_SOURCE_DIR} ${leveldb_BINARY_DIR} EXCLUDE_FROM_ALL)
  endif()

  target_compile_options(
      leveldb
      PRIVATE
      -Wno-sign-conversion
      -Wno-unused-parameter
      -Wno-shorten-64-to-32
      -Wno-implicit-int-conversion
      -Wno-conversion
      -Wno-implicit-fallthrough
  )

  link_libraries(leveldb)

  add_subdirectory(db_cli)
  add_subdirectory(keygen)
  add_subdirectory(rollup_cli)
  add_subdirectory(tx_factory)
endif()

add_subdirectory(proofs)
add_subdirectory(ci_failsafe)