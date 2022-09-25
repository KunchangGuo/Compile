
;; Function main (main, funcdef_no=1731, decl_uid=44210, cgraph_uid=465, symbol_order=495)

int main ()
{
  struct basic_ostream & D.49123;
  struct basic_ostream & D.49122;
  struct basic_ostream & D.49121;
  struct basic_ostream & D.49120;
  int n;
  int t;
  int i;
  int b;
  int a;
  int D.49118;

  a = 0;
  b = 1;
  i = 1;
  std::basic_istream<char>::operator>> (&cin, &n);
  D.49120 = std::basic_ostream<char>::operator<< (&cout, 10);
  _1 = D.49120;
  std::basic_ostream<char>::operator<< (_1, endl);
  D.49121 = std::basic_ostream<char>::operator<< (&cout, a);
  _2 = D.49121;
  std::basic_ostream<char>::operator<< (_2, endl);
  D.49122 = std::basic_ostream<char>::operator<< (&cout, b);
  _3 = D.49122;
  std::basic_ostream<char>::operator<< (_3, endl);
  goto <D.44272>;
  <D.44273>:
  t = b;
  b = a + b;
  D.49123 = std::basic_ostream<char>::operator<< (&cout, b);
  _4 = D.49123;
  std::basic_ostream<char>::operator<< (_4, endl);
  a = t;
  i = i + 1;
  <D.44272>:
  n.0_5 = n;
  if (i < n.0_5) goto <D.44273>; else goto <D.44271>;
  <D.44271>:
  n = {CLOBBER};
  D.49118 = 0;
  goto <D.49119>;
  <D.49119>:
  return D.49118;
  <D.49124>:
  n = {CLOBBER};
  resx 1
}



;; Function __static_initialization_and_destruction_0 (_Z41__static_initialization_and_destruction_0ii, funcdef_no=2231, decl_uid=49110, cgraph_uid=965, symbol_order=1022)

void __static_initialization_and_destruction_0 (int __initialize_p, int __priority)
{
  if (__initialize_p == 1) goto <D.49126>; else goto <D.49127>;
  <D.49126>:
  if (__priority == 65535) goto <D.49128>; else goto <D.49129>;
  <D.49128>:
  std::ios_base::Init::Init (&__ioinit);
  __cxxabiv1::__cxa_atexit (__dt_comp , &__ioinit, &__dso_handle);
  goto <D.49130>;
  <D.49129>:
  <D.49130>:
  goto <D.49131>;
  <D.49127>:
  <D.49131>:
  return;
}



;; Function _GLOBAL__sub_I_main (_GLOBAL__sub_I_main, funcdef_no=2232, decl_uid=49116, cgraph_uid=966, symbol_order=1141)

void _GLOBAL__sub_I_main ()
{
  __static_initialization_and_destruction_0 (1, 65535);
  return;
}


