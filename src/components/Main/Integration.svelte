<script>
  import Button from "../Button.svelte";
  let FIO = "",
    organization = "",
    email = "",
    phone = "",
    inn = "",
    kpp = "";
</script>

<style>
  .advantage-header {
    text-align: center;
    font-weight: 300;
    font-size: 28px;
    margin-bottom: 20px;
  }
  .form-wrapper{
    display: flex;
    flex-direction: column;
    align-items: center;
  }
</style>

<div>
  <div class="advantage-header">Заявка на интеграцию</div>
  <div class="form-wrapper">
    <div>
      <input bind:value={FIO} placeholder="Фамилия Имя Отчество" />
      <input bind:value={organization} placeholder="Организация" />
    </div>
    <div>
      <input bind:value={email} placeholder="Email" />
      <input bind:value={phone} placeholder="+7" />
      <input bind:value={inn} placeholder="ИНН" />
      <input bind:value={kpp} placeholder="КПП" />
    </div>
    <div>
      <Button>Отправить заявку</Button>
    </div>
    <div class="personal-data">
      Отправляя заявку Вы соглашаетесь на обработку персональных данных
    </div>
  </div>
</div>
