/*
* AUTOGENERATED FILE. DO NOT EDIT IT
* Generated by "generate_spidermonkey_bindings.py -c CocosDenshion_spidermonkey.ini" on 2012-07-17
*/

// needed for callbacks from objective-c to JS
#import <objc/runtime.h>
#import "JRSwizzle.h"

#import "jstypedarray.h"
#import "js_bindings_config.h"
#import "ScriptingCore.h"

#import "js_bindings_CocosDenshion_classes.h"


/*
 * SimpleAudioEngine
 */
#pragma mark - SimpleAudioEngine

JSClass* JSPROXY_SimpleAudioEngine_class = NULL;
JSObject* JSPROXY_SimpleAudioEngine_object = NULL;
 // Constructor
JSBool JSPROXY_SimpleAudioEngine_constructor(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *jsobj = [JSPROXY_SimpleAudioEngine createJSObjectWithRealObject:nil context:cx];
    JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(jsobj));

    return JS_TRUE;
}

// Destructor
void JSPROXY_SimpleAudioEngine_finalize(JSContext *cx, JSObject *obj)
{
	CCLOGINFO(@"spidermonkey: finalizing JS object %p (SimpleAudioEngine)", obj);
}

// Arguments: 
// Ret value: float (d)
JSBool JSPROXY_SimpleAudioEngine_backgroundMusicVolume(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc == 0, @"Invalid number of arguments" );
	float ret_val;

	SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	ret_val = [real backgroundMusicVolume ];
	JS_SET_RVAL(cx, vp, DOUBLE_TO_JSVAL(ret_val));
	return JS_TRUE;
}

// Arguments: 
// Ret value: float (d)
JSBool JSPROXY_SimpleAudioEngine_effectsVolume(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc == 0, @"Invalid number of arguments" );
	float ret_val;

	SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	ret_val = [real effectsVolume ];
	JS_SET_RVAL(cx, vp, DOUBLE_TO_JSVAL(ret_val));
	return JS_TRUE;
}

// Arguments: 
// Ret value: void (None)
JSBool JSPROXY_SimpleAudioEngine_end_static(JSContext *cx, uint32_t argc, jsval *vp) {
	JSB_PRECONDITION( argc == 0, @"Invalid number of arguments" );

	[SimpleAudioEngine end ];
	JS_SET_RVAL(cx, vp, JSVAL_VOID);
	return JS_TRUE;
}

// Arguments: 
// Ret value: BOOL (b)
JSBool JSPROXY_SimpleAudioEngine_isBackgroundMusicPlaying(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc == 0, @"Invalid number of arguments" );
	BOOL ret_val;

	SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	ret_val = [real isBackgroundMusicPlaying ];
	JS_SET_RVAL(cx, vp, BOOLEAN_TO_JSVAL(ret_val));
	return JS_TRUE;
}

// Arguments: 
// Ret value: void (None)
JSBool JSPROXY_SimpleAudioEngine_pauseBackgroundMusic(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc == 0, @"Invalid number of arguments" );

	SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	[real pauseBackgroundMusic ];
	JS_SET_RVAL(cx, vp, JSVAL_VOID);
	return JS_TRUE;
}

// Arguments: NSString*, BOOL
// Ret value: void (None)
JSBool JSPROXY_SimpleAudioEngine_playBackgroundMusic_loop_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc >= 1 && argc <= 2 , @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);
	JSBool ok = JS_TRUE;
	NSString* arg0; JSBool arg1; 

	ok &= jsval_to_nsstring( cx, *argvp++, &arg0 );
	if (argc >= 2) {
		ok &= JS_ValueToBoolean( cx, *argvp++, &arg1 );
	}
	if( ! ok ) return JS_FALSE;

	if( argc == 1 ) {
		SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	[real playBackgroundMusic:(NSString*)arg0  ];
	}
	else if( argc == 2 ) {
		SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	[real playBackgroundMusic:(NSString*)arg0 loop:(BOOL)arg1  ];
	}
	else
		return JS_FALSE;

	JS_SET_RVAL(cx, vp, JSVAL_VOID);
	return JS_TRUE;
}

// Arguments: NSString*, Float32, Float32, Float32
// Ret value: ALuint (u)
JSBool JSPROXY_SimpleAudioEngine_playEffect_pitch_pan_gain_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc >= 1 && argc <= 4 , @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);
	JSBool ok = JS_TRUE;
	NSString* arg0; double arg1; double arg2; double arg3; 

	ok &= jsval_to_nsstring( cx, *argvp++, &arg0 );
	if (argc >= 2) {
		ok &= JS_ValueToNumber( cx, *argvp++, &arg1 );
	}
	if (argc >= 3) {
		ok &= JS_ValueToNumber( cx, *argvp++, &arg2 );
	}
	if (argc >= 4) {
		ok &= JS_ValueToNumber( cx, *argvp++, &arg3 );
	}
	if( ! ok ) return JS_FALSE;
	ALuint ret_val;

	if( argc == 1 ) {
		SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	ret_val = [real playEffect:(NSString*)arg0  ];
	}
	else if( argc == 4 ) {
		SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	ret_val = [real playEffect:(NSString*)arg0 pitch:(Float32)arg1 pan:(Float32)arg2 gain:(Float32)arg3  ];
	}
	else
		return JS_FALSE;

	JS_SET_RVAL(cx, vp, INT_TO_JSVAL(ret_val));
	return JS_TRUE;
}

// Arguments: NSString*
// Ret value: void (None)
JSBool JSPROXY_SimpleAudioEngine_preloadBackgroundMusic_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);
	JSBool ok = JS_TRUE;
	NSString* arg0; 

	ok &= jsval_to_nsstring( cx, *argvp++, &arg0 );
	if( ! ok ) return JS_FALSE;

	SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	[real preloadBackgroundMusic:(NSString*)arg0  ];
	JS_SET_RVAL(cx, vp, JSVAL_VOID);
	return JS_TRUE;
}

// Arguments: NSString*
// Ret value: void (None)
JSBool JSPROXY_SimpleAudioEngine_preloadEffect_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);
	JSBool ok = JS_TRUE;
	NSString* arg0; 

	ok &= jsval_to_nsstring( cx, *argvp++, &arg0 );
	if( ! ok ) return JS_FALSE;

	SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	[real preloadEffect:(NSString*)arg0  ];
	JS_SET_RVAL(cx, vp, JSVAL_VOID);
	return JS_TRUE;
}

// Arguments: 
// Ret value: void (None)
JSBool JSPROXY_SimpleAudioEngine_resumeBackgroundMusic(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc == 0, @"Invalid number of arguments" );

	SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	[real resumeBackgroundMusic ];
	JS_SET_RVAL(cx, vp, JSVAL_VOID);
	return JS_TRUE;
}

// Arguments: 
// Ret value: void (None)
JSBool JSPROXY_SimpleAudioEngine_rewindBackgroundMusic(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc == 0, @"Invalid number of arguments" );

	SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	[real rewindBackgroundMusic ];
	JS_SET_RVAL(cx, vp, JSVAL_VOID);
	return JS_TRUE;
}

// Arguments: float
// Ret value: void (None)
JSBool JSPROXY_SimpleAudioEngine_setBackgroundMusicVolume_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);
	JSBool ok = JS_TRUE;
	double arg0; 

	ok &= JS_ValueToNumber( cx, *argvp++, &arg0 );
	if( ! ok ) return JS_FALSE;

	SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	[real setBackgroundMusicVolume:(float)arg0  ];
	JS_SET_RVAL(cx, vp, JSVAL_VOID);
	return JS_TRUE;
}

// Arguments: float
// Ret value: void (None)
JSBool JSPROXY_SimpleAudioEngine_setEffectsVolume_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);
	JSBool ok = JS_TRUE;
	double arg0; 

	ok &= JS_ValueToNumber( cx, *argvp++, &arg0 );
	if( ! ok ) return JS_FALSE;

	SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	[real setEffectsVolume:(float)arg0  ];
	JS_SET_RVAL(cx, vp, JSVAL_VOID);
	return JS_TRUE;
}

// Arguments: 
// Ret value: SimpleAudioEngine* (o)
JSBool JSPROXY_SimpleAudioEngine_sharedEngine_static(JSContext *cx, uint32_t argc, jsval *vp) {
	JSB_PRECONDITION( argc == 0, @"Invalid number of arguments" );
	SimpleAudioEngine* ret_val;

	ret_val = [SimpleAudioEngine sharedEngine ];

	JSObject *jsobj = get_or_create_jsobject_from_realobj( cx, ret_val );
	JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(jsobj));

	return JS_TRUE;
}

// Arguments: 
// Ret value: void (None)
JSBool JSPROXY_SimpleAudioEngine_stopBackgroundMusic(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc == 0, @"Invalid number of arguments" );

	SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	[real stopBackgroundMusic ];
	JS_SET_RVAL(cx, vp, JSVAL_VOID);
	return JS_TRUE;
}

// Arguments: ALuint
// Ret value: void (None)
JSBool JSPROXY_SimpleAudioEngine_stopEffect_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);
	JSBool ok = JS_TRUE;
	uint32_t arg0; 

	ok &= JS_ValueToECMAUint32( cx, *argvp++, &arg0 );
	if( ! ok ) return JS_FALSE;

	SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	[real stopEffect:(ALuint)arg0  ];
	JS_SET_RVAL(cx, vp, JSVAL_VOID);
	return JS_TRUE;
}

// Arguments: NSString*
// Ret value: void (None)
JSBool JSPROXY_SimpleAudioEngine_unloadEffect_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);
	JSBool ok = JS_TRUE;
	NSString* arg0; 

	ok &= jsval_to_nsstring( cx, *argvp++, &arg0 );
	if( ! ok ) return JS_FALSE;

	SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	[real unloadEffect:(NSString*)arg0  ];
	JS_SET_RVAL(cx, vp, JSVAL_VOID);
	return JS_TRUE;
}

// Arguments: 
// Ret value: BOOL (b)
JSBool JSPROXY_SimpleAudioEngine_willPlayBackgroundMusic(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc == 0, @"Invalid number of arguments" );
	BOOL ret_val;

	SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	ret_val = [real willPlayBackgroundMusic ];
	JS_SET_RVAL(cx, vp, BOOLEAN_TO_JSVAL(ret_val));
	return JS_TRUE;
}

// Arguments: 
// Ret value: BOOL (b)
JSBool JSPROXY_SimpleAudioEngine_enabled(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc == 0, @"Invalid number of arguments" );
	BOOL ret_val;

	SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	ret_val = [real enabled ];
	JS_SET_RVAL(cx, vp, BOOLEAN_TO_JSVAL(ret_val));
	return JS_TRUE;
}

// Arguments: 
// Ret value: BOOL (b)
JSBool JSPROXY_SimpleAudioEngine_mute(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc == 0, @"Invalid number of arguments" );
	BOOL ret_val;

	SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	ret_val = [real mute ];
	JS_SET_RVAL(cx, vp, BOOLEAN_TO_JSVAL(ret_val));
	return JS_TRUE;
}

// Arguments: BOOL
// Ret value: void (None)
JSBool JSPROXY_SimpleAudioEngine_setEnabled_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);
	JSBool ok = JS_TRUE;
	JSBool arg0; 

	ok &= JS_ValueToBoolean( cx, *argvp++, &arg0 );
	if( ! ok ) return JS_FALSE;

	SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	[real setEnabled:(BOOL)arg0  ];
	JS_SET_RVAL(cx, vp, JSVAL_VOID);
	return JS_TRUE;
}

// Arguments: BOOL
// Ret value: void (None)
JSBool JSPROXY_SimpleAudioEngine_setMute_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = get_proxy_for_jsobject(obj);

	NSCAssert( proxy && [proxy realObj], @"Invalid Proxy object");
	JSB_PRECONDITION( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);
	JSBool ok = JS_TRUE;
	JSBool arg0; 

	ok &= JS_ValueToBoolean( cx, *argvp++, &arg0 );
	if( ! ok ) return JS_FALSE;

	SimpleAudioEngine *real = (SimpleAudioEngine*) [proxy realObj];
	[real setMute:(BOOL)arg0  ];
	JS_SET_RVAL(cx, vp, JSVAL_VOID);
	return JS_TRUE;
}

void JSPROXY_SimpleAudioEngine_createClass(JSContext *cx, JSObject* globalObj, const char* name )
{
	JSPROXY_SimpleAudioEngine_class = (JSClass *)calloc(1, sizeof(JSClass));
	JSPROXY_SimpleAudioEngine_class->name = name;
	JSPROXY_SimpleAudioEngine_class->addProperty = JS_PropertyStub;
	JSPROXY_SimpleAudioEngine_class->delProperty = JS_PropertyStub;
	JSPROXY_SimpleAudioEngine_class->getProperty = JS_PropertyStub;
	JSPROXY_SimpleAudioEngine_class->setProperty = JS_StrictPropertyStub;
	JSPROXY_SimpleAudioEngine_class->enumerate = JS_EnumerateStub;
	JSPROXY_SimpleAudioEngine_class->resolve = JS_ResolveStub;
	JSPROXY_SimpleAudioEngine_class->convert = JS_ConvertStub;
	JSPROXY_SimpleAudioEngine_class->finalize = JSPROXY_SimpleAudioEngine_finalize;
//	JSPROXY_SimpleAudioEngine_class->flags = JSCLASS_HAS_PRIVATE;

	static JSPropertySpec properties[] = {
		{0, 0, 0, 0, 0}
	};
	static JSFunctionSpec funcs[] = {
		JS_FN("getBackgroundMusicVolume", JSPROXY_SimpleAudioEngine_backgroundMusicVolume, 0, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("getEffectsVolume", JSPROXY_SimpleAudioEngine_effectsVolume, 0, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("isBackgroundMusicPlaying", JSPROXY_SimpleAudioEngine_isBackgroundMusicPlaying, 0, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("pauseBackgroundMusic", JSPROXY_SimpleAudioEngine_pauseBackgroundMusic, 0, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("playBackgroundMusic", JSPROXY_SimpleAudioEngine_playBackgroundMusic_loop_, 2, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("playEffect", JSPROXY_SimpleAudioEngine_playEffect_pitch_pan_gain_, 4, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("preloadBackgroundMusic", JSPROXY_SimpleAudioEngine_preloadBackgroundMusic_, 1, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("preloadEffect", JSPROXY_SimpleAudioEngine_preloadEffect_, 1, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("resumeBackgroundMusic", JSPROXY_SimpleAudioEngine_resumeBackgroundMusic, 0, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("rewindBackgroundMusic", JSPROXY_SimpleAudioEngine_rewindBackgroundMusic, 0, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("setBackgroundMusicVolume", JSPROXY_SimpleAudioEngine_setBackgroundMusicVolume_, 1, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("setEffectsVolume", JSPROXY_SimpleAudioEngine_setEffectsVolume_, 1, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("stopBackgroundMusic", JSPROXY_SimpleAudioEngine_stopBackgroundMusic, 0, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("stopEffect", JSPROXY_SimpleAudioEngine_stopEffect_, 1, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("unloadEffect", JSPROXY_SimpleAudioEngine_unloadEffect_, 1, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("getWillPlayBackgroundMusic", JSPROXY_SimpleAudioEngine_willPlayBackgroundMusic, 0, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("enabled", JSPROXY_SimpleAudioEngine_enabled, 0, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("mute", JSPROXY_SimpleAudioEngine_mute, 0, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("setEnabled", JSPROXY_SimpleAudioEngine_setEnabled_, 1, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("setMute", JSPROXY_SimpleAudioEngine_setMute_, 1, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FS_END
	};
	static JSFunctionSpec st_funcs[] = {
		JS_FN("end", JSPROXY_SimpleAudioEngine_end_static, 0, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("getInstance", JSPROXY_SimpleAudioEngine_sharedEngine_static, 0, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FS_END
	};

	JSPROXY_SimpleAudioEngine_object = JS_InitClass(cx, globalObj, JSPROXY_NSObject_object, JSPROXY_SimpleAudioEngine_class, JSPROXY_SimpleAudioEngine_constructor,0,properties,funcs,NULL,st_funcs);
}

@implementation JSPROXY_SimpleAudioEngine

+(JSObject*) createJSObjectWithRealObject:(id)realObj context:(JSContext*)cx
{
	JSObject *jsobj = JS_NewObject(cx, JSPROXY_SimpleAudioEngine_class, JSPROXY_SimpleAudioEngine_object, NULL);
	JSPROXY_SimpleAudioEngine *proxy = [[JSPROXY_SimpleAudioEngine alloc] initWithJSObject:jsobj class:[SimpleAudioEngine class]];
	[proxy setRealObj:realObj];

	if( realObj ) {
		objc_setAssociatedObject(realObj, &JSPROXY_association_proxy_key, proxy, OBJC_ASSOCIATION_RETAIN);
		[proxy release];
	}

	[self swizzleMethods];

	return jsobj;
}

@end
