
;; Function std::ctype<char>::do_widen (_ZNKSt5ctypeIcE8do_widenEc, funcdef_no=1565, decl_uid=38061, cgraph_uid=536, symbol_order=565)

char_type std::ctype<char>::do_widen (const struct ctype * const this, char __c)
{
  <bb 2> [local count: 1073741824]:
  return __c_1(D);

}



;; Function std::endl.isra (_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, funcdef_no=2306, decl_uid=50074, cgraph_uid=1057, symbol_order=1235)

void std::endl.isra (struct basic_ostream & __os)
{
  char_type D.50109;
  char __c;
  char_type D.50106;
  char __c;
  char_type D.50103;
  int (*) () * _2;
  long int _3;
  sizetype _4;
  struct basic_ios * _5;
  int _7;
  struct basic_ostream & _8;
  const struct __ctype_type * _14;
  char _17;
  char _20;
  char _22;
  int (*) () * _24;
  int (*) () _25;
  void * PROF_29;
  char _31;

  <bb 2> [local count: 1073741824]:
  _2 = __os_1(D)->_vptr.basic_ostream;
  _3 = MEM[(long int *)_2 + -24B];
  _4 = (sizetype) _3;
  _5 = __os_1(D) + _4;
  _14 = MEM[(const struct __ctype_type * *)_5 + 240B];
  if (_14 == 0B)
    goto <bb 3>; [0.04%]
  else
    goto <bb 4>; [99.96%]

  <bb 3> [local count: 429496]:
  std::__throw_bad_cast ();

  <bb 4> [local count: 1073312329]:
  _17 = MEM[(const struct ctype *)_14]._M_widen_ok;
  if (_17 != 0)
    goto <bb 5>; [51.12%]
  else
    goto <bb 6>; [48.88%]

  <bb 5> [local count: 548677267]:
  _20 = MEM[(const struct ctype *)_14]._M_widen[10];
  goto <bb 8>; [100.00%]

  <bb 6> [local count: 524635063]:
  std::ctype<char>::_M_widen_init (_14);
  _24 = MEM[(const struct ctype *)_14].D.38127._vptr.facet;
  _25 = MEM[(int (*) () *)_24 + 48B];
  PROF_29 = [obj_type_ref] OBJ_TYPE_REF(_25;(const struct ctype)_14->6);
  if (PROF_29 == do_widen)
    goto <bb 8>; [80.00%]
  else
    goto <bb 7>; [20.00%]

  <bb 7> [local count: 104927014]:
  _31 = OBJ_TYPE_REF(_25;(const struct ctype)_14->6) (_14, 10);

  <bb 8> [local count: 1073312330]:
  # _22 = PHI <_20(5), 10(6), _31(7)>
  _7 = (int) _22;
  _8 = std::basic_ostream<char>::put (__os_1(D), _7);
  std::basic_ostream<char>::flush (_8);
  return;

}



;; Function main (main, funcdef_no=1812, decl_uid=45098, cgraph_uid=546, symbol_order=576) (executed once)

int main ()
{
  char_type D.50125;
  char __c;
  char_type D.50122;
  char __c;
  char_type D.50119;
  int n;
  int i;
  int b;
  int a;
  int n.0_1;
  struct basic_ostream & _9;
  struct basic_ostream & _11;
  struct basic_ostream & _15;
  int (*) () * _22;
  long int _23;
  sizetype _24;
  struct basic_ios * _25;
  int _27;
  struct basic_ostream & _28;
  const struct __ctype_type * _30;
  int n.0_32;
  char _33;
  char _36;
  char _38;
  int (*) () * _40;
  int (*) () _41;
  void * PROF_45;
  char _47;

  <bb 2> [local count: 118111600]:
  std::basic_istream<char>::operator>> (&cin, &n);
  std::__ostream_insert<char, std::char_traits<char> > (&cout, "a=", 2);
  _9 = std::basic_ostream<char>::operator<< (&cout, 0);
  std::endl.isra (_9);
  std::__ostream_insert<char, std::char_traits<char> > (&cout, "X=", 2);
  _11 = std::basic_ostream<char>::operator<< (&cout, 10);
  std::endl.isra (_11);
  n.0_32 = n;
  if (n.0_32 > 1)
    goto <bb 3>; [89.00%]
  else
    goto <bb 10>; [11.00%]

  <bb 3> [local count: 952547452]:
  # a_39 = PHI <b_42(9), 0(2)>
  # b_42 = PHI <b_13(9), 1(2)>
  # i_46 = PHI <i_16(9), 1(2)>
  b_13 = a_39 + b_42;
  _15 = std::basic_ostream<char>::operator<< (&cout, b_13);
  _22 = _15->_vptr.basic_ostream;
  _23 = MEM[(long int *)_22 + -24B];
  _24 = (sizetype) _23;
  _25 = _15 + _24;
  _30 = MEM[(const struct __ctype_type * *)_25 + 240B];
  if (_30 == 0B)
    goto <bb 4>; [0.04%]
  else
    goto <bb 5>; [99.96%]

  <bb 4> [local count: 381018]:
  std::__throw_bad_cast ();

  <bb 5> [local count: 952166433]:
  _33 = MEM[(const struct ctype *)_30]._M_widen_ok;
  if (_33 != 0)
    goto <bb 6>; [51.12%]
  else
    goto <bb 7>; [48.88%]

  <bb 6> [local count: 486747484]:
  _36 = MEM[(const struct ctype *)_30]._M_widen[10];
  goto <bb 9>; [100.00%]

  <bb 7> [local count: 465418949]:
  std::ctype<char>::_M_widen_init (_30);
  _40 = MEM[(const struct ctype *)_30].D.38127._vptr.facet;
  _41 = MEM[(int (*) () *)_40 + 48B];
  PROF_45 = [obj_type_ref] OBJ_TYPE_REF(_41;(const struct ctype)_30->6);
  if (PROF_45 == do_widen)
    goto <bb 9>; [80.00%]
  else
    goto <bb 8>; [20.00%]

  <bb 8> [local count: 93083792]:
  _47 = OBJ_TYPE_REF(_41;(const struct ctype)_30->6) (_30, 10);

  <bb 9> [local count: 952166435]:
  # _38 = PHI <_36(6), 10(7), _47(8)>
  _27 = (int) _38;
  _28 = std::basic_ostream<char>::put (_15, _27);
  std::basic_ostream<char>::flush (_28);
  i_16 = i_46 + 1;
  n.0_1 = n;
  if (n.0_1 > i_16)
    goto <bb 3>; [89.00%]
  else
    goto <bb 10>; [11.00%]

  <bb 10> [local count: 117730583]:
  n ={v} {CLOBBER};
  return 0;

}



;; Function _GLOBAL__sub_I_main (_GLOBAL__sub_I_main, funcdef_no=2302, decl_uid=49917, cgraph_uid=1036, symbol_order=1211) (executed once)

void _GLOBAL__sub_I_main ()
{
  <bb 2> [local count: 1073741824]:
  std::ios_base::Init::Init (&__ioinit);
  __cxxabiv1::__cxa_atexit (__dt_comp , &__ioinit, &__dso_handle);
  return;

}


