<script>
  export let text;
  export let Icon;
</script>

<style>
  .list-item {
    width: 100%;
    display: flex;
    position: relative;
    box-sizing: border-box;
    text-align: left;
    align-items: center;
    padding: 15px 24px;
    justify-content: flex-start;
    text-decoration: none;
  }
  .list-item:hover {
    text-decoration: none;
    background-color: rgba(0, 86, 214, 0.05);
    cursor: pointer;
  }
  .service-list-icon {
    width: 50px;
    height: 50px;
    margin-right: 24px;
  }
  .service-list-text {
    font-size: 14px;
    font-weight: bold;
    color: #2e3e56;
  }
</style>

<div class="list-item">
  <div class="service-list-icon">
    <Icon />
  </div>
  <div class="service-list-text">{text}</div>
</div>
