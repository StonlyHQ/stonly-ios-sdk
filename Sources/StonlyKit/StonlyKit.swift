//
//  StonlyKit.swift
//
//  Zero-symbol shim that turns `StonlyKit` into an SPM target the host can
//  consume without also declaring `sentry-cocoa` in its own Package.swift.
//
//  Public Stonly API (e.g. `Stonly.Widget`) lives in the binary `Stonly`
//  module — keep `import Stonly` in host code as before.
//

@_exported import Stonly
