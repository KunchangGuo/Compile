
;; Function main (main, funcdef_no=1812, decl_uid=45098, cgraph_uid=546, symbol_order=576)

int main ()
{
  struct basic_ostream & D.49925;
  struct basic_ostream & D.49924;
  struct basic_ostream & D.49923;
  struct basic_ostream & D.49922;
  struct basic_ostream & D.49921;
  int n;
  int t;
  int i;
  int b;
  int a;
  int D.49919;

  a = 0;
  b = 1;
  i = 1;
  std::basic_istream<char>::operator>> (&cin, &n);
  D.49921 = std::operator<< <std::char_traits<char> > (&cout, "a=");
  _1 = D.49921;
  D.49922 = std::basic_ostream<char>::operator<< (_1, a);
  _2 = D.49922;
  std::basic_ostream<char>::operator<< (_2, endl);
  D.49923 = std::operator<< <std::char_traits<char> > (&cout, "X=");
  _3 = D.49923;
  D.49924 = std::basic_ostream<char>::operator<< (_3, 10);
  _4 = D.49924;
  std::basic_ostream<char>::operator<< (_4, endl);
  goto <D.45165>;
  <D.45166>:
  t = b;
  b = a + b;
  D.49925 = std::basic_ostream<char>::operator<< (&cout, b);
  _5 = D.49925;
  std::basic_ostream<char>::operator<< (_5, endl);
  a = t;
  i = i + 1;
  <D.45165>:
  n.0_6 = n;
  if (i < n.0_6) goto <D.45166>; else goto <D.45164>;
  <D.45164>:
  n = {CLOBBER};
  D.49919 = 0;
  goto <D.49920>;
  <D.49920>:
  return D.49919;
  <D.49926>:
  n = {CLOBBER};
  resx 1
}



;; Function std::endl<char, std::char_traits<char> > (_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, funcdef_no=2060, decl_uid=42529, cgraph_uid=794, symbol_order=827)

struct basic_ostream & std::endl<char, std::char_traits<char> > (struct basic_ostream & __os)
{
  struct basic_ostream & D.49932;
  struct basic_ostream & D.49931;
  char D.49930;
  struct basic_ostream & D.49928;

  _1 = __os->_vptr.basic_ostream;
  _2 = _1 + 18446744073709551592;
  _3 = MEM[(long int *)_2];
  _4 = (sizetype) _3;
  _5 = __os + _4;
  D.49930 = std::basic_ios<char>::widen (_5, 10);
  _6 = D.49930;
  _7 = (int) _6;
  D.49931 = std::basic_ostream<char>::put (__os, _7);
  _8 = D.49931;
  D.49932 = std::flush<char, std::char_traits<char> > (_8);
  D.49928 = D.49932;
  goto <D.49929>;
  <D.49929>:
  return D.49928;
}



;; Function std::basic_ios<char>::widen (_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc, funcdef_no=2140, decl_uid=41575, cgraph_uid=874, symbol_order=907)

char_type std::basic_ios<char>::widen (const struct basic_ios * const this, char __c)
{
  char_type D.49936;
  const struct ctype & D.49935;
  char_type D.49933;

  _1 = this->_M_ctype;
  D.49935 = std::__check_facet<std::ctype<char> > (_1);
  _2 = D.49935;
  _3 = (int) __c;
  D.49936 = std::ctype<char>::widen (_2, _3);
  D.49933 = D.49936;
  goto <D.49934>;
  <D.49934>:
  return D.49933;
}



;; Function std::__check_facet<std::ctype<char> > (_ZSt13__check_facetISt5ctypeIcEERKT_PS3_, funcdef_no=2185, decl_uid=48203, cgraph_uid=919, symbol_order=952)

const struct ctype & std::__check_facet<std::ctype<char> > (const struct ctype * __f)
{
  const struct ctype & D.49939;

  if (__f == 0B) goto <D.49937>; else goto <D.49938>;
  <D.49937>:
  std::__throw_bad_cast ();
  <D.49938>:
  D.49939 = __f;
  goto <D.49940>;
  <D.49940>:
  return D.49939;
}



;; Function std::ctype<char>::widen (_ZNKSt5ctypeIcE5widenEc, funcdef_no=1560, decl_uid=38013, cgraph_uid=531, symbol_order=560)

char_type std::ctype<char>::widen (const struct ctype * const this, char __c)
{
  char_type D.49945;
  char_type D.49943;

  _1 = this->_M_widen_ok;
  if (_1 != 0) goto <D.49941>; else goto <D.49942>;
  <D.49941>:
  __c.1_2 = (unsigned char) __c;
  _3 = (int) __c.1_2;
  D.49943 = this->_M_widen[_3];
  // predicted unlikely by early return (on trees) predictor.
  goto <D.49944>;
  <D.49942>:
  std::ctype<char>::_M_widen_init (this);
  _4 = this->D.38127._vptr.facet;
  _5 = _4 + 48;
  _6 = *_5;
  _7 = (int) __c;
  D.49945 = OBJ_TYPE_REF(_6;(const struct ctype)this->6) (this, _7);
  D.49943 = D.49945;
  goto <D.49944>;
  <D.49944>:
  return D.49943;
}



;; Function std::ctype<char>::do_widen (_ZNKSt5ctypeIcE8do_widenEc, funcdef_no=1565, decl_uid=38061, cgraph_uid=536, symbol_order=565)

char_type std::ctype<char>::do_widen (const struct ctype * const this, char __c)
{
  char_type D.49946;

  D.49946 = __c;
  goto <D.49947>;
  <D.49947>:
  return D.49946;
}



;; Function std::flush<char, std::char_traits<char> > (_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, funcdef_no=2141, decl_uid=42537, cgraph_uid=875, symbol_order=908)

struct basic_ostream & std::flush<char, std::char_traits<char> > (struct basic_ostream & __os)
{
  struct basic_ostream & D.49950;
  struct basic_ostream & D.49948;

  D.49950 = std::basic_ostream<char>::flush (__os);
  D.49948 = D.49950;
  goto <D.49949>;
  <D.49949>:
  return D.49948;
}



;; Function std::operator<< <std::char_traits<char> > (_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc, funcdef_no=2059, decl_uid=42572, cgraph_uid=793, symbol_order=826)

struct basic_ostream & std::operator<< <std::char_traits<char> > (struct basic_ostream & __out, const char * __s)
{
  long unsigned int D.49956;
  struct basic_ostream & D.49954;

  if (__s == 0B) goto <D.49951>; else goto <D.49952>;
  <D.49951>:
  _1 = __out->_vptr.basic_ostream;
  _2 = _1 + 18446744073709551592;
  _3 = MEM[(long int *)_2];
  _4 = (sizetype) _3;
  _5 = __out + _4;
  std::basic_ios<char>::setstate (_5, 1);
  goto <D.49953>;
  <D.49952>:
  D.49956 = std::char_traits<char>::length (__s);
  _6 = D.49956;
  _7 = (long int) _6;
  std::__ostream_insert<char, std::char_traits<char> > (__out, __s, _7);
  <D.49953>:
  D.49954 = __out;
  goto <D.49955>;
  <D.49955>:
  return D.49954;
}



;; Function std::basic_ios<char>::setstate (_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate, funcdef_no=2139, decl_uid=41525, cgraph_uid=873, symbol_order=906)

void std::basic_ios<char>::setstate (struct basic_ios * const this, iostate __state)
{
  _Ios_Iostate D.49957;

  D.49957 = std::basic_ios<char>::rdstate (this);
  _1 = D.49957;
  _2 = std::operator| (_1, __state);
  std::basic_ios<char>::clear (this, _2);
  return;
}



;; Function std::basic_ios<char>::rdstate (_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv, funcdef_no=2184, decl_uid=41520, cgraph_uid=918, symbol_order=951)

iostate std::basic_ios<char>::rdstate (const struct basic_ios * const this)
{
  iostate D.49958;

  D.49958 = this->D.41638._M_streambuf_state;
  goto <D.49959>;
  <D.49959>:
  return D.49958;
}



;; Function std::operator| (_ZStorSt12_Ios_IostateS_, funcdef_no=1414, decl_uid=35467, cgraph_uid=473, symbol_order=502)

_Ios_Iostate std::operator| (_Ios_Iostate __a, _Ios_Iostate __b)
{
  _Ios_Iostate D.49960;

  D.49960 = __a | __b;
  goto <D.49961>;
  <D.49961>:
  return D.49960;
}



;; Function std::char_traits<char>::length (_ZNSt11char_traitsIcE6lengthEPKc, funcdef_no=476, decl_uid=13412, cgraph_uid=126, symbol_order=135)

size_t std::char_traits<char>::length (const char_type * __s)
{
  size_t D.49967;
  size_t D.49965;
  bool retval.2;

  retval.2 = std::__constant_string_p<char> (__s);
  if (retval.2 != 0) goto <D.49963>; else goto <D.49964>;
  <D.49963>:
  D.49967 = __gnu_cxx::char_traits<char>::length (__s);
  D.49965 = D.49967;
  goto <D.49966>;
  <D.49964>:
  D.49965 = __builtin_strlen (__s);
  goto <D.49966>;
  <D.49966>:
  return D.49965;
}



;; Function std::__constant_string_p<char> (_ZSt19__constant_string_pIcEbPKT_, funcdef_no=477, decl_uid=13474, cgraph_uid=123, symbol_order=132)

__attribute__((always_inline))
bool std::__constant_string_p<char> (const char * __s)
{
  bool D.49968;

  D.49968 = 0;
  goto <D.49969>;
  <D.49969>:
  return D.49968;
}



;; Function __gnu_cxx::char_traits<char>::length (_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, funcdef_no=478, decl_uid=13504, cgraph_uid=125, symbol_order=134)

size_t __gnu_cxx::char_traits<char>::length (const char_type * __p)
{
  size_t __i;
  size_t D.49971;
  const char_type D.13543;
  bool retval.3;

  __i = 0;
  goto <D.13555>;
  <D.13556>:
  __i = __i + 1;
  <D.13555>:
  D.13543 = 0;
  _1 = __p + __i;
  _2 = __gnu_cxx::char_traits<char>::eq (_1, &D.13543);
  retval.3 = ~_2;
  D.13543 = {CLOBBER};
  if (retval.3 != 0) goto <D.13556>; else goto <D.13554>;
  <D.13554>:
  D.49971 = __i;
  goto <D.49972>;
  <D.49972>:
  return D.49971;
}



;; Function __gnu_cxx::char_traits<char>::eq (_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, funcdef_no=479, decl_uid=13494, cgraph_uid=124, symbol_order=133)

bool __gnu_cxx::char_traits<char>::eq (const char_type & __c1, const char_type & __c2)
{
  bool D.49973;

  _1 = *__c1;
  _2 = *__c2;
  D.49973 = _1 == _2;
  goto <D.49974>;
  <D.49974>:
  return D.49973;
}



;; Function std::basic_ostream<char>::operator<< (_ZNSolsEPFRSoS_E, funcdef_no=2061, decl_uid=42317, cgraph_uid=795, symbol_order=828)

struct __ostream_type & std::basic_ostream<char>::operator<< (struct basic_ostream * const this, struct __ostream_type & (*<T65bd>) (struct __ostream_type &) __pf)
{
  struct __ostream_type & D.49977;
  struct __ostream_type & D.49975;

  __pf.4_1 = __pf;
  D.49977 = __pf.4_1 (this);
  D.49975 = D.49977;
  goto <D.49976>;
  <D.49976>:
  return D.49975;
}



;; Function _GLOBAL__sub_I_main (_GLOBAL__sub_I_main, funcdef_no=2302, decl_uid=49917, cgraph_uid=1036, symbol_order=1211)

void _GLOBAL__sub_I_main ()
{
  __static_initialization_and_destruction_0 (1, 65535);
  return;
}



;; Function __static_initialization_and_destruction_0 (_Z41__static_initialization_and_destruction_0ii, funcdef_no=2301, decl_uid=49911, cgraph_uid=1035, symbol_order=1092)

void __static_initialization_and_destruction_0 (int __initialize_p, int __priority)
{
  if (__initialize_p == 1) goto <D.49978>; else goto <D.49979>;
  <D.49978>:
  if (__priority == 65535) goto <D.49980>; else goto <D.49981>;
  <D.49980>:
  std::ios_base::Init::Init (&__ioinit);
  __cxxabiv1::__cxa_atexit (__dt_comp , &__ioinit, &__dso_handle);
  goto <D.49982>;
  <D.49981>:
  <D.49982>:
  goto <D.49983>;
  <D.49979>:
  <D.49983>:
  return;
}


