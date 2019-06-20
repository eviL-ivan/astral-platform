<script>
  import { Router, Link, Route } from "svelte-routing";
  import NewItem from "./Header/NewsItem.svelte";
  import Logo from "../../static/Logo.svelte";
  import AstralPlatform from "../../static/AstralPlatform.svelte";
  import Login from "../../static/Login.svelte";
  import WhiteHeader from "./WhiteHeader.svelte";
  let isMainHeader = window.location.pathname;
  const news = [
    {
      date: "29.05.2018",
      text: "Состоялся выпуск сертификатов по ГОСТ 2012"
    },
    {
      date: "1.05.2019",
      text: "Внедрение нового регламента проверки документов"
    }
  ];
  let getProps = ({ location, href, isPartiallyCurrent, isCurrent }) => {
    isMainHeader = location.pathname === "/";
    const isActive = href === "/" ? isCurrent : isPartiallyCurrent || isCurrent;
    // The object returned here is spread on the anchor element's attributes
    if (!isMainHeader && isActive) {
      return { class: "active" };
    }
    return {};
  };
</script>

<style>
  header {
    position: relative;
    margin-bottom: 50px;
    background: #0056d6 url("/BackgroundHeader.svg") center repeat;
  }
  header.top-header {
    box-shadow: none;
    margin-bottom: 0;
  }
  .d-flex {
    display: flex;
  }
  .container {
    height: 98px;
    position: absolute;
    top: 0;
    right: 0;
  }
  .container-white {
    height: 98px;
    background-color: white;
    color: black;
  }
  .header-container {
    max-width: 1280px;
    margin: auto;
  }
  .sub-header {
    padding-top: 98px;
    display: flex;
    justify-content: space-around;
    align-items: center;
    margin: 50px 0;
  }
  .sub-header > div {
    margin-bottom: 40px;
  }
  .logo {
    margin: 24px 43px;
  }
  .row {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .header-left {
    display: flex;
    align-items: center;
  }
  .header-right {
    display: flex;
    align-items: center;
    margin: 0 110px;
    padding-top: 11px;
  }
  nav {
    margin-top: 10px;
  }
  nav > :global(a) {
    text-decoration: none;
    color: white;
    margin: 15px 32px 0;
    font-size: 20px;
    cursor: pointer;
    opacity: 0.7;
  }
  nav > :global(a:hover) {
    opacity: 1;
  }
  .wrapper-lk {
    display: flex;
    align-items: center;
    text-decoration: none;
  }
  .text-lk {
    font-size: 16px;
    color: #fff;
    opacity: 0.5;
    margin-right: 6px;
  }
  .link-lk {
    text-decoration: none;
    color: white;
    font-size: 16px;
    cursor: pointer;
  }
  .icon-lk {
    width: 32px;
    height: 32px;
    margin-left: 8px;
  }
  :global(.active) {
    border-bottom: 2px solid white;
    opacity: 1 !important;
  }
</style>

<header class="d-flex top-header">
  {#if isMainHeader}
    <div class="h-100 w-100 header-container">
      <div class="container w-100">
        <div class="row">
          <div class="header-left">
            <div class="logo">
              <Link to="." {getProps}>
                <Logo />
              </Link>
            </div>
            <nav>
              <Link to="about" {getProps}>О нас</Link>
              <Link to="contact" {getProps}>Контакты</Link>
              <Link to="news" {getProps}>Новости</Link>
            </nav>
          </div>
          <div class="header-right">
            <a class="wrapper-lk" href="">
              <div class="text-lk">Войти в</div>
              <div class="link-lk">Личный кабинет</div>
              <div class="icon-lk">
                <Login />
              </div>
            </a>
          </div>
        </div>
      </div>
      <div class="sub-header w-100">
        <div>
          <AstralPlatform />
        </div>
        <div>
          {#each news as { date, text }, i}
            <NewItem {date} {text} />
          {/each}
        </div>
      </div>
    </div>
  {:else}
    <WhiteHeader {getProps} />
  {/if}
</header>
