
;; Function main (main, funcdef_no=1731, decl_uid=44210, cgraph_uid=465, symbol_order=495)

int main ()
{
  struct basic_ostream & D.49135;
  struct basic_ostream & D.49134;
  struct basic_ostream & D.49133;
  struct basic_ostream & D.49132;
  struct basic_ostream & D.49131;
  int n;
  int t;
  int i;
  int b;
  int a;
  int D.49129;

  a = 0;
  b = 1;
  i = 1;
  std::basic_istream<char>::operator>> (&cin, &n);
  D.49131 = std::operator<< <std::char_traits<char> > (&cout, "a=");
  _1 = D.49131;
  D.49132 = std::basic_ostream<char>::operator<< (_1, a);
  _2 = D.49132;
  std::basic_ostream<char>::operator<< (_2, endl);
  D.49133 = std::operator<< <std::char_traits<char> > (&cout, "X=");
  _3 = D.49133;
  D.49134 = std::basic_ostream<char>::operator<< (_3, 10);
  _4 = D.49134;
  std::basic_ostream<char>::operator<< (_4, endl);
  goto <D.44277>;
  <D.44278>:
  t = b;
  b = a + b;
  D.49135 = std::basic_ostream<char>::operator<< (&cout, b);
  _5 = D.49135;
  std::basic_ostream<char>::operator<< (_5, endl);
  a = t;
  i = i + 1;
  <D.44277>:
  n.0_6 = n;
  if (i < n.0_6) goto <D.44278>; else goto <D.44276>;
  <D.44276>:
  n = {CLOBBER};
  D.49129 = 0;
  goto <D.49130>;
  <D.49130>:
  return D.49129;
  <D.49136>:
  n = {CLOBBER};
  resx 1
}



;; Function __static_initialization_and_destruction_0 (_Z41__static_initialization_and_destruction_0ii, funcdef_no=2234, decl_uid=49121, cgraph_uid=968, symbol_order=1025)

void __static_initialization_and_destruction_0 (int __initialize_p, int __priority)
{
  if (__initialize_p == 1) goto <D.49138>; else goto <D.49139>;
  <D.49138>:
  if (__priority == 65535) goto <D.49140>; else goto <D.49141>;
  <D.49140>:
  std::ios_base::Init::Init (&__ioinit);
  __cxxabiv1::__cxa_atexit (__dt_comp , &__ioinit, &__dso_handle);
  goto <D.49142>;
  <D.49141>:
  <D.49142>:
  goto <D.49143>;
  <D.49139>:
  <D.49143>:
  return;
}



;; Function _GLOBAL__sub_I_main (_GLOBAL__sub_I_main, funcdef_no=2235, decl_uid=49127, cgraph_uid=969, symbol_order=1144)

void _GLOBAL__sub_I_main ()
{
  __static_initialization_and_destruction_0 (1, 65535);
  return;
}


