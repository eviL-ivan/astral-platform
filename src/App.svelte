<script>
  import Header from "components/Header.svelte";
  import Main from "components/Main.svelte";
  import About from "components/About.svelte";
  import Contacts from "components/Contacts.svelte";
  import News from "components/News.svelte";
  import Content from "components/Content.svelte";
  import Footer from "components/Footer.svelte";
  import { Router, Route } from "svelte-routing";

  export let url = "";
</script>

<style>
  .wrapper {
    position: relative;
    min-height: 100%;
  }
  .content{
    padding-bottom: 205px;
  }
</style>

<Router>
  <div class="wrapper">
    <Header />
    <div class="content">
      <Route path="about" component={About} />
      <Route path="contact" component={Contacts} />
      <Route path="news" component={News} />
      <Route path="content" component={Content} />
      <Route path="/">
        <Main />
      </Route>
    </div>
    <Footer />
  </div>
</Router>
