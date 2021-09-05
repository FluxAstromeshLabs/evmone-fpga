# 1 "keccak256.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 359 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "D:/Xillin/Vitis_HLS/2020.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h" 1
# 314 "D:/Xillin/Vitis_HLS/2020.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite() __attribute__ ((nothrow));


    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite() __attribute__ ((nothrow));
    void _ssdm_op_ReadReq() __attribute__ ((nothrow));
    void _ssdm_op_Read() __attribute__ ((nothrow));
    void _ssdm_op_WriteReq() __attribute__ ((nothrow));
    void _ssdm_op_Write() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbReadReq() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbWriteReq() __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_op_SpecStable() __attribute__ ((nothrow));
    void _ssdm_op_SpecStableContent() __attribute__ ((nothrow));

    void _ssdm_op_SpecBindPort() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipoDepth() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));
# 2 "<built-in>" 2
# 1 "keccak256.c" 2
# 20 "keccak256.c"
# 1 "./keccak256.h" 1
# 23 "./keccak256.h"
# 1 "D:\\Xillin\\Vitis_HLS\\2020.2\\win64\\tools\\clang-3.9-csynth\\lib\\clang\\7.0.0\\include\\stdint.h" 1 3
# 63 "D:\\Xillin\\Vitis_HLS\\2020.2\\win64\\tools\\clang-3.9-csynth\\lib\\clang\\7.0.0\\include\\stdint.h" 3
# 1 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\stdint.h" 1 3
# 28 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\stdint.h" 3
# 1 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 1 3
# 10 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
# 1 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 1 3
# 12 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 3
# 1 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include/_mingw_mac.h" 1 3
# 13 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 1 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include/_mingw_secapi.h" 1 3
# 14 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 275 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 3
# 1 "D:\\Xillin\\Vitis_HLS\\2020.2\\win64\\tools\\clang-3.9-csynth\\lib\\clang\\7.0.0\\include\\vadefs.h" 1 3
# 26 "D:\\Xillin\\Vitis_HLS\\2020.2\\win64\\tools\\clang-3.9-csynth\\lib\\clang\\7.0.0\\include\\vadefs.h" 3
# 1 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\vadefs.h" 1 3








# 1 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 1 3
# 565 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 3
# 1 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include/sdks/_mingw_directx.h" 1 3
# 566 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 1 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include/sdks/_mingw_ddk.h" 1 3
# 567 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 10 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\vadefs.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 24 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\vadefs.h" 3
 typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 103 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\vadefs.h" 3
#pragma pack(pop)
# 27 "D:\\Xillin\\Vitis_HLS\\2020.2\\win64\\tools\\clang-3.9-csynth\\lib\\clang\\7.0.0\\include\\vadefs.h" 2 3
# 276 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 548 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 3
const char *__mingw_get_crt_info (void);
# 11 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 35 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef unsigned long size_t;
# 45 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef long ssize_t;






typedef size_t rsize_t;
# 62 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef long intptr_t;
# 75 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef unsigned long uintptr_t;
# 88 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef long ptrdiff_t;
# 98 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
typedef unsigned short wchar_t;







typedef unsigned short wint_t;
typedef unsigned short wctype_t;





typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long __time64_t;
# 138 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
typedef __time64_t time_t;
# 422 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {
  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;
} threadlocinfo;







#pragma pack(pop)
# 29 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\stdint.h" 2 3



# 1 "D:\\Xillin\\Vitis_HLS\\2020.2\\win64\\tools\\clang-3.9-csynth\\lib\\clang\\7.0.0\\include\\stddef.h" 1 3
# 90 "D:\\Xillin\\Vitis_HLS\\2020.2\\win64\\tools\\clang-3.9-csynth\\lib\\clang\\7.0.0\\include\\stddef.h" 3
typedef unsigned short wchar_t;
# 33 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\stdint.h" 2 3


typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned uint32_t;
__extension__ typedef long long int64_t;
__extension__ typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned uint_least32_t;
__extension__ typedef long long int_least64_t;
__extension__ typedef unsigned long long uint_least64_t;





typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
__extension__ typedef long long int_fast64_t;
__extension__ typedef unsigned long long uint_fast64_t;


__extension__ typedef long long intmax_t;
__extension__ typedef unsigned long long uintmax_t;
# 64 "D:\\Xillin\\Vitis_HLS\\2020.2\\win64\\tools\\clang-3.9-csynth\\lib\\clang\\7.0.0\\include\\stdint.h" 2 3
# 24 "./keccak256.h" 2




typedef struct SHA3_CTX {

    uint64_t hash[25];

    uint64_t message[24];

    uint16_t rest;


} SHA3_CTX;







void keccak_init(SHA3_CTX *ctx);
void keccak_update(SHA3_CTX *ctx, const unsigned char *msg, uint16_t size);
void keccak_final(SHA3_CTX *ctx, unsigned char* result);

void compute_keccak(const unsigned char* msg, size_t msglen, unsigned char* output);
# 21 "keccak256.c" 2



# 1 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\string.h" 1 3
# 36 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\string.h" 3
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _memccpy(void *_Dst,const void *_Src,int _Val,size_t _MaxCount);
                void *__attribute__((__cdecl__)) memchr(const void *_Buf ,int _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp_l(const void *_Buf1,const void *_Buf2,size_t _Size,_locale_t _Locale);
  int __attribute__((__cdecl__)) memcmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  void * __attribute__((__cdecl__)) memcpy(void * __restrict__ _Dst,const void * __restrict__ _Src,size_t _Size) ;
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) memcpy_s (void *_dest,size_t _numberOfElements,const void *_src,size_t _count);
  void * __attribute__((__cdecl__)) mempcpy (void *_Dst, const void *_Src, size_t _Size);
  void * __attribute__((__cdecl__)) memset(void *_Dst,int _Val,size_t _Size);

  void * __attribute__((__cdecl__)) memccpy(void *_Dst,const void *_Src,int _Val,size_t _Size) ;
  int __attribute__((__cdecl__)) memicmp(const void *_Buf1,const void *_Buf2,size_t _Size) ;


  char * __attribute__((__cdecl__)) _strset(char *_Str,int _Val) ;
  char * __attribute__((__cdecl__)) _strset_l(char *_Str,int _Val,_locale_t _Locale) ;
  char * __attribute__((__cdecl__)) strcpy(char * __restrict__ _Dest,const char * __restrict__ _Source);
  char * __attribute__((__cdecl__)) strcat(char * __restrict__ _Dest,const char * __restrict__ _Source);
  int __attribute__((__cdecl__)) strcmp(const char *_Str1,const char *_Str2);
  size_t __attribute__((__cdecl__)) strlen(const char *_Str);
  size_t __attribute__((__cdecl__)) strnlen(const char *_Str,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memmove(void *_Dst,const void *_Src,size_t _Size) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strdup(const char *_Src);
                char *__attribute__((__cdecl__)) strchr(const char *_Str,int _Val);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcmpi(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  int __attribute__((__cdecl__)) strcoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  size_t __attribute__((__cdecl__)) strcspn(const char *_Str,const char *_Control);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strerror(const char *_ErrMsg) ;
  char *__attribute__((__cdecl__)) strerror(int) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strlwr(char *_String) ;
  char *strlwr_l(char *_String,_locale_t _Locale) ;
  char *__attribute__((__cdecl__)) strncat(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) strncmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  char *strncpy(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset(char *_Str,int _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset_l(char *str,int c,size_t count,_locale_t _Locale) ;
                char *__attribute__((__cdecl__)) strpbrk(const char *_Str,const char *_Control);
                char *__attribute__((__cdecl__)) strrchr(const char *_Str,int _Ch);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strrev(char *_Str);
  size_t __attribute__((__cdecl__)) strspn(const char *_Str,const char *_Control);
                char *__attribute__((__cdecl__)) strstr(const char *_Str,const char *_SubStr);
  char *__attribute__((__cdecl__)) strtok(char * __restrict__ _Str,const char * __restrict__ _Delim) ;


  char *strtok_r(char * __restrict__ _Str, const char * __restrict__ _Delim, char ** __restrict__ __last);

  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strupr(char *_String) ;
  __attribute__ ((__dllimport__)) char *_strupr_l(char *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) strxfrm(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _strxfrm_l(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);


  char *__attribute__((__cdecl__)) strdup(const char *_Src) ;
  int __attribute__((__cdecl__)) strcmpi(const char *_Str1,const char *_Str2) ;
  int __attribute__((__cdecl__)) stricmp(const char *_Str1,const char *_Str2) ;
  char *__attribute__((__cdecl__)) strlwr(char *_Str) ;
  int __attribute__((__cdecl__)) strnicmp(const char *_Str1,const char *_Str,size_t _MaxCount) ;
  int __attribute__((__cdecl__)) strncasecmp (const char *, const char *, size_t);
  int __attribute__((__cdecl__)) strcasecmp (const char *, const char *);







  char *__attribute__((__cdecl__)) strnset(char *_Str,int _Val,size_t _MaxCount) ;
  char *__attribute__((__cdecl__)) strrev(char *_Str) ;
  char *__attribute__((__cdecl__)) strset(char *_Str,int _Val) ;
  char *__attribute__((__cdecl__)) strupr(char *_Str) ;





  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsdup(const wchar_t *_Str);
  wchar_t *__attribute__((__cdecl__)) wcscat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
                wchar_t *__attribute__((__cdecl__)) wcschr(const wchar_t *_Str,wchar_t _Ch);
  int __attribute__((__cdecl__)) wcscmp(const wchar_t *_Str1,const wchar_t *_Str2);
  wchar_t *__attribute__((__cdecl__)) wcscpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  size_t __attribute__((__cdecl__)) wcscspn(const wchar_t *_Str,const wchar_t *_Control);
  size_t __attribute__((__cdecl__)) wcslen(const wchar_t *_Str);
  size_t __attribute__((__cdecl__)) wcsnlen(const wchar_t *_Src,size_t _MaxCount);
  wchar_t *wcsncat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) wcsncmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  wchar_t *wcsncpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  wchar_t *__attribute__((__cdecl__)) _wcsncpy_l(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count,_locale_t _Locale) ;
                wchar_t *__attribute__((__cdecl__)) wcspbrk(const wchar_t *_Str,const wchar_t *_Control);
                wchar_t *__attribute__((__cdecl__)) wcsrchr(const wchar_t *_Str,wchar_t _Ch);
  size_t __attribute__((__cdecl__)) wcsspn(const wchar_t *_Str,const wchar_t *_Control);
                wchar_t *__attribute__((__cdecl__)) wcsstr(const wchar_t *_Str,const wchar_t *_SubStr);
  wchar_t *__attribute__((__cdecl__)) wcstok(wchar_t * __restrict__ _Str,const wchar_t * __restrict__ _Delim) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcserror(int _ErrNum) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) __wcserror(const wchar_t *_Str) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsrev(wchar_t *_Str);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsset(wchar_t *_Str,wchar_t _Val) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcslwr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcslwr_l(wchar_t *_String,_locale_t _Locale) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsupr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcsupr_l(wchar_t *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) wcsxfrm(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _wcsxfrm_l(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);
  int __attribute__((__cdecl__)) wcscoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcscoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);


  wchar_t *__attribute__((__cdecl__)) wcsdup(const wchar_t *_Str) ;

  int __attribute__((__cdecl__)) wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2) ;
  int __attribute__((__cdecl__)) wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsrev(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsset(wchar_t *_Str,wchar_t _Val) ;
  wchar_t *__attribute__((__cdecl__)) wcslwr(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsupr(wchar_t *_Str) ;
  int __attribute__((__cdecl__)) wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2) ;








# 1 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\sec_api/string_s.h" 1 3








# 1 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\string.h" 1 3
# 10 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\sec_api/string_s.h" 2 3







  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strset_s(char *_Dst,size_t _DstSize,int _Value);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strerror_s(char *_Buf,size_t _SizeInBytes,const char *_ErrMsg);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strerror_s(char *_Buf,size_t _SizeInBytes,int _ErrNum);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s(char *_Str,size_t _Size);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s_l(char *_Str,size_t _Size,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strnset_s(char *_Str,size_t _Size,int _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s(char *_Str,size_t _Size);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s_l(char *_Str,size_t _Size,_locale_t _Locale);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncat_s(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncat_s_l(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcpy_s(char *_Dst, rsize_t _SizeInBytes, const char *_Src);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncpy_s(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncpy_s_l(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) strtok_s(char *_Str,const char *_Delim,char **_Context);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strtok_s_l(char *_Str,const char *_Delim,char **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcat_s(char *_Dst, rsize_t _SizeInBytes, const char * _Src);


  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) memmove_s(void *_dest,size_t _numberOfElements,const void *_src,size_t _count);


  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) wcstok_s(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcserror_s(wchar_t *_Buf,size_t _SizeInWords,int _ErrNum);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) __wcserror_s(wchar_t *_Buffer,size_t _SizeInWords,const wchar_t *_ErrMsg);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s(wchar_t *_Dst,size_t _DstSizeInWords,wchar_t _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s(wchar_t *_Str,size_t _SizeInWords,wchar_t _Val);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s(wchar_t *_Str,size_t _SizeInWords);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s_l(wchar_t *_Str,size_t _SizeInWords,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s(wchar_t *_Str,size_t _Size);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s_l(wchar_t *_Str,size_t _Size,_locale_t _Locale);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscpy_s(wchar_t *_Dst, rsize_t _SizeInWords, const wchar_t *_Src);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscat_s(wchar_t * _Dst, rsize_t _SizeInWords, const wchar_t *_Src);


  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncat_s(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncat_s_l(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncpy_s(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncpy_s_l(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcstok_s_l(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s_l(wchar_t *_Str,size_t _SizeInChars,unsigned int _Val,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s_l(wchar_t *_Str,size_t _SizeInChars,unsigned int _Val, size_t _Count,_locale_t _Locale);

  extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) size_t __attribute__((__cdecl__)) wcsnlen_s(const wchar_t * _src, size_t _count) {
    return _src ? wcsnlen(_src, _count) : 0;
  }
# 182 "D:/Xillin/Vitis_HLS/2020.2/tps/mingw/6.2.0/win64.o/nt\\x86_64-w64-mingw32\\include\\string.h" 2 3
# 25 "keccak256.c" 2
# 39 "keccak256.c"
const uint8_t constants[] = {

    1, 26, 94, 112, 31, 33, 121, 85, 14, 12, 53, 38, 63, 79, 93, 83, 82, 72, 22, 102, 121, 88, 33, 116,



    1, 6, 9, 22, 14, 20, 2, 12, 13, 19, 23, 15, 4, 24, 21, 8, 16, 5, 3, 18, 17, 11, 7, 10,



    1, 62, 28, 27, 36, 44, 6, 55, 20, 3, 10, 43, 25, 39, 41, 45, 15, 21, 8, 18, 2, 61, 56, 14,
};





uint8_t getConstant(uint8_t type, uint8_t index) {
    return constants[type + index];

}

static uint64_t get_round_constant(uint8_t round) {
    uint64_t result = 0;


    uint8_t roundInfo = getConstant(0, round);
    if (roundInfo & (1 << 6)) { result |= ((uint64_t)1 << 63); }
    if (roundInfo & (1 << 5)) { result |= ((uint64_t)1 << 31); }
    if (roundInfo & (1 << 4)) { result |= ((uint64_t)1 << 15); }
    if (roundInfo & (1 << 3)) { result |= ((uint64_t)1 << 7); }
    if (roundInfo & (1 << 2)) { result |= ((uint64_t)1 << 3); }
    if (roundInfo & (1 << 1)) { result |= ((uint64_t)1 << 1); }
    if (roundInfo & (1 << 0)) { result |= ((uint64_t)1 << 0); }

    return result;
}



void keccak_init(SHA3_CTX *ctx) {


    memset(ctx, 0, sizeof(SHA3_CTX));
}


static void keccak_theta(uint64_t *A) {
    uint64_t C[5], D[5];
    uint8_t i, j;

    VITIS_LOOP_90_1: for (i = 0; i < 5; i++) {
        C[i] = A[i];
        VITIS_LOOP_92_2: for (uint8_t j = 5; j < 25; j += 5) { C[i] ^= A[i + j]; }
    }

    VITIS_LOOP_95_3: for (i = 0; i < 5; i++) {
        D[i] = ((C[(i + 1) % 5]) << (1) ^ ((C[(i + 1) % 5]) >> (64 - (1)))) ^ C[(i + 4) % 5];
    }

    VITIS_LOOP_99_4: for (i = 0; i < 5; i++) {

        VITIS_LOOP_101_5: for (j = 0; j < 25; j += 5) { A[i + j] ^= D[i]; }
    }
}



static void keccak_pi(uint64_t *A) {
    uint64_t A1 = A[1];

    VITIS_LOOP_110_1: for (uint8_t i = 1; i < 24; i++) {

        A[getConstant(24, i - 1)] = A[getConstant(24, i)];
    }
    A[10] = A1;

}






static void keccak_chi(uint64_t *A) {
    VITIS_LOOP_124_1: for (uint8_t i = 0; i < 25; i += 5) {
        uint64_t A0 = A[0 + i], A1 = A[1 + i];
        A[0 + i] ^= ~A1 & A[2 + i];
        A[1 + i] ^= ~A[2 + i] & A[3 + i];
        A[2 + i] ^= ~A[3 + i] & A[4 + i];
        A[3 + i] ^= ~A[4 + i] & A0;
        A[4 + i] ^= ~A0 & A1;
    }
}


static void sha3_permutation(uint64_t *state) {

    VITIS_LOOP_137_1: for (uint8_t round = 0; round < 24; round++) {
        keccak_theta(state);


        VITIS_LOOP_141_2: for (uint8_t i = 1; i < 25; i++) {

            state[i] = ((state[i]) << (getConstant(48, i - 1)) ^ ((state[i]) >> (64 - (getConstant(48, i - 1)))));
        }

        keccak_pi(state);
        keccak_chi(state);


        *state ^= get_round_constant(round);
    }
}
# 161 "keccak256.c"
static void sha3_process_block(uint64_t hash[25], const uint64_t *block) {
    VITIS_LOOP_162_1: for (uint8_t i = 0; i < 17; i++) {
        hash[i] ^= (block[i]);
    }


    sha3_permutation(hash);
}
# 181 "keccak256.c"
void keccak_update(SHA3_CTX *ctx, const unsigned char *msg, uint16_t size)
{
    uint16_t idx = (uint16_t)ctx->rest;


    ctx->rest = (unsigned)((ctx->rest + size) % ((1600 - 256 * 2) / 8));


    if (idx) {
        uint16_t left = ((1600 - 256 * 2) / 8) - idx;
        memcpy((char*)ctx->message + idx, msg, (size < left ? size : left));
        if (size < left) return;


        sha3_process_block(ctx->hash, ctx->message);
        msg += left;
        size -= left;
    }
# 215 "keccak256.c"
    uint64_t i, blockCount = size / ((1600 - 256 * 2) / 8);
    uint64_t byteIndex = 0;
    VITIS_LOOP_217_1: for(i = 0; i < blockCount; ++i) {

        if ((0 == (7 & ((const char*)(&msg[byteIndex]) - (const char*)0)))) {


         sha3_process_block(ctx->hash, &msg[byteIndex]);
        } else {
            memcpy(ctx->message, &msg[byteIndex], ((1600 - 256 * 2) / 8));

         sha3_process_block(ctx->hash, ctx->message);
        }




        byteIndex += ((1600 - 256 * 2) / 8);
        size -= ((1600 - 256 * 2) / 8);
    }

    if (size) {
        memcpy(ctx->message, msg, size);
    }
}







void keccak_final(SHA3_CTX *ctx, unsigned char* result)
{
    uint16_t digest_length = 100 - ((1600 - 256 * 2) / 8) / 2;



        memset((char*)ctx->message + ctx->rest, 0, ((1600 - 256 * 2) / 8) - ctx->rest);
        ((char*)ctx->message)[ctx->rest] |= 0x01;
        ((char*)ctx->message)[((1600 - 256 * 2) / 8) - 1] |= 0x80;


        sha3_process_block(ctx->hash, ctx->message);





         memcpy((result), (ctx->hash), (digest_length));

}


void compute_keccak(const unsigned char* msg, size_t msglen, unsigned char* output) {
 SHA3_CTX keccak_context;
 keccak_init (&keccak_context);
 keccak_update(&keccak_context, msg, msglen);
 keccak_final (&keccak_context, output);
}
