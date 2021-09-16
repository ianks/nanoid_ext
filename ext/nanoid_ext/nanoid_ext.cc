#include "nanoid_ext.h"
#include "nanoid_ext.h"
#include "nanoid/nanoid.h"

VALUE rb_mNanoid;

VALUE
nanoid_generate(int argc, VALUE* argv, VALUE self)
{
	VALUE length = Qnil;
	rb_scan_args(argc, argv, "01", &length);
  int len = NIL_P(length) ? 21 : FIX2INT(length);

  std::string id = nanoid::generate(len);

  return rb_str_new(id.c_str(), id.size());
}

extern "C"
void
Init_nanoid_ext(void)
{
  rb_mNanoid = rb_define_module("Nanoid");
  rb_define_module_function(rb_mNanoid, "generate", nanoid_generate, -1);
}
