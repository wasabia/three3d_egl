//
//  egl.swift
//  three3d_egl
//
//  Created by 赵磊 on 2021/4/30.
//

import OpenGLES.EAGL

public class ThreeEgl {
  static var contexts: [Int64: EAGLContext] = [:];

  public static func setContext(key: Int64, context: EAGLContext) {
    contexts[key] = context;
  }
  
  public static func getContext(key: Int64) -> EAGLContext {
    
    print(contexts);
    print(key);
    
    return contexts[key]!;
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
  
  EAGLContext.setCurrent(_context);
  
  return context;
}

@_cdecl("testEgl")
public func testEgl() -> Int32 {
  return 123
}
