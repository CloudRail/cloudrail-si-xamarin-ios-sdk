#include "registrar.h"
extern "C" {
static void native_to_managed_trampoline_1 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_2 (id self, SEL _cmd, MonoMethod **managed_method_ptr, void * p0, uint32_t token_ref)
{
	void * a0 = p0;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &a0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UIWindow * native_to_managed_trampoline_3 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIWindow * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_4 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIWindow * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_5 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, NSDictionary * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_6 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_7 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, NSURL * p1, NSDictionary * p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj2, _cmd, self, nsobj2, 2, mono_class_from_mono_type (paramtype2), managed_method);
	}
	arg_ptrs [2] = mobj2;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static id native_to_managed_trampoline_8 (id self, SEL _cmd, MonoMethod **managed_method_ptr, bool* call_super, uint32_t token_ref)
{
	uint8_t flags = NSObjectFlagsNativeRef;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	bool has_nsobject = xamarin_has_nsobject (self, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	if (has_nsobject) {
		*call_super = true;
		goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (managed_method));
	xamarin_set_nsobject_handle (mthis, self);
	xamarin_set_nsobject_flags (mthis, flags);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);
	xamarin_create_managed_ref (self, mthis, true);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return self;
}


static void native_to_managed_trampoline_9 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIStoryboardSegue * p0, NSObject * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static NSInteger native_to_managed_trampoline_10 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSInteger p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSInteger res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_11 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSIndexPath * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UITableViewCell * native_to_managed_trampoline_12 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSIndexPath * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UITableViewCell * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_13 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSObject * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, NULL, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_14 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIGestureRecognizer * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_15 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIImagePickerController * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_16 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIImagePickerController * p0, UIImage * p1, NSDictionary * p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj2 = NULL;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	MonoType *paramtype2 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;
	nsobj2 = (NSObject *) p2;
	if (nsobj2) {
		paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj2, _cmd, self, nsobj2, 2, mono_class_from_mono_type (paramtype2), managed_method);
	}
	arg_ptrs [2] = mobj2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_17 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIImagePickerController * p0, NSDictionary * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_18 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UILongPressGestureRecognizer * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_19 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIRotationGestureRecognizer * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_20 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITapGestureRecognizer * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_21 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPanGestureRecognizer * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_22 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPinchGestureRecognizer * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_23 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISwipeGestureRecognizer * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_24 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScreenEdgePanGestureRecognizer * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_25 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSObject * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_26 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_27 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, BOOL p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_28 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UIView * native_to_managed_trampoline_29 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIView * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_30 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, CGPoint p1, CGPoint* p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_31 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, UIView * p1, CGFloat p2, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_32 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, UIView * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


} /* extern "C" */

@protocol CALayerDelegate
@end

@interface __MonoMac_NSActionDispatcher : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) xamarinApplySelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __MonoMac_NSActionDispatcher { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, 0x45504);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, 0x4A504);
	}
@end

@interface __MonoMac_NSAsyncActionDispatcher : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) xamarinApplySelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __MonoMac_NSAsyncActionDispatcher { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, 0x45804);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, 0x4A504);
	}
@end

@interface AppDelegate : NSObject<UIApplicationDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIWindow *) window;
	-(void) setWindow:(UIWindow *)p0;
	-(BOOL) application:(UIApplication *)p0 didFinishLaunchingWithOptions:(NSDictionary *)p1;
	-(void) applicationWillResignActive:(UIApplication *)p0;
	-(void) applicationDidEnterBackground:(UIApplication *)p0;
	-(void) applicationWillEnterForeground:(UIApplication *)p0;
	-(void) applicationDidBecomeActive:(UIApplication *)p0;
	-(void) applicationWillTerminate:(UIApplication *)p0;
	-(BOOL) application:(UIApplication *)p0 openURL:(NSURL *)p1 options:(NSDictionary *)p2;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation AppDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIWindow *) window
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, 0x200);
	}

	-(void) setWindow:(UIWindow *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, 0x300);
	}

	-(BOOL) application:(UIApplication *)p0 didFinishLaunchingWithOptions:(NSDictionary *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, p0, p1, 0x400);
	}

	-(void) applicationWillResignActive:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, 0x500);
	}

	-(void) applicationDidEnterBackground:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, 0x600);
	}

	-(void) applicationWillEnterForeground:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, 0x700);
	}

	-(void) applicationDidBecomeActive:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, 0x800);
	}

	-(void) applicationWillTerminate:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, 0x900);
	}

	-(BOOL) application:(UIApplication *)p0 openURL:(NSURL *)p1 options:(NSDictionary *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, p0, p1, p2, 0xA00);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, 0x4A504);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_8 (self, _cmd, &managed_method, &call_super, 0xB00);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface ListViewController : UITableViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) viewDidLoad;
	-(void) didReceiveMemoryWarning;
	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation ListViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, 0xD00);
	}

	-(void) didReceiveMemoryWarning
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, 0xE00);
	}

	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, p1, 0xF00);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, 0x4A504);
	}
@end

@interface UnifiedCloudStorage_ListTableSource : NSObject<UIScrollViewDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1;
	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1;
	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation UnifiedCloudStorage_ListTableSource { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, p0, p1, 0x1200);
	}

	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, p1, 0x1300);
	}

	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, p1, 0x1400);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, 0x4A504);
	}
@end

@interface UnifiedCloudStorage_SubfolderSource : NSObject<UIScrollViewDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1;
	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1;
	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation UnifiedCloudStorage_SubfolderSource { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, p0, p1, 0x5500);
	}

	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, p1, 0x5600);
	}

	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, p1, 0x5700);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, 0x4A504);
	}
@end

@interface CloudStorageViewController : UITableViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) viewDidLoad;
	-(void) didReceiveMemoryWarning;
	-(void) GetRootFilesFolders;
	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation CloudStorageViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, 0x1900);
	}

	-(void) didReceiveMemoryWarning
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, 0x1A00);
	}

	-(void) GetRootFilesFolders
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, 0x1B00);
	}

	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, p1, 0x2100);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, 0x4A504);
	}
@end

@interface UnifiedCloudStorage_CloudStorageSource : NSObject<UIScrollViewDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1;
	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1;
	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation UnifiedCloudStorage_CloudStorageSource { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, p0, p1, 0x3300);
	}

	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, p1, 0x3400);
	}

	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, p1, 0x3500);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, 0x4A504);
	}
@end

@interface SubfolderViewController : UITableViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) viewDidLoad;
	-(void) didReceiveMemoryWarning;
	-(void) GetFilesFolders;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation SubfolderViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, 0x4C00);
	}

	-(void) didReceiveMemoryWarning
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, 0x4D00);
	}

	-(void) GetFilesFolders
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, 0x4E00);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, 0x4A504);
	}
@end

@interface __NSObject_Disposer : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	+(void) drain:(NSObject *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation __NSObject_Disposer { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	+(void) drain:(NSObject *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, 0x4CE04);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, 0x4A504);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_8 (self, _cmd, &managed_method, &call_super, 0x4CC04);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __UIGestureRecognizerToken : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __UIGestureRecognizerToken { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, 0x4A504);
	}
@end

@interface __UIGestureRecognizerParameterlessToken : __UIGestureRecognizerToken {
}
	-(void) target;
@end
@implementation __UIGestureRecognizerParameterlessToken { } 

	-(void) target
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, 0x4DF04);
	}
@end

@interface __UIGestureRecognizerParametrizedToken : __UIGestureRecognizerToken {
}
	-(void) target:(UIGestureRecognizer *)p0;
@end
@implementation __UIGestureRecognizerParametrizedToken { } 

	-(void) target:(UIGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, 0x4E004);
	}
@end

@interface UIKit_UIImagePickerController__UIImagePickerControllerDelegate : NSObject<UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) imagePickerControllerDidCancel:(UIImagePickerController *)p0;
	-(void) imagePickerController:(UIImagePickerController *)p0 didFinishPickingImage:(UIImage *)p1 editingInfo:(NSDictionary *)p2;
	-(void) imagePickerController:(UIImagePickerController *)p0 didFinishPickingMediaWithInfo:(NSDictionary *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation UIKit_UIImagePickerController__UIImagePickerControllerDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) imagePickerControllerDidCancel:(UIImagePickerController *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_15 (self, _cmd, &managed_method, p0, 0x52604);
	}

	-(void) imagePickerController:(UIImagePickerController *)p0 didFinishPickingImage:(UIImage *)p1 editingInfo:(NSDictionary *)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, p0, p1, p2, 0x52704);
	}

	-(void) imagePickerController:(UIImagePickerController *)p0 didFinishPickingMediaWithInfo:(NSDictionary *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, p1, 0x52804);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, 0x4A504);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_8 (self, _cmd, &managed_method, &call_super, 0x52504);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __UILongPressGestureRecognizer : __UIGestureRecognizerToken {
}
	-(void) target:(UILongPressGestureRecognizer *)p0;
@end
@implementation __UILongPressGestureRecognizer { } 

	-(void) target:(UILongPressGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_18 (self, _cmd, &managed_method, p0, 0x5AD04);
	}
@end

@interface __UIRotationGestureRecognizer : __UIGestureRecognizerToken {
}
	-(void) target:(UIRotationGestureRecognizer *)p0;
@end
@implementation __UIRotationGestureRecognizer { } 

	-(void) target:(UIRotationGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_19 (self, _cmd, &managed_method, p0, 0x5B604);
	}
@end

@interface __UITapGestureRecognizer : __UIGestureRecognizerToken {
}
	-(void) target:(UITapGestureRecognizer *)p0;
@end
@implementation __UITapGestureRecognizer { } 

	-(void) target:(UITapGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_20 (self, _cmd, &managed_method, p0, 0x5BA04);
	}
@end

@interface __UIPanGestureRecognizer : __UIGestureRecognizerToken {
}
	-(void) target:(UIPanGestureRecognizer *)p0;
@end
@implementation __UIPanGestureRecognizer { } 

	-(void) target:(UIPanGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, 0x5BE04);
	}
@end

@interface __UIPinchGestureRecognizer : __UIGestureRecognizerToken {
}
	-(void) target:(UIPinchGestureRecognizer *)p0;
@end
@implementation __UIPinchGestureRecognizer { } 

	-(void) target:(UIPinchGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_22 (self, _cmd, &managed_method, p0, 0x5C204);
	}
@end

@interface __UISwipeGestureRecognizer : __UIGestureRecognizerToken {
}
	-(void) target:(UISwipeGestureRecognizer *)p0;
@end
@implementation __UISwipeGestureRecognizer { } 

	-(void) target:(UISwipeGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_23 (self, _cmd, &managed_method, p0, 0x5C604);
	}
@end

@interface __UIScreenEdgePanGestureRecognizer : __UIGestureRecognizerToken {
}
	-(void) target:(UIScreenEdgePanGestureRecognizer *)p0;
@end
@implementation __UIScreenEdgePanGestureRecognizer { } 

	-(void) target:(UIScreenEdgePanGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, 0x5CA04);
	}
@end

@interface UIKit_UIBarButtonItem_Callback : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) InvokeAction:(NSObject *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation UIKit_UIBarButtonItem_Callback { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) InvokeAction:(NSObject *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_25 (self, _cmd, &managed_method, p0, 0x5F704);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, 0x4A504);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_8 (self, _cmd, &managed_method, &call_super, 0x5F604);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface UIKit_UIScrollView__UIScrollViewDelegate : NSObject<UIScrollViewDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) scrollViewDidEndDecelerating:(UIScrollView *)p0;
	-(void) scrollViewWillBeginDecelerating:(UIScrollView *)p0;
	-(void) scrollViewDidZoom:(UIScrollView *)p0;
	-(void) scrollViewDidEndDragging:(UIScrollView *)p0 willDecelerate:(BOOL)p1;
	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0;
	-(void) scrollViewDidEndScrollingAnimation:(UIScrollView *)p0;
	-(void) scrollViewDidScroll:(UIScrollView *)p0;
	-(void) scrollViewDidScrollToTop:(UIScrollView *)p0;
	-(BOOL) scrollViewShouldScrollToTop:(UIScrollView *)p0;
	-(UIView *) viewForZoomingInScrollView:(UIScrollView *)p0;
	-(void) scrollViewWillEndDragging:(UIScrollView *)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2;
	-(void) scrollViewDidEndZooming:(UIScrollView *)p0 withView:(UIView *)p1 atScale:(CGFloat)p2;
	-(void) scrollViewWillBeginZooming:(UIScrollView *)p0 withView:(UIView *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation UIKit_UIScrollView__UIScrollViewDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) scrollViewDidEndDecelerating:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_26 (self, _cmd, &managed_method, p0, 0x6DC04);
	}

	-(void) scrollViewWillBeginDecelerating:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_26 (self, _cmd, &managed_method, p0, 0x6DD04);
	}

	-(void) scrollViewDidZoom:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_26 (self, _cmd, &managed_method, p0, 0x6DE04);
	}

	-(void) scrollViewDidEndDragging:(UIScrollView *)p0 willDecelerate:(BOOL)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_27 (self, _cmd, &managed_method, p0, p1, 0x6DF04);
	}

	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_26 (self, _cmd, &managed_method, p0, 0x6E004);
	}

	-(void) scrollViewDidEndScrollingAnimation:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_26 (self, _cmd, &managed_method, p0, 0x6E104);
	}

	-(void) scrollViewDidScroll:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_26 (self, _cmd, &managed_method, p0, 0x6E204);
	}

	-(void) scrollViewDidScrollToTop:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_26 (self, _cmd, &managed_method, p0, 0x6E304);
	}

	-(BOOL) scrollViewShouldScrollToTop:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_28 (self, _cmd, &managed_method, p0, 0x6E404);
	}

	-(UIView *) viewForZoomingInScrollView:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_29 (self, _cmd, &managed_method, p0, 0x6E504);
	}

	-(void) scrollViewWillEndDragging:(UIScrollView *)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_30 (self, _cmd, &managed_method, p0, p1, p2, 0x6E604);
	}

	-(void) scrollViewDidEndZooming:(UIScrollView *)p0 withView:(UIView *)p1 atScale:(CGFloat)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_31 (self, _cmd, &managed_method, p0, p1, p2, 0x6E704);
	}

	-(void) scrollViewWillBeginZooming:(UIScrollView *)p0 withView:(UIView *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_32 (self, _cmd, &managed_method, p0, p1, 0x6E804);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, 0x4A504);
	}
@end

@interface CRSandboxObject : NSObject {
}
	-(NSObject *) get:(NSString *)p0;
	-(void) setObject:(NSObject *)p0 forKey:(NSString *)p1;
	-(id) init;
@end

@interface CRAddress : CRSandboxObject {
}
	-(NSString *) city;
	-(void) setCity:(NSString *)p0;
	-(NSString *) country;
	-(void) setCountry:(NSString *)p0;
	-(NSString *) line1;
	-(void) setLine1:(NSString *)p0;
	-(NSString *) line2;
	-(void) setLine2:(NSString *)p0;
	-(NSString *) postalCode;
	-(void) setPostalCode:(NSString *)p0;
	-(NSString *) state;
	-(void) setState:(NSString *)p0;
	-(id) init;
@end

@interface CRAdvancedRequestResponse : CRSandboxObject {
}
	-(NSInputStream *) body;
	-(void) setBody:(NSInputStream *)p0;
	-(NSString *) bodyAsString;
	-(NSObject *) bodyJsonParsed;
	-(NSDictionary *) bodyXmlParsed;
	-(NSDictionary *) headers;
	-(void) setHeaders:(NSDictionary *)p0;
	-(NSNumber *) status;
	-(void) setStatus:(NSNumber *)p0;
	-(NSString *) _stringBody;
	-(void) set_stringBody:(NSString *)p0;
	-(id) init;
@end

@interface CRAdvancedRequestSpecification : CRSandboxObject {
}
	-(void) setBodyAsString:(NSString *)p0;
	-(void) setBodyStringifyJson:(NSObject *)p0;
	-(void) setBodyStringifyXml:(NSObject *)p0;
	-(NSNumber *) appendAuthorization;
	-(void) setAppendAuthorization:(NSNumber *)p0;
	-(NSNumber *) appendBaseUrl;
	-(void) setAppendBaseUrl:(NSNumber *)p0;
	-(NSInputStream *) body;
	-(void) setBody:(NSInputStream *)p0;
	-(NSNumber *) checkErrors;
	-(void) setCheckErrors:(NSNumber *)p0;
	-(NSMutableDictionary *) headers;
	-(void) setHeaders:(NSMutableDictionary *)p0;
	-(NSString *) method;
	-(void) setMethod:(NSString *)p0;
	-(NSString *) url;
	-(void) setUrl:(NSString *)p0;
	-(id) init;
	-(id) initWithUrl:(NSString *)p0;
@end

@protocol CRAdvancedRequestSupporterProtocol
	@required -(id) advancedRequestWithSpecification:(id)p0;
@end

@protocol CRBusinessCloudStorageProtocol
	@optional @property (nonatomic, assign, readonly) NSMutableArray <NSObject *>* listBuckets;
	@optional -(id) createBucketWithName:(NSString *)p0;
	@optional -(void) deleteBucket:(id)p0;
	@optional -(NSMutableArray <NSObject *>*) listFilesInBucket:(id)p0;
	@optional -(id) metadataOfFileInBucket:(id)p0 fileName:(NSString *)p1;
	@optional -(void) uploadFileToBucket:(id)p0 name:(NSString *)p1 withStream:(NSInputStream *)p2 size:(NSInteger)p3;
	@optional -(NSInputStream *) downloadFileWithName:(NSString *)p0 bucket:(id)p1;
	@optional -(void) deleteFileWithName:(NSString *)p0 bucket:(id)p1;
@end

@interface CRAmazonS3 : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(id) createBucketWithName:(NSString *)p0;
	-(void) deleteBucket:(id)p0;
	-(void) deleteFileWithName:(NSString *)p0 bucket:(id)p1;
	-(NSInputStream *) downloadFileWithName:(NSString *)p0 bucket:(id)p1;
	-(NSMutableArray <NSObject *>*) listFilesInBucket:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(id) metadataOfFileInBucket:(id)p0 fileName:(NSString *)p1;
	-(void) uploadFileToBucket:(id)p0 name:(NSString *)p1 withStream:(NSInputStream *)p2 size:(NSInteger)p3;
	-(void) useAdvancedAuthentication;
	-(NSMutableArray <NSObject *>*) listBuckets;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithAccessKeyId:(NSString *)p0 secretAccessKey:(NSString *)p1 region:(NSString *)p2;
@end

@protocol CRAuthenticatingProtocol
	@optional -(void) login;
	@optional -(void) logout;
@end

@interface CRBackblaze : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(id) createBucketWithName:(NSString *)p0;
	-(void) deleteBucket:(id)p0;
	-(void) deleteFileWithName:(NSString *)p0 bucket:(id)p1;
	-(NSInputStream *) downloadFileWithName:(NSString *)p0 bucket:(id)p1;
	-(NSMutableArray <NSObject *>*) listFilesInBucket:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(id) metadataOfFileInBucket:(id)p0 fileName:(NSString *)p1;
	-(void) uploadFileToBucket:(id)p0 name:(NSString *)p1 withStream:(NSInputStream *)p2 size:(NSInteger)p3;
	-(void) useAdvancedAuthentication;
	-(NSMutableArray <NSObject *>*) listBuckets;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithAccountID:(NSString *)p0 appKey:(NSString *)p1;
@end

@protocol CRPersistableProtocol
	@optional @property (nonatomic, assign, readonly) NSString * saveAsString;
	@optional -(void) loadAsString:(NSString *)p0;
@end

@protocol CRCloudStorageProtocol
	@optional @property (nonatomic, assign, readonly) id spaceAllocation;
	@optional @property (nonatomic, assign, readonly) NSString * userLogin;
	@optional @property (nonatomic, assign, readonly) NSString * userName;
	@optional -(NSInputStream *) downloadFileWithPath:(NSString *)p0;
	@optional -(void) uploadFileToPath:(NSString *)p0 withStream:(NSInputStream *)p1 size:(NSInteger)p2 overwrite:(BOOL)p3;
	@optional -(void) moveFileFromPath:(NSString *)p0 toDestinationPath:(NSString *)p1;
	@optional -(void) deleteFileWithPath:(NSString *)p0;
	@optional -(void) copyFileFromPath:(NSString *)p0 toDestinationPath:(NSString *)p1;
	@optional -(void) createFolderWithPath:(NSString *)p0;
	@optional -(id) metadataOfFileWithPath:(NSString *)p0;
	@optional -(BOOL) fileExistsAtPath:(NSString *)p0;
	@optional -(NSMutableArray <NSObject *>*) childrenOfFolderWithPath:(NSString *)p0;
	@optional -(NSMutableArray <NSObject *>*) childrenOfFolderWithPath:(NSString *)p0 offset:(NSInteger)p1 limit:(NSInteger)p2;
	@optional -(NSString *) shareLinkForFileWithPath:(NSString *)p0;
	@optional -(NSInputStream *) thumbnailOfFileWithPath:(NSString *)p0;
	@optional -(NSMutableArray <NSObject *>*) searchWithQuery:(NSString *)p0;
@end

@interface CRBox : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(NSMutableArray <NSObject *>*) childrenOfFolderWithPath:(NSString *)p0;
	-(NSMutableArray <NSObject *>*) childrenOfFolderWithPath:(NSString *)p0 offset:(NSInteger)p1 limit:(NSInteger)p2;
	-(void) copyFileFromPath:(NSString *)p0 toDestinationPath:(NSString *)p1;
	-(void) createFolderWithPath:(NSString *)p0;
	-(void) deleteFileWithPath:(NSString *)p0;
	-(NSInputStream *) downloadFileWithPath:(NSString *)p0;
	-(BOOL) fileExistsAtPath:(NSString *)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) login;
	-(void) logout;
	-(id) metadataOfFileWithPath:(NSString *)p0;
	-(void) moveFileFromPath:(NSString *)p0 toDestinationPath:(NSString *)p1;
	-(NSMutableArray <NSObject *>*) searchWithQuery:(NSString *)p0;
	-(NSString *) shareLinkForFileWithPath:(NSString *)p0;
	-(NSInputStream *) thumbnailOfFileWithPath:(NSString *)p0;
	-(void) uploadFileToPath:(NSString *)p0 withStream:(NSInputStream *)p1 size:(NSInteger)p2 overwrite:(BOOL)p3;
	-(void) useAdvancedAuthentication;
	-(NSString *) saveAsString;
	-(id) spaceAllocation;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(NSString *) userLogin;
	-(NSString *) userName;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
@end

@interface CRBucket : CRSandboxObject {
}
	-(NSString *) identifier;
	-(void) setIdentifier:(NSString *)p0;
	-(NSString *) name;
	-(void) setName:(NSString *)p0;
	-(id) init;
	-(id) initWithName:(NSString *)p0 identifier:(NSString *)p1;
@end

@interface CRBusinessFileMetaData : CRSandboxObject {
}
	-(NSString *) fileID;
	-(void) setFileID:(NSString *)p0;
	-(NSString *) fileName;
	-(void) setFileName:(NSString *)p0;
	-(NSInteger) fileSize;
	-(void) setFileSize:(NSInteger)p0;
	-(NSNumber *) lastModified;
	-(void) setLastModified:(NSNumber *)p0;
	-(NSInteger) lastModifiedTimestamp;
	-(void) setLastModifiedTimestamp:(NSInteger)p0;
	-(NSNumber *) size;
	-(void) setSize:(NSNumber *)p0;
	-(id) init;
@end

@interface CRCharge : CRSandboxObject {
}
	-(void) initWithAmount:(NSNumber *)p0 created:(NSNumber *)p1 currency:(NSString *)p2 identifier:(NSString *)p3 refunded:(NSNumber *)p4 source:(id)p5 status:(NSString *)p6;
	-(NSNumber *) amount;
	-(void) setAmount:(NSNumber *)p0;
	-(NSNumber *) created;
	-(void) setCreated:(NSNumber *)p0;
	-(NSString *) currency;
	-(void) setCurrency:(NSString *)p0;
	-(NSString *) identifier;
	-(void) setIdentifier:(NSString *)p0;
	-(NSNumber *) refunded;
	-(void) setRefunded:(NSNumber *)p0;
	-(id) source;
	-(void) setSource:(id)p0;
	-(NSString *) status;
	-(void) setStatus:(NSString *)p0;
	-(id) init;
@end

@interface CRCloudMetaData : CRSandboxObject {
}
	-(NSNumber *) folder;
	-(void) setFolder:(NSNumber *)p0;
	-(id) imageMetaData;
	-(void) setImageMetaData:(id)p0;
	-(NSNumber *) modifiedAt;
	-(void) setModifiedAt:(NSNumber *)p0;
	-(NSString *) name;
	-(void) setName:(NSString *)p0;
	-(NSString *) path;
	-(void) setPath:(NSString *)p0;
	-(NSNumber *) size;
	-(void) setSize:(NSNumber *)p0;
	-(id) init;
@end

@interface CRCloudRail : NSObject {
}
	-(id) init;
@end

@interface CRCreditCard : CRSandboxObject {
}
	-(void) initWithCvc:(NSString *)p0 expireMonth:(NSNumber *)p1 expireYear:(NSNumber *)p2 number:(NSString *)p3 type:(NSString *)p4 firstName:(NSString *)p5 lastName:(NSString *)p6 address:(id)p7;
	-(id) address;
	-(void) setAddress:(id)p0;
	-(NSString *) cvc;
	-(void) setCvc:(NSString *)p0;
	-(NSNumber *) expire_month;
	-(void) setExpire_month:(NSNumber *)p0;
	-(NSNumber *) expire_year;
	-(void) setExpire_year:(NSNumber *)p0;
	-(NSString *) firstName;
	-(void) setFirstName:(NSString *)p0;
	-(NSString *) lastName;
	-(void) setLastName:(NSString *)p0;
	-(NSString *) number;
	-(void) setNumber:(NSString *)p0;
	-(NSString *) type;
	-(void) setType:(NSString *)p0;
	-(id) init;
@end

@interface CRDateOfBirth : CRSandboxObject {
}
	-(NSDate *) date;
	-(NSNumber *) day;
	-(void) setDay:(NSNumber *)p0;
	-(NSNumber *) month;
	-(void) setMonth:(NSNumber *)p0;
	-(NSNumber *) year;
	-(void) setYear:(NSNumber *)p0;
	-(id) init;
@end

@interface CRDropbox : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(NSMutableArray <NSObject *>*) childrenOfFolderWithPath:(NSString *)p0;
	-(NSMutableArray <NSObject *>*) childrenOfFolderWithPath:(NSString *)p0 offset:(NSInteger)p1 limit:(NSInteger)p2;
	-(void) copyFileFromPath:(NSString *)p0 toDestinationPath:(NSString *)p1;
	-(void) createFolderWithPath:(NSString *)p0;
	-(void) deleteFileWithPath:(NSString *)p0;
	-(NSInputStream *) downloadFileWithPath:(NSString *)p0;
	-(BOOL) fileExistsAtPath:(NSString *)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) login;
	-(void) logout;
	-(id) metadataOfFileWithPath:(NSString *)p0;
	-(void) moveFileFromPath:(NSString *)p0 toDestinationPath:(NSString *)p1;
	-(NSMutableArray <NSObject *>*) searchWithQuery:(NSString *)p0;
	-(NSString *) shareLinkForFileWithPath:(NSString *)p0;
	-(NSInputStream *) thumbnailOfFileWithPath:(NSString *)p0;
	-(void) uploadFileToPath:(NSString *)p0 withStream:(NSInputStream *)p1 size:(NSInteger)p2 overwrite:(BOOL)p3;
	-(void) useAdvancedAuthentication;
	-(NSString *) saveAsString;
	-(id) spaceAllocation;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(NSString *) userLogin;
	-(NSString *) userName;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
@end

@interface CREgnyte : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(NSMutableArray <NSObject *>*) childrenOfFolderWithPath:(NSString *)p0;
	-(NSMutableArray <NSObject *>*) childrenOfFolderWithPath:(NSString *)p0 offset:(NSInteger)p1 limit:(NSInteger)p2;
	-(void) copyFileFromPath:(NSString *)p0 toDestinationPath:(NSString *)p1;
	-(void) createFolderWithPath:(NSString *)p0;
	-(void) deleteFileWithPath:(NSString *)p0;
	-(NSInputStream *) downloadFileWithPath:(NSString *)p0;
	-(BOOL) fileExistsAtPath:(NSString *)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) login;
	-(void) logout;
	-(id) metadataOfFileWithPath:(NSString *)p0;
	-(void) moveFileFromPath:(NSString *)p0 toDestinationPath:(NSString *)p1;
	-(NSMutableArray <NSObject *>*) searchWithQuery:(NSString *)p0;
	-(NSString *) shareLinkForFileWithPath:(NSString *)p0;
	-(NSInputStream *) thumbnailOfFileWithPath:(NSString *)p0;
	-(void) uploadFileToPath:(NSString *)p0 withStream:(NSInputStream *)p1 size:(NSInteger)p2 overwrite:(BOOL)p3;
	-(void) useAdvancedAuthentication;
	-(NSString *) saveAsString;
	-(id) spaceAllocation;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(NSString *) userLogin;
	-(NSString *) userName;
	-(id) init;
	-(id) initWithDomain:(NSString *)p0 clientId:(NSString *)p1 clientSecret:(NSString *)p2;
	-(id) initWithDomain:(NSString *)p0 clientId:(NSString *)p1 clientSecret:(NSString *)p2 scopes:(NSMutableArray <NSString *>*)p3;
	-(id) initWithDomain:(NSString *)p0 clientId:(NSString *)p1 clientSecret:(NSString *)p2 redirectUri:(NSString *)p3 state:(NSString *)p4;
	-(id) initWithDomain:(NSString *)p0 clientId:(NSString *)p1 clientSecret:(NSString *)p2 redirectUri:(NSString *)p3 state:(NSString *)p4 scopes:(NSMutableArray <NSString *>*)p5;
@end

@protocol CREmailProtocol
	@optional -(void) sendEmailFromAddress:(NSString *)p0 fromName:(NSString *)p1 toAddresses:(NSMutableArray <NSString *>*)p2 subject:(NSString *)p3 textBody:(NSString *)p4 htmlBody:(NSString *)p5 ccAddresses:(NSMutableArray <NSString *>*)p6 bccAddresses:(NSMutableArray <NSString *>*)p7;
@end

@interface CRError : CRSandboxObject {
}
	-(NSString *) message;
	-(void) setMessage:(NSString *)p0;
	-(NSString *) type;
	-(void) setType:(NSString *)p0;
	-(id) init;
@end

@interface CRExceptionHandler : NSObject {
}
	-(id) init;
@end

@protocol CRProfileProtocol
	@optional @property (nonatomic, assign, readonly) NSString * identifier;
	@optional @property (nonatomic, assign, readonly) NSString * fullName;
	@optional @property (nonatomic, assign, readonly) NSString * email;
	@optional @property (nonatomic, assign, readonly) NSString * gender;
	@optional @property (nonatomic, assign, readonly) NSString * profileDescription;
	@optional @property (nonatomic, assign, readonly) id dateOfBirth;
	@optional @property (nonatomic, assign, readonly) NSString * locale;
	@optional @property (nonatomic, assign, readonly) NSString * pictureURL;
@end

@protocol CRSocialProtocol
	@optional @property (nonatomic, assign, readonly) NSArray * connections;
	@optional -(void) postUpdateWithContent:(NSString *)p0;
	@optional -(void) postImageWithMessage:(NSString *)p0 image:(NSInputStream *)p1;
	@optional -(void) postVideoWithMessage:(NSString *)p0 video:(NSInputStream *)p1 size:(NSInteger)p2 mimeType:(NSString *)p3;
@end

@interface CRFacebook : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) login;
	-(void) logout;
	-(void) postImageWithMessage:(NSString *)p0 image:(NSInputStream *)p1;
	-(void) postUpdateWithContent:(NSString *)p0;
	-(void) postVideoWithMessage:(NSString *)p0 video:(NSInputStream *)p1 size:(NSInteger)p2 mimeType:(NSString *)p3;
	-(void) useAdvancedAuthentication;
	-(NSArray *) connections;
	-(id) dateOfBirth;
	-(NSString *) email;
	-(NSString *) fullName;
	-(NSString *) gender;
	-(NSString *) identifier;
	-(NSString *) locale;
	-(NSString *) pictureURL;
	-(NSString *) profileDescription;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 scopes:(NSMutableArray <NSString *>*)p2;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3 scopes:(NSMutableArray <NSString *>*)p4;
@end

@interface CRFacebookPage : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) login;
	-(void) logout;
	-(void) postImageWithMessage:(NSString *)p0 image:(NSInputStream *)p1;
	-(void) postUpdateWithContent:(NSString *)p0;
	-(void) postVideoWithMessage:(NSString *)p0 video:(NSInputStream *)p1 size:(NSInteger)p2 mimeType:(NSString *)p3;
	-(void) useAdvancedAuthentication;
	-(NSArray *) connections;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithPageName:(NSString *)p0 clientId:(NSString *)p1 clientSecret:(NSString *)p2;
	-(id) initWithPageName:(NSString *)p0 clientId:(NSString *)p1 clientSecret:(NSString *)p2 scopes:(NSMutableArray <NSString *>*)p3;
	-(id) initWithPageName:(NSString *)p0 clientId:(NSString *)p1 clientSecret:(NSString *)p2 redirectUri:(NSString *)p3 state:(NSString *)p4;
	-(id) initWithPageName:(NSString *)p0 clientId:(NSString *)p1 clientSecret:(NSString *)p2 redirectUri:(NSString *)p3 state:(NSString *)p4 scopes:(NSMutableArray <NSString *>*)p5;
@end

@protocol CRPointsOfInterestProtocol
	@optional -(NSMutableArray <NSObject *>*) nearbyPoisWithLatitude:(NSNumber *)p0 longitude:(NSNumber *)p1 radius:(NSNumber *)p2 searchTerm:(NSString *)p3 categories:(NSMutableArray <NSString *>*)p4;
@end

@interface CRFoursquare : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(NSMutableArray <NSObject *>*) nearbyPoisWithLatitude:(NSNumber *)p0 longitude:(NSNumber *)p1 radius:(NSNumber *)p2 searchTerm:(NSString *)p3 categories:(NSMutableArray <NSString *>*)p4;
	-(void) useAdvancedAuthentication;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
@end

@interface CRGitHub : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) login;
	-(void) logout;
	-(void) useAdvancedAuthentication;
	-(id) dateOfBirth;
	-(NSString *) email;
	-(NSString *) fullName;
	-(NSString *) gender;
	-(NSString *) identifier;
	-(NSString *) locale;
	-(NSString *) pictureURL;
	-(NSString *) profileDescription;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 scopes:(NSMutableArray <NSString *>*)p2;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3 scopes:(NSMutableArray <NSString *>*)p4;
@end

@interface CRGoogleCloudPlatform : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(id) createBucketWithName:(NSString *)p0;
	-(void) deleteBucket:(id)p0;
	-(void) deleteFileWithName:(NSString *)p0 bucket:(id)p1;
	-(NSInputStream *) downloadFileWithName:(NSString *)p0 bucket:(id)p1;
	-(NSMutableArray <NSObject *>*) listFilesInBucket:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(id) metadataOfFileInBucket:(id)p0 fileName:(NSString *)p1;
	-(void) uploadFileToBucket:(id)p0 name:(NSString *)p1 withStream:(NSInputStream *)p2 size:(NSInteger)p3;
	-(void) useAdvancedAuthentication;
	-(NSMutableArray <NSObject *>*) listBuckets;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithClientEmail:(NSString *)p0 privateKey:(NSString *)p1 projectId:(NSString *)p2;
@end

@interface CRGoogleDrive : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(NSMutableArray <NSObject *>*) childrenOfFolderWithPath:(NSString *)p0;
	-(NSMutableArray <NSObject *>*) childrenOfFolderWithPath:(NSString *)p0 offset:(NSInteger)p1 limit:(NSInteger)p2;
	-(void) copyFileFromPath:(NSString *)p0 toDestinationPath:(NSString *)p1;
	-(void) createFolderWithPath:(NSString *)p0;
	-(void) deleteFileWithPath:(NSString *)p0;
	-(NSInputStream *) downloadFileWithPath:(NSString *)p0;
	-(BOOL) fileExistsAtPath:(NSString *)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) login;
	-(void) logout;
	-(id) metadataOfFileWithPath:(NSString *)p0;
	-(void) moveFileFromPath:(NSString *)p0 toDestinationPath:(NSString *)p1;
	-(NSMutableArray <NSObject *>*) searchWithQuery:(NSString *)p0;
	-(NSString *) shareLinkForFileWithPath:(NSString *)p0;
	-(NSInputStream *) thumbnailOfFileWithPath:(NSString *)p0;
	-(void) uploadFileToPath:(NSString *)p0 withStream:(NSInputStream *)p1 size:(NSInteger)p2 overwrite:(BOOL)p3;
	-(void) useAdvancedAuthentication;
	-(NSString *) saveAsString;
	-(id) spaceAllocation;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(NSString *) userLogin;
	-(NSString *) userName;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 scopes:(NSMutableArray <NSString *>*)p2;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3 scopes:(NSMutableArray <NSString *>*)p4;
@end

@interface CRGooglePlaces : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(NSMutableArray <NSObject *>*) nearbyPoisWithLatitude:(NSNumber *)p0 longitude:(NSNumber *)p1 radius:(NSNumber *)p2 searchTerm:(NSString *)p3 categories:(NSMutableArray <NSString *>*)p4;
	-(void) useAdvancedAuthentication;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithApiKey:(NSString *)p0;
@end

@interface CRGooglePlus : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) login;
	-(void) logout;
	-(void) useAdvancedAuthentication;
	-(id) dateOfBirth;
	-(NSString *) email;
	-(NSString *) fullName;
	-(NSString *) gender;
	-(NSString *) identifier;
	-(NSString *) locale;
	-(NSString *) pictureURL;
	-(NSString *) profileDescription;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 scopes:(NSMutableArray <NSString *>*)p2;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3 scopes:(NSMutableArray <NSString *>*)p4;
@end

@interface CRHeroku : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) login;
	-(void) logout;
	-(void) useAdvancedAuthentication;
	-(id) dateOfBirth;
	-(NSString *) email;
	-(NSString *) fullName;
	-(NSString *) gender;
	-(NSString *) identifier;
	-(NSString *) locale;
	-(NSString *) pictureURL;
	-(NSString *) profileDescription;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 scopes:(NSMutableArray <NSString *>*)p2;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3 scopes:(NSMutableArray <NSString *>*)p4;
@end

@interface CRImageMetaData : CRSandboxObject {
}
	-(NSInteger) height;
	-(void) setHeight:(NSInteger)p0;
	-(NSInteger) width;
	-(void) setWidth:(NSInteger)p0;
	-(id) init;
@end

@interface CRInstagram : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) login;
	-(void) logout;
	-(void) useAdvancedAuthentication;
	-(id) dateOfBirth;
	-(NSString *) email;
	-(NSString *) fullName;
	-(NSString *) gender;
	-(NSString *) identifier;
	-(NSString *) locale;
	-(NSString *) pictureURL;
	-(NSString *) profileDescription;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 scopes:(NSMutableArray <NSString *>*)p2;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3 scopes:(NSMutableArray <NSString *>*)p4;
@end

@interface CRLinkedIn : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) login;
	-(void) logout;
	-(void) useAdvancedAuthentication;
	-(id) dateOfBirth;
	-(NSString *) email;
	-(NSString *) fullName;
	-(NSString *) gender;
	-(NSString *) identifier;
	-(NSString *) locale;
	-(NSString *) pictureURL;
	-(NSString *) profileDescription;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 scopes:(NSMutableArray <NSString *>*)p2;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3 scopes:(NSMutableArray <NSString *>*)p4;
@end

@interface CRLocation : CRSandboxObject {
}
	-(NSNumber *) latitude;
	-(void) setLatitude:(NSNumber *)p0;
	-(NSNumber *) longitude;
	-(void) setLongitude:(NSNumber *)p0;
	-(id) init;
@end

@interface CRMailJet : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) sendEmailFromAddress:(NSString *)p0 fromName:(NSString *)p1 toAddresses:(NSMutableArray <NSString *>*)p2 subject:(NSString *)p3 textBody:(NSString *)p4 htmlBody:(NSString *)p5 ccAddresses:(NSMutableArray <NSString *>*)p6 bccAddresses:(NSMutableArray <NSString *>*)p7;
	-(void) loadAsString:(NSString *)p0;
	-(void) useAdvancedAuthentication;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
@end

@interface CRMicrosoft : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(NSMutableArray <NSObject *>*) childrenOfFolderWithPath:(NSString *)p0;
	-(NSMutableArray <NSObject *>*) childrenOfFolderWithPath:(NSString *)p0 offset:(NSInteger)p1 limit:(NSInteger)p2;
	-(void) copyFileFromPath:(NSString *)p0 toDestinationPath:(NSString *)p1;
	-(void) createFolderWithPath:(NSString *)p0;
	-(void) deleteFileWithPath:(NSString *)p0;
	-(NSInputStream *) downloadFileWithPath:(NSString *)p0;
	-(BOOL) fileExistsAtPath:(NSString *)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) login;
	-(void) logout;
	-(id) metadataOfFileWithPath:(NSString *)p0;
	-(void) moveFileFromPath:(NSString *)p0 toDestinationPath:(NSString *)p1;
	-(NSMutableArray <NSObject *>*) searchWithQuery:(NSString *)p0;
	-(NSString *) shareLinkForFileWithPath:(NSString *)p0;
	-(NSInputStream *) thumbnailOfFileWithPath:(NSString *)p0;
	-(void) uploadFileToPath:(NSString *)p0 withStream:(NSInputStream *)p1 size:(NSInteger)p2 overwrite:(BOOL)p3;
	-(void) useAdvancedAuthentication;
	-(NSString *) saveAsString;
	-(id) spaceAllocation;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(NSString *) userLogin;
	-(NSString *) userName;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 scopes:(NSMutableArray <NSString *>*)p2;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3 scopes:(NSMutableArray <NSString *>*)p4;
@end

@interface CRMicrosoftAzure : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(id) createBucketWithName:(NSString *)p0;
	-(void) deleteBucket:(id)p0;
	-(void) deleteFileWithName:(NSString *)p0 bucket:(id)p1;
	-(NSInputStream *) downloadFileWithName:(NSString *)p0 bucket:(id)p1;
	-(NSMutableArray <NSObject *>*) listFilesInBucket:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(id) metadataOfFileInBucket:(id)p0 fileName:(NSString *)p1;
	-(void) uploadFileToBucket:(id)p0 name:(NSString *)p1 withStream:(NSInputStream *)p2 size:(NSInteger)p3;
	-(void) useAdvancedAuthentication;
	-(NSMutableArray <NSObject *>*) listBuckets;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithAccountName:(NSString *)p0 accessKey:(NSString *)p1;
@end

@interface CRMicrosoftLive : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) login;
	-(void) logout;
	-(void) useAdvancedAuthentication;
	-(id) dateOfBirth;
	-(NSString *) email;
	-(NSString *) fullName;
	-(NSString *) gender;
	-(NSString *) identifier;
	-(NSString *) locale;
	-(NSString *) pictureURL;
	-(NSString *) profileDescription;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 scopes:(NSMutableArray <NSString *>*)p2;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3 scopes:(NSMutableArray <NSString *>*)p4;
@end

@protocol CRSMSProtocol
	@required -(void) sendSmsFromName:(NSString *)p0 toNumber:(NSString *)p1 content:(NSString *)p2;
@end

@interface CRNexmo : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) sendSmsFromName:(NSString *)p0 toNumber:(NSString *)p1 content:(NSString *)p2;
	-(void) useAdvancedAuthentication;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
@end

@interface CROneDrive : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(NSMutableArray <NSObject *>*) childrenOfFolderWithPath:(NSString *)p0;
	-(NSMutableArray <NSObject *>*) childrenOfFolderWithPath:(NSString *)p0 offset:(NSInteger)p1 limit:(NSInteger)p2;
	-(void) copyFileFromPath:(NSString *)p0 toDestinationPath:(NSString *)p1;
	-(void) createFolderWithPath:(NSString *)p0;
	-(void) deleteFileWithPath:(NSString *)p0;
	-(NSInputStream *) downloadFileWithPath:(NSString *)p0;
	-(BOOL) fileExistsAtPath:(NSString *)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) login;
	-(void) logout;
	-(id) metadataOfFileWithPath:(NSString *)p0;
	-(void) moveFileFromPath:(NSString *)p0 toDestinationPath:(NSString *)p1;
	-(NSMutableArray <NSObject *>*) searchWithQuery:(NSString *)p0;
	-(NSString *) shareLinkForFileWithPath:(NSString *)p0;
	-(NSInputStream *) thumbnailOfFileWithPath:(NSString *)p0;
	-(void) uploadFileToPath:(NSString *)p0 withStream:(NSInputStream *)p1 size:(NSInteger)p2 overwrite:(BOOL)p3;
	-(void) useAdvancedAuthentication;
	-(NSString *) saveAsString;
	-(id) spaceAllocation;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(NSString *) userLogin;
	-(NSString *) userName;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 scopes:(NSMutableArray <NSString *>*)p2;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3 scopes:(NSMutableArray <NSString *>*)p4;
@end

@interface CROneDriveBusiness : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(NSMutableArray <NSObject *>*) childrenOfFolderWithPath:(NSString *)p0;
	-(NSMutableArray <NSObject *>*) childrenOfFolderWithPath:(NSString *)p0 offset:(NSInteger)p1 limit:(NSInteger)p2;
	-(void) copyFileFromPath:(NSString *)p0 toDestinationPath:(NSString *)p1;
	-(void) createFolderWithPath:(NSString *)p0;
	-(void) deleteFileWithPath:(NSString *)p0;
	-(NSInputStream *) downloadFileWithPath:(NSString *)p0;
	-(BOOL) fileExistsAtPath:(NSString *)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) login;
	-(void) logout;
	-(id) metadataOfFileWithPath:(NSString *)p0;
	-(void) moveFileFromPath:(NSString *)p0 toDestinationPath:(NSString *)p1;
	-(NSMutableArray <NSObject *>*) searchWithQuery:(NSString *)p0;
	-(NSString *) shareLinkForFileWithPath:(NSString *)p0;
	-(NSInputStream *) thumbnailOfFileWithPath:(NSString *)p0;
	-(void) uploadFileToPath:(NSString *)p0 withStream:(NSInputStream *)p1 size:(NSInteger)p2 overwrite:(BOOL)p3;
	-(void) useAdvancedAuthentication;
	-(NSString *) saveAsString;
	-(id) spaceAllocation;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(NSString *) userLogin;
	-(NSString *) userName;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
@end

@protocol CRPaymentProtocol
	@optional @property (nonatomic, assign, readonly) NSMutableArray <NSObject *>* listSubscriptionPlans;
	@optional -(id) createChargeWithAmount:(NSNumber *)p0 currency:(NSString *)p1 source:(id)p2;
	@optional -(id) chargeWithIdentifier:(NSString *)p0;
	@optional -(NSMutableArray <NSObject *>*) listChargesFrom:(NSNumber *)p0 to:(NSNumber *)p1 creditCard:(id)p2;
	@optional -(id) refundChargeWithIdentifier:(NSString *)p0;
	@optional -(id) partiallyRefundChargeWithIdentifier:(NSString *)p0 amount:(NSNumber *)p1;
	@optional -(NSMutableArray <NSObject *>*) refundsForChargeWithIdentifier:(NSString *)p0;
	@optional -(id) refundWithIdentifier:(NSString *)p0;
	@optional -(id) createSubscriptionPlanWithName:(NSString *)p0 amount:(NSNumber *)p1 currency:(NSString *)p2 description:(NSString *)p3 interval:(NSString *)p4 intervalCount:(NSNumber *)p5;
	@optional -(id) createSubscriptionWithPlanID:(NSString *)p0 name:(NSString *)p1 description:(NSString *)p2 source:(id)p3;
	@optional -(void) cancelSubscriptionWithIdentifier:(NSString *)p0;
@end

@interface CRPayPal : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) cancelSubscriptionWithIdentifier:(NSString *)p0;
	-(id) chargeWithIdentifier:(NSString *)p0;
	-(id) createChargeWithAmount:(NSNumber *)p0 currency:(NSString *)p1 source:(id)p2;
	-(id) createSubscriptionPlanWithName:(NSString *)p0 amount:(NSNumber *)p1 currency:(NSString *)p2 description:(NSString *)p3 interval:(NSString *)p4 intervalCount:(NSNumber *)p5;
	-(id) createSubscriptionWithPlanID:(NSString *)p0 name:(NSString *)p1 description:(NSString *)p2 source:(id)p3;
	-(NSMutableArray <NSObject *>*) listChargesFrom:(NSNumber *)p0 to:(NSNumber *)p1 creditCard:(id)p2;
	-(void) loadAsString:(NSString *)p0;
	-(id) partiallyRefundChargeWithIdentifier:(NSString *)p0 amount:(NSNumber *)p1;
	-(id) refundChargeWithIdentifier:(NSString *)p0;
	-(id) refundWithIdentifier:(NSString *)p0;
	-(NSMutableArray <NSObject *>*) refundsForChargeWithIdentifier:(NSString *)p0;
	-(void) useAdvancedAuthentication;
	-(NSMutableArray <NSObject *>*) listSubscriptionPlans;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithUseSandbox:(BOOL)p0 clientId:(NSString *)p1 clientSecret:(NSString *)p2;
@end

@interface CRPOI : CRSandboxObject {
}
	-(NSMutableArray <NSString *>*) categories;
	-(void) setCategories:(NSMutableArray <NSString *>*)p0;
	-(NSString *) imageURL;
	-(void) setImageURL:(NSString *)p0;
	-(id) location;
	-(void) setLocation:(id)p0;
	-(NSString *) name;
	-(void) setName:(NSString *)p0;
	-(NSString *) phone;
	-(void) setPhone:(NSString *)p0;
	-(id) init;
@end

@interface CRProductHunt : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) login;
	-(void) logout;
	-(void) useAdvancedAuthentication;
	-(id) dateOfBirth;
	-(NSString *) email;
	-(NSString *) fullName;
	-(NSString *) gender;
	-(NSString *) identifier;
	-(NSString *) locale;
	-(NSString *) pictureURL;
	-(NSString *) profileDescription;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 scopes:(NSMutableArray <NSString *>*)p2;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3 scopes:(NSMutableArray <NSString *>*)p4;
@end

@interface CRRackspace : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(id) createBucketWithName:(NSString *)p0;
	-(void) deleteBucket:(id)p0;
	-(void) deleteFileWithName:(NSString *)p0 bucket:(id)p1;
	-(NSInputStream *) downloadFileWithName:(NSString *)p0 bucket:(id)p1;
	-(NSMutableArray <NSObject *>*) listFilesInBucket:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(id) metadataOfFileInBucket:(id)p0 fileName:(NSString *)p1;
	-(void) uploadFileToBucket:(id)p0 name:(NSString *)p1 withStream:(NSInputStream *)p2 size:(NSInteger)p3;
	-(void) useAdvancedAuthentication;
	-(NSMutableArray <NSObject *>*) listBuckets;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithUsername:(NSString *)p0 apiKey:(NSString *)p1 region:(NSString *)p2;
@end

@interface CRRefund : CRSandboxObject {
}
	-(void) initWithAmount:(NSNumber *)p0 chargeId:(NSString *)p1 created:(NSNumber *)p2 identifier:(NSString *)p3 state:(NSString *)p4 currency:(NSString *)p5;
	-(NSNumber *) amount;
	-(void) setAmount:(NSNumber *)p0;
	-(NSString *) chargeID;
	-(void) setChargeID:(NSString *)p0;
	-(NSNumber *) created;
	-(void) setCreated:(NSNumber *)p0;
	-(NSString *) currency;
	-(void) setCurrency:(NSString *)p0;
	-(NSString *) identifier;
	-(void) setIdentifier:(NSString *)p0;
	-(NSString *) state;
	-(void) setState:(NSString *)p0;
	-(id) init;
@end

@interface CRSendGrid : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) sendEmailFromAddress:(NSString *)p0 fromName:(NSString *)p1 toAddresses:(NSMutableArray <NSString *>*)p2 subject:(NSString *)p3 textBody:(NSString *)p4 htmlBody:(NSString *)p5 ccAddresses:(NSMutableArray <NSString *>*)p6 bccAddresses:(NSMutableArray <NSString *>*)p7;
	-(void) loadAsString:(NSString *)p0;
	-(void) useAdvancedAuthentication;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithApiKey:(NSString *)p0;
@end

@interface CRSlack : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) login;
	-(void) logout;
	-(void) useAdvancedAuthentication;
	-(id) dateOfBirth;
	-(NSString *) email;
	-(NSString *) fullName;
	-(NSString *) gender;
	-(NSString *) identifier;
	-(NSString *) locale;
	-(NSString *) pictureURL;
	-(NSString *) profileDescription;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 scopes:(NSMutableArray <NSString *>*)p2;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3 scopes:(NSMutableArray <NSString *>*)p4;
@end

@interface CRSpaceAllocation : CRSandboxObject {
}
	-(NSNumber *) total;
	-(void) setTotal:(NSNumber *)p0;
	-(NSNumber *) used;
	-(void) setUsed:(NSNumber *)p0;
	-(id) init;
@end

@interface CRStripe : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) cancelSubscriptionWithIdentifier:(NSString *)p0;
	-(id) chargeWithIdentifier:(NSString *)p0;
	-(id) createChargeWithAmount:(NSNumber *)p0 currency:(NSString *)p1 source:(id)p2;
	-(id) createSubscriptionPlanWithName:(NSString *)p0 amount:(NSNumber *)p1 currency:(NSString *)p2 description:(NSString *)p3 interval:(NSString *)p4 intervalCount:(NSNumber *)p5;
	-(id) createSubscriptionWithPlanID:(NSString *)p0 name:(NSString *)p1 description:(NSString *)p2 source:(id)p3;
	-(NSMutableArray <NSObject *>*) listChargesFrom:(NSNumber *)p0 to:(NSNumber *)p1 creditCard:(id)p2;
	-(void) loadAsString:(NSString *)p0;
	-(id) partiallyRefundChargeWithIdentifier:(NSString *)p0 amount:(NSNumber *)p1;
	-(id) refundChargeWithIdentifier:(NSString *)p0;
	-(id) refundWithIdentifier:(NSString *)p0;
	-(NSMutableArray <NSObject *>*) refundsForChargeWithIdentifier:(NSString *)p0;
	-(void) useAdvancedAuthentication;
	-(NSMutableArray <NSObject *>*) listSubscriptionPlans;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithSecretKey:(NSString *)p0;
@end

@interface CRSubscription : CRSandboxObject {
}
	-(NSNumber *) created;
	-(void) setCreated:(NSNumber *)p0;
	-(id) creditCard;
	-(void) setCreditCard:(id)p0;
	-(NSString *) identifier;
	-(void) setIdentifier:(NSString *)p0;
	-(NSNumber *) lastCharge;
	-(void) setLastCharge:(NSNumber *)p0;
	-(NSString *) name;
	-(void) setName:(NSString *)p0;
	-(NSNumber *) nextCharge;
	-(void) setNextCharge:(NSNumber *)p0;
	-(NSString *) state;
	-(void) setState:(NSString *)p0;
	-(NSString *) subscriptionDescription;
	-(void) setSubscriptionDescription:(NSString *)p0;
	-(NSString *) subscriptionPlanID;
	-(void) setSubscriptionPlanID:(NSString *)p0;
	-(id) init;
@end

@interface CRSubscriptionPlan : CRSandboxObject {
}
	-(NSNumber *) amount;
	-(void) setAmount:(NSNumber *)p0;
	-(NSNumber *) created;
	-(void) setCreated:(NSNumber *)p0;
	-(NSString *) currency;
	-(void) setCurrency:(NSString *)p0;
	-(NSString *) identifier;
	-(void) setIdentifier:(NSString *)p0;
	-(NSString *) interval;
	-(void) setInterval:(NSString *)p0;
	-(NSNumber *) interval_count;
	-(void) setInterval_count:(NSNumber *)p0;
	-(NSString *) name;
	-(void) setName:(NSString *)p0;
	-(NSString *) subscriptionDescription;
	-(void) setSubscriptionDescription:(NSString *)p0;
	-(id) init;
@end

@interface CRTwilio : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) sendSmsFromName:(NSString *)p0 toNumber:(NSString *)p1 content:(NSString *)p2;
	-(void) useAdvancedAuthentication;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithAccountSid:(NSString *)p0 authToken:(NSString *)p1;
@end

@interface CRTwitter : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) login;
	-(void) logout;
	-(void) postImageWithMessage:(NSString *)p0 image:(NSInputStream *)p1;
	-(void) postUpdateWithContent:(NSString *)p0;
	-(void) postVideoWithMessage:(NSString *)p0 video:(NSInputStream *)p1 size:(NSInteger)p2 mimeType:(NSString *)p3;
	-(void) useAdvancedAuthentication;
	-(NSArray *) connections;
	-(id) dateOfBirth;
	-(NSString *) email;
	-(NSString *) fullName;
	-(NSString *) gender;
	-(NSString *) identifier;
	-(NSString *) locale;
	-(NSString *) pictureURL;
	-(NSString *) profileDescription;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
@end

@interface CRTwizo : NSObject {
}
	-(void) loadAsString:(NSString *)p0;
	-(void) sendSmsFromName:(NSString *)p0 toNumber:(NSString *)p1 content:(NSString *)p2;
	-(void) useAdvancedAuthentication;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithKey:(NSString *)p0;
@end

@protocol CRUploadProgressDelegate
	@optional -(void) didUploadBytes:(NSInteger)p0;
@end

@interface CRYahoo : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(void) login;
	-(void) logout;
	-(void) useAdvancedAuthentication;
	-(id) dateOfBirth;
	-(NSString *) email;
	-(NSString *) fullName;
	-(NSString *) gender;
	-(NSString *) identifier;
	-(NSString *) locale;
	-(NSString *) pictureURL;
	-(NSString *) profileDescription;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1 redirectUri:(NSString *)p2 state:(NSString *)p3;
	-(id) initWithClientId:(NSString *)p0 clientSecret:(NSString *)p1;
@end

@interface CRYelp : NSObject {
}
	-(id) advancedRequestWithSpecification:(id)p0;
	-(void) loadAsString:(NSString *)p0;
	-(NSMutableArray <NSObject *>*) nearbyPoisWithLatitude:(NSNumber *)p0 longitude:(NSNumber *)p1 radius:(NSNumber *)p2 searchTerm:(NSString *)p3 categories:(NSMutableArray <NSString *>*)p4;
	-(void) useAdvancedAuthentication;
	-(NSString *) saveAsString;
	-(NSObject *) target;
	-(void) setTarget:(NSObject *)p0;
	-(id) init;
	-(id) initWithConsumerKey:(NSString *)p0 consumerSecret:(NSString *)p1 token:(NSString *)p2 tokenSecret:(NSString *)p3;
@end

@interface CustomStream : NSInputStream {
}
	-(void) resetStream;
	-(NSInteger) available;
	-(void) setAvailable:(NSInteger)p0;
	-(NSInputStream *) source;
	-(void) setSource:(NSInputStream *)p0;
	-(NSObject *) uploadProgressDelegate;
	-(void) setUploadProgressDelegate:(NSObject *)p0;
	-(id) init;
	-(id) initWithStream:(NSInputStream *)p0;
@end

	static MTClassMap __xamarin_class_map [] = {
		{ NULL, 0xA204 /* 'NSObject' => 'Foundation.NSObject, Xamarin.iOS' */ },
		{ NULL, 0xFE04 /* 'UIResponder' => 'UIKit.UIResponder, Xamarin.iOS' */ },
		{ NULL, 0x904 /* 'UIViewController' => 'UIKit.UIViewController, Xamarin.iOS' */ },
		{ NULL, 0x12004 /* 'UITableViewController' => 'UIKit.UITableViewController, Xamarin.iOS' */ },
		{ NULL, 0x704 /* 'UIView' => 'UIKit.UIView, Xamarin.iOS' */ },
		{ NULL, 0x10D04 /* 'UIScrollView' => 'UIKit.UIScrollView, Xamarin.iOS' */ },
		{ NULL, 0x204 /* 'UITableView' => 'UIKit.UITableView, Xamarin.iOS' */ },
		{ NULL, 0x304 /* 'UITableViewCell' => 'UIKit.UITableViewCell, Xamarin.iOS' */ },
		{ NULL, 0x604 /* 'UITraitCollection' => 'UIKit.UITraitCollection, Xamarin.iOS' */ },
		{ NULL, 0xB04 /* 'UIWindow' => 'UIKit.UIWindow, Xamarin.iOS' */ },
		{ NULL, 0xC04 /* 'UIColor' => 'UIKit.UIColor, Xamarin.iOS' */ },
		{ NULL, 0x4004 /* 'NSIndexPath' => 'Foundation.NSIndexPath, Xamarin.iOS' */ },
		{ NULL, 0x4204 /* 'NSUserActivity' => 'Foundation.NSUserActivity, Xamarin.iOS' */ },
		{ NULL, 0x4B04 /* 'NSArray' => 'Foundation.NSArray, Xamarin.iOS' */ },
		{ NULL, 0x4C04 /* 'UICubicTimingParameters' => 'UIKit.UICubicTimingParameters, Xamarin.iOS' */ },
		{ NULL, 0x5104 /* 'NSCoder' => 'Foundation.NSCoder, Xamarin.iOS' */ },
		{ NULL, 0x5204 /* 'UIDevice' => 'UIKit.UIDevice, Xamarin.iOS' */ },
		{ NULL, 0x5E04 /* 'NSDate' => 'Foundation.NSDate, Xamarin.iOS' */ },
		{ NULL, 0x7304 /* 'NSStream' => 'Foundation.NSStream, Xamarin.iOS' */ },
		{ NULL, 0x6504 /* 'NSInputStream' => 'Foundation.NSInputStream, Xamarin.iOS' */ },
		{ NULL, 0x6604 /* 'NSMutableArray' => 'Foundation.NSMutableArray, Xamarin.iOS' */ },
		{ NULL, 0x7204 /* 'NSRunLoop' => 'Foundation.NSRunLoop, Xamarin.iOS' */ },
		{ NULL, 0x7404 /* 'NSString' => 'Foundation.NSString, Xamarin.iOS' */ },
		{ NULL, 0x7504 /* 'NSURL' => 'Foundation.NSUrl, Xamarin.iOS' */ },
		{ NULL, 0x7604 /* 'NSUserDefaults' => 'Foundation.NSUserDefaults, Xamarin.iOS' */ },
		{ NULL, 0x8C04 /* 'UIFocusAnimationCoordinator' => 'UIKit.UIFocusAnimationCoordinator, Xamarin.iOS' */ },
		{ NULL, 0x9404 /* 'UIFocusUpdateContext' => 'UIKit.UIFocusUpdateContext, Xamarin.iOS' */ },
		{ NULL, 0x9A04 /* '__MonoMac_NSActionDispatcher' => 'Foundation.NSActionDispatcher, Xamarin.iOS' */ },
		{ NULL, 0x9B04 /* '__MonoMac_NSAsyncActionDispatcher' => 'Foundation.NSAsyncActionDispatcher, Xamarin.iOS' */ },
		{ NULL, 0x9C04 /* 'NSAutoreleasePool' => 'Foundation.NSAutoreleasePool, Xamarin.iOS' */ },
		{ NULL, 0x9D04 /* 'NSError' => 'Foundation.NSError, Xamarin.iOS' */ },
		{ NULL, 0x9E04 /* 'CALayer' => 'CoreAnimation.CALayer, Xamarin.iOS' */ },
		{ NULL, 0xA604 /* 'NSValue' => 'Foundation.NSValue, Xamarin.iOS' */ },
		{ NULL, 0x9F04 /* 'NSNumber' => 'Foundation.NSNumber, Xamarin.iOS' */ },
		{ NULL, 0xB104 /* 'UIImage' => 'UIKit.UIImage, Xamarin.iOS' */ },
		{ NULL, 0xBB04 /* 'UIImageView' => 'UIKit.UIImageView, Xamarin.iOS' */ },
		{ NULL, 0xC004 /* 'UILabel' => 'UIKit.UILabel, Xamarin.iOS' */ },
		{ NULL, 0xC204 /* 'UILocalNotification' => 'UIKit.UILocalNotification, Xamarin.iOS' */ },
		{ NULL, 0xC604 /* 'UIBezierPath' => 'UIKit.UIBezierPath, Xamarin.iOS' */ },
		{ NULL, 0xD604 /* 'UINavigationController' => 'UIKit.UINavigationController, Xamarin.iOS' */ },
		{ NULL, 0xD704 /* 'UIPasteboard' => 'UIKit.UIPasteboard, Xamarin.iOS' */ },
		{ NULL, 0xDA04 /* 'UIApplication' => 'UIKit.UIApplication, Xamarin.iOS' */ },
		{ NULL, 0xDD04 /* 'UIBarItem' => 'UIKit.UIBarItem, Xamarin.iOS' */ },
		{ NULL, 0xDE04 /* 'CKShareMetadata' => 'CloudKit.CKShareMetadata, Xamarin.iOS' */ },
		{ NULL, 0xE304 /* 'UINavigationItem' => 'UIKit.UINavigationItem, Xamarin.iOS' */ },
		{ NULL, 0xE404 /* 'UIStoryboardSegue' => 'UIKit.UIStoryboardSegue, Xamarin.iOS' */ },
		{ NULL, 0xFA04 /* 'UIPress' => 'UIKit.UIPress, Xamarin.iOS' */ },
		{ NULL, 0xFD04 /* 'NSException' => 'Foundation.NSException, Xamarin.iOS' */ },
		{ NULL, 0x11504 /* 'UISpringTimingParameters' => 'UIKit.UISpringTimingParameters, Xamarin.iOS' */ },
		{ NULL, 0x11804 /* 'NSNull' => 'Foundation.NSNull, Xamarin.iOS' */ },
		{ NULL, 0x12504 /* 'UITableViewFocusUpdateContext' => 'UIKit.UITableViewFocusUpdateContext, Xamarin.iOS' */ },
		{ NULL, 0x12604 /* 'UITableViewRowAction' => 'UIKit.UITableViewRowAction, Xamarin.iOS' */ },
		{ NULL, 0x12D04 /* 'UITouch' => 'UIKit.UITouch, Xamarin.iOS' */ },
		{ NULL, 0x12E04 /* 'UIActivityIndicatorView' => 'UIKit.UIActivityIndicatorView, Xamarin.iOS' */ },
		{ NULL, 0x13204 /* 'UIApplicationShortcutItem' => 'UIKit.UIApplicationShortcutItem, Xamarin.iOS' */ },
		{ NULL, 0x13304 /* 'UIAlertAction' => 'UIKit.UIAlertAction, Xamarin.iOS' */ },
		{ NULL, 0x13504 /* 'UIUserNotificationSettings' => 'UIKit.UIUserNotificationSettings, Xamarin.iOS' */ },
		{ NULL, 0x13604 /* 'UIAlertController' => 'UIKit.UIAlertController, Xamarin.iOS' */ },
		{ NULL, 0x5904 /* 'NSData' => 'Foundation.NSData, Xamarin.iOS' */ },
		{ NULL, 0x6304 /* 'NSDictionary' => 'Foundation.NSDictionary, Xamarin.iOS' */ },
		{ NULL, 0x6804 /* 'NSMutableData' => 'Foundation.NSMutableData, Xamarin.iOS' */ },
		{ NULL, 0x6B04 /* 'NSMutableDictionary' => 'Foundation.NSMutableDictionary, Xamarin.iOS' */ },
		{ NULL, 0x6D04 /* 'NSNotificationCenter' => 'Foundation.NSNotificationCenter, Xamarin.iOS' */ },
		{ NULL, 0xA804 /* 'UIGestureRecognizer' => 'UIKit.UIGestureRecognizer, Xamarin.iOS' */ },
		{ NULL, 0xB204 /* 'UIImagePickerController' => 'UIKit.UIImagePickerController, Xamarin.iOS' */ },
		{ NULL, 0xC304 /* 'UILongPressGestureRecognizer' => 'UIKit.UILongPressGestureRecognizer, Xamarin.iOS' */ },
		{ NULL, 0xC704 /* 'UIRotationGestureRecognizer' => 'UIKit.UIRotationGestureRecognizer, Xamarin.iOS' */ },
		{ NULL, 0xC904 /* 'UITapGestureRecognizer' => 'UIKit.UITapGestureRecognizer, Xamarin.iOS' */ },
		{ NULL, 0xCB04 /* 'UIPanGestureRecognizer' => 'UIKit.UIPanGestureRecognizer, Xamarin.iOS' */ },
		{ NULL, 0xCD04 /* 'UIPinchGestureRecognizer' => 'UIKit.UIPinchGestureRecognizer, Xamarin.iOS' */ },
		{ NULL, 0xCF04 /* 'UISwipeGestureRecognizer' => 'UIKit.UISwipeGestureRecognizer, Xamarin.iOS' */ },
		{ NULL, 0xD104 /* 'UIScreenEdgePanGestureRecognizer' => 'UIKit.UIScreenEdgePanGestureRecognizer, Xamarin.iOS' */ },
		{ NULL, 0xDB04 /* 'UIBarButtonItem' => 'UIKit.UIBarButtonItem, Xamarin.iOS' */ },
		{ NULL, 0x300 /* 'AppDelegate' => 'UnifiedCloudStorage.AppDelegate, UnifiedCloudStorage' */ },
		{ NULL, 0x400 /* 'ListViewController' => 'UnifiedCloudStorage.ListViewController, UnifiedCloudStorage' */ },
		{ NULL, 0x500 /* 'UnifiedCloudStorage_ListTableSource' => 'UnifiedCloudStorage.ListTableSource, UnifiedCloudStorage' */ },
		{ NULL, 0x1000 /* 'UnifiedCloudStorage_SubfolderSource' => 'UnifiedCloudStorage.SubfolderSource, UnifiedCloudStorage' */ },
		{ NULL, 0x600 /* 'CloudStorageViewController' => 'UnifiedCloudStorage.CloudStorageViewController, UnifiedCloudStorage' */ },
		{ NULL, 0xA00 /* 'UnifiedCloudStorage_CloudStorageSource' => 'UnifiedCloudStorage.CloudStorageSource, UnifiedCloudStorage' */ },
		{ NULL, 0xE00 /* 'SubfolderViewController' => 'UnifiedCloudStorage.SubfolderViewController, UnifiedCloudStorage' */ },
		{ NULL, 0xA404 /* '__NSObject_Disposer' => 'Foundation.NSObject+NSObject_Disposer, Xamarin.iOS' */ },
		{ NULL, 0xA904 /* '__UIGestureRecognizerToken' => 'UIKit.UIGestureRecognizer+Token, Xamarin.iOS' */ },
		{ NULL, 0xAA04 /* '__UIGestureRecognizerParameterlessToken' => 'UIKit.UIGestureRecognizer+ParameterlessDispatch, Xamarin.iOS' */ },
		{ NULL, 0xAB04 /* '__UIGestureRecognizerParametrizedToken' => 'UIKit.UIGestureRecognizer+ParametrizedDispatch, Xamarin.iOS' */ },
		{ NULL, 0xB304 /* 'UIKit_UIImagePickerController__UIImagePickerControllerDelegate' => 'UIKit.UIImagePickerController+_UIImagePickerControllerDelegate, Xamarin.iOS' */ },
		{ NULL, 0xC404 /* '__UILongPressGestureRecognizer' => 'UIKit.UILongPressGestureRecognizer+Callback, Xamarin.iOS' */ },
		{ NULL, 0xC804 /* '__UIRotationGestureRecognizer' => 'UIKit.UIRotationGestureRecognizer+Callback, Xamarin.iOS' */ },
		{ NULL, 0xCA04 /* '__UITapGestureRecognizer' => 'UIKit.UITapGestureRecognizer+Callback, Xamarin.iOS' */ },
		{ NULL, 0xCC04 /* '__UIPanGestureRecognizer' => 'UIKit.UIPanGestureRecognizer+Callback, Xamarin.iOS' */ },
		{ NULL, 0xCE04 /* '__UIPinchGestureRecognizer' => 'UIKit.UIPinchGestureRecognizer+Callback, Xamarin.iOS' */ },
		{ NULL, 0xD004 /* '__UISwipeGestureRecognizer' => 'UIKit.UISwipeGestureRecognizer+Callback, Xamarin.iOS' */ },
		{ NULL, 0xD204 /* '__UIScreenEdgePanGestureRecognizer' => 'UIKit.UIScreenEdgePanGestureRecognizer+Callback, Xamarin.iOS' */ },
		{ NULL, 0xDC04 /* 'UIKit_UIBarButtonItem_Callback' => 'UIKit.UIBarButtonItem+Callback, Xamarin.iOS' */ },
		{ NULL, 0x10E04 /* 'UIKit_UIScrollView__UIScrollViewDelegate' => 'UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS' */ },
		{ NULL, 0x4B0A /* 'CRSandboxObject' => 'CloudrailSI.CRSandboxObject, CloudrailSI' */ },
		{ NULL, 0x70A /* 'CRAddress' => 'CloudrailSI.CRAddress, CloudrailSI' */ },
		{ NULL, 0x80A /* 'CRAdvancedRequestResponse' => 'CloudrailSI.CRAdvancedRequestResponse, CloudrailSI' */ },
		{ NULL, 0x90A /* 'CRAdvancedRequestSpecification' => 'CloudrailSI.CRAdvancedRequestSpecification, CloudrailSI' */ },
		{ NULL, 0xD0A /* 'CRAmazonS3' => 'CloudrailSI.CRAmazonS3, CloudrailSI' */ },
		{ NULL, 0x110A /* 'CRBackblaze' => 'CloudrailSI.CRBackblaze, CloudrailSI' */ },
		{ NULL, 0x120A /* 'CRBox' => 'CloudrailSI.CRBox, CloudrailSI' */ },
		{ NULL, 0x130A /* 'CRBucket' => 'CloudrailSI.CRBucket, CloudrailSI' */ },
		{ NULL, 0x160A /* 'CRBusinessFileMetaData' => 'CloudrailSI.CRBusinessFileMetaData, CloudrailSI' */ },
		{ NULL, 0x170A /* 'CRCharge' => 'CloudrailSI.CRCharge, CloudrailSI' */ },
		{ NULL, 0x180A /* 'CRCloudMetaData' => 'CloudrailSI.CRCloudMetaData, CloudrailSI' */ },
		{ NULL, 0x190A /* 'CRCloudRail' => 'CloudrailSI.CRCloudRail, CloudrailSI' */ },
		{ NULL, 0x1D0A /* 'CRCreditCard' => 'CloudrailSI.CRCreditCard, CloudrailSI' */ },
		{ NULL, 0x1E0A /* 'CRDateOfBirth' => 'CloudrailSI.CRDateOfBirth, CloudrailSI' */ },
		{ NULL, 0x1F0A /* 'CRDropbox' => 'CloudrailSI.CRDropbox, CloudrailSI' */ },
		{ NULL, 0x200A /* 'CREgnyte' => 'CloudrailSI.CREgnyte, CloudrailSI' */ },
		{ NULL, 0x240A /* 'CRError' => 'CloudrailSI.CRError, CloudrailSI' */ },
		{ NULL, 0x250A /* 'CRExceptionHandler' => 'CloudrailSI.CRExceptionHandler, CloudrailSI' */ },
		{ NULL, 0x260A /* 'CRFacebook' => 'CloudrailSI.CRFacebook, CloudrailSI' */ },
		{ NULL, 0x270A /* 'CRFacebookPage' => 'CloudrailSI.CRFacebookPage, CloudrailSI' */ },
		{ NULL, 0x280A /* 'CRFoursquare' => 'CloudrailSI.CRFoursquare, CloudrailSI' */ },
		{ NULL, 0x290A /* 'CRGitHub' => 'CloudrailSI.CRGitHub, CloudrailSI' */ },
		{ NULL, 0x2A0A /* 'CRGoogleCloudPlatform' => 'CloudrailSI.CRGoogleCloudPlatform, CloudrailSI' */ },
		{ NULL, 0x2B0A /* 'CRGoogleDrive' => 'CloudrailSI.CRGoogleDrive, CloudrailSI' */ },
		{ NULL, 0x2C0A /* 'CRGooglePlaces' => 'CloudrailSI.CRGooglePlaces, CloudrailSI' */ },
		{ NULL, 0x2D0A /* 'CRGooglePlus' => 'CloudrailSI.CRGooglePlus, CloudrailSI' */ },
		{ NULL, 0x2E0A /* 'CRHeroku' => 'CloudrailSI.CRHeroku, CloudrailSI' */ },
		{ NULL, 0x2F0A /* 'CRImageMetaData' => 'CloudrailSI.CRImageMetaData, CloudrailSI' */ },
		{ NULL, 0x300A /* 'CRInstagram' => 'CloudrailSI.CRInstagram, CloudrailSI' */ },
		{ NULL, 0x310A /* 'CRLinkedIn' => 'CloudrailSI.CRLinkedIn, CloudrailSI' */ },
		{ NULL, 0x320A /* 'CRLocation' => 'CloudrailSI.CRLocation, CloudrailSI' */ },
		{ NULL, 0x330A /* 'CRMailJet' => 'CloudrailSI.CRMailJet, CloudrailSI' */ },
		{ NULL, 0x340A /* 'CRMicrosoft' => 'CloudrailSI.CRMicrosoft, CloudrailSI' */ },
		{ NULL, 0x350A /* 'CRMicrosoftAzure' => 'CloudrailSI.CRMicrosoftAzure, CloudrailSI' */ },
		{ NULL, 0x360A /* 'CRMicrosoftLive' => 'CloudrailSI.CRMicrosoftLive, CloudrailSI' */ },
		{ NULL, 0x370A /* 'CRNexmo' => 'CloudrailSI.CRNexmo, CloudrailSI' */ },
		{ NULL, 0x380A /* 'CROneDrive' => 'CloudrailSI.CROneDrive, CloudrailSI' */ },
		{ NULL, 0x390A /* 'CROneDriveBusiness' => 'CloudrailSI.CROneDriveBusiness, CloudrailSI' */ },
		{ NULL, 0x3D0A /* 'CRPayPal' => 'CloudrailSI.CRPayPal, CloudrailSI' */ },
		{ NULL, 0x420A /* 'CRPOI' => 'CloudrailSI.CRPOI, CloudrailSI' */ },
		{ NULL, 0x460A /* 'CRProductHunt' => 'CloudrailSI.CRProductHunt, CloudrailSI' */ },
		{ NULL, 0x490A /* 'CRRackspace' => 'CloudrailSI.CRRackspace, CloudrailSI' */ },
		{ NULL, 0x4A0A /* 'CRRefund' => 'CloudrailSI.CRRefund, CloudrailSI' */ },
		{ NULL, 0x4C0A /* 'CRSendGrid' => 'CloudrailSI.CRSendGrid, CloudrailSI' */ },
		{ NULL, 0x4D0A /* 'CRSlack' => 'CloudrailSI.CRSlack, CloudrailSI' */ },
		{ NULL, 0x540A /* 'CRSpaceAllocation' => 'CloudrailSI.CRSpaceAllocation, CloudrailSI' */ },
		{ NULL, 0x550A /* 'CRStripe' => 'CloudrailSI.CRStripe, CloudrailSI' */ },
		{ NULL, 0x560A /* 'CRSubscription' => 'CloudrailSI.CRSubscription, CloudrailSI' */ },
		{ NULL, 0x570A /* 'CRSubscriptionPlan' => 'CloudrailSI.CRSubscriptionPlan, CloudrailSI' */ },
		{ NULL, 0x580A /* 'CRTwilio' => 'CloudrailSI.CRTwilio, CloudrailSI' */ },
		{ NULL, 0x590A /* 'CRTwitter' => 'CloudrailSI.CRTwitter, CloudrailSI' */ },
		{ NULL, 0x5A0A /* 'CRTwizo' => 'CloudrailSI.CRTwizo, CloudrailSI' */ },
		{ NULL, 0x5E0A /* 'CRYahoo' => 'CloudrailSI.CRYahoo, CloudrailSI' */ },
		{ NULL, 0x5F0A /* 'CRYelp' => 'CloudrailSI.CRYelp, CloudrailSI' */ },
		{ NULL, 0x600A /* 'CustomStream' => 'CloudrailSI.CustomStream, CloudrailSI' */ },
		{ NULL, 0 },
	};

	static const char *__xamarin_registration_assemblies []= {
		"UnifiedCloudStorage", 
		"mscorlib", 
		"Xamarin.iOS", 
		"System", 
		"Mono.Security", 
		"CloudrailSI"
	};

	static struct MTFullTokenReference __xamarin_token_references [] = {
	};

	static struct MTRegistrationMap __xamarin_registration_map = {
		__xamarin_registration_assemblies,
		__xamarin_class_map,
		__xamarin_token_references,
		6,
		149,
		76,
		0
	};

void xamarin_create_classes () {
	__xamarin_class_map [0].handle = objc_getClass ("NSObject");
	__xamarin_class_map [1].handle = objc_getClass ("UIResponder");
	__xamarin_class_map [2].handle = objc_getClass ("UIViewController");
	__xamarin_class_map [3].handle = objc_getClass ("UITableViewController");
	__xamarin_class_map [4].handle = objc_getClass ("UIView");
	__xamarin_class_map [5].handle = objc_getClass ("UIScrollView");
	__xamarin_class_map [6].handle = objc_getClass ("UITableView");
	__xamarin_class_map [7].handle = objc_getClass ("UITableViewCell");
	__xamarin_class_map [8].handle = objc_getClass ("UITraitCollection");
	__xamarin_class_map [9].handle = objc_getClass ("UIWindow");
	__xamarin_class_map [10].handle = objc_getClass ("UIColor");
	__xamarin_class_map [11].handle = objc_getClass ("NSIndexPath");
	__xamarin_class_map [12].handle = objc_getClass ("NSUserActivity");
	__xamarin_class_map [13].handle = objc_getClass ("NSArray");
	__xamarin_class_map [14].handle = objc_getClass ("UICubicTimingParameters");
	__xamarin_class_map [15].handle = objc_getClass ("NSCoder");
	__xamarin_class_map [16].handle = objc_getClass ("UIDevice");
	__xamarin_class_map [17].handle = objc_getClass ("NSDate");
	__xamarin_class_map [18].handle = objc_getClass ("NSStream");
	__xamarin_class_map [19].handle = objc_getClass ("NSInputStream");
	__xamarin_class_map [20].handle = objc_getClass ("NSMutableArray");
	__xamarin_class_map [21].handle = objc_getClass ("NSRunLoop");
	__xamarin_class_map [22].handle = objc_getClass ("NSString");
	__xamarin_class_map [23].handle = objc_getClass ("NSURL");
	__xamarin_class_map [24].handle = objc_getClass ("NSUserDefaults");
	__xamarin_class_map [25].handle = objc_getClass ("UIFocusAnimationCoordinator");
	__xamarin_class_map [26].handle = objc_getClass ("UIFocusUpdateContext");
	__xamarin_class_map [27].handle = objc_getClass ("__MonoMac_NSActionDispatcher");
	__xamarin_class_map [28].handle = objc_getClass ("__MonoMac_NSAsyncActionDispatcher");
	__xamarin_class_map [29].handle = objc_getClass ("NSAutoreleasePool");
	__xamarin_class_map [30].handle = objc_getClass ("NSError");
	__xamarin_class_map [31].handle = objc_getClass ("CALayer");
	__xamarin_class_map [32].handle = objc_getClass ("NSValue");
	__xamarin_class_map [33].handle = objc_getClass ("NSNumber");
	__xamarin_class_map [34].handle = objc_getClass ("UIImage");
	__xamarin_class_map [35].handle = objc_getClass ("UIImageView");
	__xamarin_class_map [36].handle = objc_getClass ("UILabel");
	__xamarin_class_map [37].handle = objc_getClass ("UILocalNotification");
	__xamarin_class_map [38].handle = objc_getClass ("UIBezierPath");
	__xamarin_class_map [39].handle = objc_getClass ("UINavigationController");
	__xamarin_class_map [40].handle = objc_getClass ("UIPasteboard");
	__xamarin_class_map [41].handle = objc_getClass ("UIApplication");
	__xamarin_class_map [42].handle = objc_getClass ("UIBarItem");
	__xamarin_class_map [43].handle = objc_getClass ("CKShareMetadata");
	__xamarin_class_map [44].handle = objc_getClass ("UINavigationItem");
	__xamarin_class_map [45].handle = objc_getClass ("UIStoryboardSegue");
	__xamarin_class_map [46].handle = objc_getClass ("UIPress");
	__xamarin_class_map [47].handle = objc_getClass ("NSException");
	__xamarin_class_map [48].handle = objc_getClass ("UISpringTimingParameters");
	__xamarin_class_map [49].handle = objc_getClass ("NSNull");
	__xamarin_class_map [50].handle = objc_getClass ("UITableViewFocusUpdateContext");
	__xamarin_class_map [51].handle = objc_getClass ("UITableViewRowAction");
	__xamarin_class_map [52].handle = objc_getClass ("UITouch");
	__xamarin_class_map [53].handle = objc_getClass ("UIActivityIndicatorView");
	__xamarin_class_map [54].handle = objc_getClass ("UIApplicationShortcutItem");
	__xamarin_class_map [55].handle = objc_getClass ("UIAlertAction");
	__xamarin_class_map [56].handle = objc_getClass ("UIUserNotificationSettings");
	__xamarin_class_map [57].handle = objc_getClass ("UIAlertController");
	__xamarin_class_map [58].handle = objc_getClass ("NSData");
	__xamarin_class_map [59].handle = objc_getClass ("NSDictionary");
	__xamarin_class_map [60].handle = objc_getClass ("NSMutableData");
	__xamarin_class_map [61].handle = objc_getClass ("NSMutableDictionary");
	__xamarin_class_map [62].handle = objc_getClass ("NSNotificationCenter");
	__xamarin_class_map [63].handle = objc_getClass ("UIGestureRecognizer");
	__xamarin_class_map [64].handle = objc_getClass ("UIImagePickerController");
	__xamarin_class_map [65].handle = objc_getClass ("UILongPressGestureRecognizer");
	__xamarin_class_map [66].handle = objc_getClass ("UIRotationGestureRecognizer");
	__xamarin_class_map [67].handle = objc_getClass ("UITapGestureRecognizer");
	__xamarin_class_map [68].handle = objc_getClass ("UIPanGestureRecognizer");
	__xamarin_class_map [69].handle = objc_getClass ("UIPinchGestureRecognizer");
	__xamarin_class_map [70].handle = objc_getClass ("UISwipeGestureRecognizer");
	__xamarin_class_map [71].handle = objc_getClass ("UIScreenEdgePanGestureRecognizer");
	__xamarin_class_map [72].handle = objc_getClass ("UIBarButtonItem");
	__xamarin_class_map [73].handle = [AppDelegate class];
	__xamarin_class_map [74].handle = [ListViewController class];
	__xamarin_class_map [75].handle = [UnifiedCloudStorage_ListTableSource class];
	__xamarin_class_map [76].handle = [UnifiedCloudStorage_SubfolderSource class];
	__xamarin_class_map [77].handle = [CloudStorageViewController class];
	__xamarin_class_map [78].handle = [UnifiedCloudStorage_CloudStorageSource class];
	__xamarin_class_map [79].handle = [SubfolderViewController class];
	__xamarin_class_map [80].handle = objc_getClass ("__NSObject_Disposer");
	__xamarin_class_map [81].handle = objc_getClass ("__UIGestureRecognizerToken");
	__xamarin_class_map [82].handle = objc_getClass ("__UIGestureRecognizerParameterlessToken");
	__xamarin_class_map [83].handle = objc_getClass ("__UIGestureRecognizerParametrizedToken");
	__xamarin_class_map [84].handle = objc_getClass ("UIKit_UIImagePickerController__UIImagePickerControllerDelegate");
	__xamarin_class_map [85].handle = objc_getClass ("__UILongPressGestureRecognizer");
	__xamarin_class_map [86].handle = objc_getClass ("__UIRotationGestureRecognizer");
	__xamarin_class_map [87].handle = objc_getClass ("__UITapGestureRecognizer");
	__xamarin_class_map [88].handle = objc_getClass ("__UIPanGestureRecognizer");
	__xamarin_class_map [89].handle = objc_getClass ("__UIPinchGestureRecognizer");
	__xamarin_class_map [90].handle = objc_getClass ("__UISwipeGestureRecognizer");
	__xamarin_class_map [91].handle = objc_getClass ("__UIScreenEdgePanGestureRecognizer");
	__xamarin_class_map [92].handle = objc_getClass ("UIKit_UIBarButtonItem_Callback");
	__xamarin_class_map [93].handle = objc_getClass ("UIKit_UIScrollView__UIScrollViewDelegate");
	__xamarin_class_map [94].handle = [CRSandboxObject class];
	__xamarin_class_map [95].handle = [CRAddress class];
	__xamarin_class_map [96].handle = [CRAdvancedRequestResponse class];
	__xamarin_class_map [97].handle = [CRAdvancedRequestSpecification class];
	__xamarin_class_map [98].handle = [CRAmazonS3 class];
	__xamarin_class_map [99].handle = [CRBackblaze class];
	__xamarin_class_map [100].handle = [CRBox class];
	__xamarin_class_map [101].handle = [CRBucket class];
	__xamarin_class_map [102].handle = [CRBusinessFileMetaData class];
	__xamarin_class_map [103].handle = [CRCharge class];
	__xamarin_class_map [104].handle = [CRCloudMetaData class];
	__xamarin_class_map [105].handle = [CRCloudRail class];
	__xamarin_class_map [106].handle = [CRCreditCard class];
	__xamarin_class_map [107].handle = [CRDateOfBirth class];
	__xamarin_class_map [108].handle = [CRDropbox class];
	__xamarin_class_map [109].handle = [CREgnyte class];
	__xamarin_class_map [110].handle = [CRError class];
	__xamarin_class_map [111].handle = [CRExceptionHandler class];
	__xamarin_class_map [112].handle = [CRFacebook class];
	__xamarin_class_map [113].handle = [CRFacebookPage class];
	__xamarin_class_map [114].handle = [CRFoursquare class];
	__xamarin_class_map [115].handle = [CRGitHub class];
	__xamarin_class_map [116].handle = [CRGoogleCloudPlatform class];
	__xamarin_class_map [117].handle = [CRGoogleDrive class];
	__xamarin_class_map [118].handle = [CRGooglePlaces class];
	__xamarin_class_map [119].handle = [CRGooglePlus class];
	__xamarin_class_map [120].handle = [CRHeroku class];
	__xamarin_class_map [121].handle = [CRImageMetaData class];
	__xamarin_class_map [122].handle = [CRInstagram class];
	__xamarin_class_map [123].handle = [CRLinkedIn class];
	__xamarin_class_map [124].handle = [CRLocation class];
	__xamarin_class_map [125].handle = [CRMailJet class];
	__xamarin_class_map [126].handle = [CRMicrosoft class];
	__xamarin_class_map [127].handle = [CRMicrosoftAzure class];
	__xamarin_class_map [128].handle = [CRMicrosoftLive class];
	__xamarin_class_map [129].handle = [CRNexmo class];
	__xamarin_class_map [130].handle = [CROneDrive class];
	__xamarin_class_map [131].handle = [CROneDriveBusiness class];
	__xamarin_class_map [132].handle = [CRPayPal class];
	__xamarin_class_map [133].handle = [CRPOI class];
	__xamarin_class_map [134].handle = [CRProductHunt class];
	__xamarin_class_map [135].handle = [CRRackspace class];
	__xamarin_class_map [136].handle = [CRRefund class];
	__xamarin_class_map [137].handle = [CRSendGrid class];
	__xamarin_class_map [138].handle = [CRSlack class];
	__xamarin_class_map [139].handle = [CRSpaceAllocation class];
	__xamarin_class_map [140].handle = [CRStripe class];
	__xamarin_class_map [141].handle = [CRSubscription class];
	__xamarin_class_map [142].handle = [CRSubscriptionPlan class];
	__xamarin_class_map [143].handle = [CRTwilio class];
	__xamarin_class_map [144].handle = [CRTwitter class];
	__xamarin_class_map [145].handle = [CRTwizo class];
	__xamarin_class_map [146].handle = [CRYahoo class];
	__xamarin_class_map [147].handle = [CRYelp class];
	__xamarin_class_map [148].handle = [CustomStream class];
	xamarin_add_registration_map (&__xamarin_registration_map);
}


