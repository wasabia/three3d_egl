//
//  egl.swift
//  three3d_egl
//
//  Created by 赵磊 on 2021/4/30.
//

import OpenGLES.EAGL

public class ThreeEgl {
  public static var contexts: [Int64: EAGLContext] = [:];

  public static func setContext(key: Int64, context: EAGLContext) {
    contexts[key] = context;
  }
  
  public static func getContext(key: Int64) -> EAGLContext? {
    return contexts[key] ?? nil;
  }
  
  public static func remove(key: Int64) {
    contexts.removeValue(forKey: key);
  }
  
  public static func dispose() {
    contexts.removeAll();
  }
}


@_cdecl("makeCurrent")
public func makeCurrent(context: Int64) -> Int64 {
  let _context = ThreeEgl.getContext(key: context);
  
  if(_context != nil) {
    var _result = EAGLContext.setCurrent(_context);
    return _result ? 1 : 0;
  } else {
    return -1;
  }
}

@_cdecl("testEgl")
public func testEgl() -> Int32 {
  return 123
}
