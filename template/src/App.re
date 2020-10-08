[@react.component]
let make = () => {
  let route = Router.useRouter();

  switch (route) {
  | Some(Home) => <PageHome />
  | None => <PageNotFound />
  };
};
