@@directive("'use client'")

module Link = Next.Link
module Image = Next.Image
module Navigation = Next.Navigation

@react.component
let default = () => {
  let pathname = Navigation.usePathname()

  <nav className="container p-4">
    <div className="flex items-center justify-between">
      <Link href="/" prefetch={true} scroll={true}>
        <Image
          className="w-20" src="/next.svg" alt="next.js logo" height=61 width=300 priority=true
        />
      </Link>
      <div className="flex gap-4">
        <Link
          className={`font-bold text-lg ${pathname == "/"
              ? "underline text-teal-700"
              : ""} transition-all`}
          href="/">
          {React.string("Home")}
        </Link>
        <Link
          className={`font-bold text-lg ${pathname == "/about"
              ? "underline text-teal-700"
              : ""} transition-all`}
          href="/about">
          {React.string("About")}
        </Link>
      </div>
    </div>
  </nav>
}
