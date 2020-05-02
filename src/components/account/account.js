import React, { Component } from "react"

import account from "../../images/account.png"

const Account = () => {

  function openModal() {
    window.netlifyIdentity.open()
  }

  function isLogged() {
    return window.netlifyIdentity.currentUser() !== null;
  }

  function renderAccountIcon() {
    if (isLogged()) {
      return <div>Connecte</div>
    } else {
      return <div><img className={"account"} src={account} alt="" onClick={openModal}/></div>
    }
  }

  return (
    <div>
      {renderAccountIcon}
    </div>
  )
}

export default Account
