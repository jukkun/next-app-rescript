module Link = {
  @module("next/link") @react.component
  external make: (
    ~href: string,
    @as("as") ~_as: string=?,
    ~replace: bool=?,
    ~scroll: bool=?,
    ~shallow: bool=?,
    ~passHref: bool=?,
    ~prefetch: bool=?,
    ~className: string=?,
    ~children: React.element,
  ) => React.element = "default"
}

module Image = {
  type imageLoaderProps = {
    src: string,
    width: int,
    quality?: int,
  }

  @module("next/image") @react.component
  external make: (
    ~src: string,
    ~width: int=?,
    ~height: int=?,
    ~alt: string,
    ~loader: imageLoaderProps=?,
    ~fill: bool=?,
    ~sizes: string=?,
    ~quality: int=?,
    ~priority: bool=?,
    ~placholder: [#blur | #empty]=?,
    ~loading: [#eager | #"lazy"]=?,
    ~blurDataURL: string=?,
    ~unoptimized: bool=?,
    ~overrideSrc: string=?,
    ~className: string=?,
  ) => React.element = "default"
}

module Navigation = {
  @module("next/navigation") external usePathname: unit => string = "usePathname"
  @module("next/navigation") external useParams: unit => Js.Dict.t<string> = "useParams"
}
