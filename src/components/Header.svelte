<script>
  import WhiteHeader from "components/Header/WhiteHeader.svelte";
  import CommonHeader from "components/Header/CommonHeader.svelte";

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
</style>

<header class="d-flex top-header">
  {#if isMainHeader}
    <CommonHeader {getProps} {news} />
  {:else}
    <WhiteHeader {getProps} />
  {/if}
</header>
