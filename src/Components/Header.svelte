<script>
  import Logo from "./Header/Logo.svelte";
</script>

<style>
  article,
  aside,
  dialog,
  figcaption,
  figure,
  footer,
  header,
  hgroup,
  main,
  nav,
  section {
    display: block;
  }
  *,
  ::after,
  ::before {
    box-sizing: border-box;
  }
  header {
    position: relative;
    margin-bottom: 50px;
  }
  header.top-header {
    box-shadow: none;
    margin-bottom: 0;
    background-color: #0074c6;
  }
  .d-flex {
    display: flex;
  }
  .container {
    height: 87px;
    position: fixed;
    top: 0;
    background-color: #0074c6;
  }
  .sub-header {
    height: 312px;
  }
  .logo{
    margin: 15px;
  }
</style>

<header class="d-flex top-header">
  <div class="h-100 w-100">
    <div class="container w-100">
      <div class="logo">
        <Logo />
      </div>
    </div>
    <div class="sub-header w-100" />

  </div>
</header>
