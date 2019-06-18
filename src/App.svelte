<script>
  import Header from "components/Header.svelte";
  import Main from "components/Main.svelte";
  import News from "components/News.svelte";
  import Footer from "components/Footer.svelte";
  import { Router, Link, Route } from "svelte-routing";

  export let url = "";
</script>

<Router {url}>
  <Header />
  <div>
    <Route path="about" component={News} />
    <Route path="contact" component={News} />
    <Route path="news" component={News} />
    <Route path="/">
      <Main />
    </Route>
  </div>
  <Footer />
</Router>
