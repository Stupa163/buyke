import React, { Component } from "react"
import swal from "sweetalert"

import account from "../../images/account.png"

const Account = () => {
  async function modalLogout() {

    try {
      await window.netlifyIdentity.currentUser().logout()
    } catch (e) {
      console.log(e)
    }

    swal({
      title: "Déconnexion réussie",
      text: "Vous avez été déconnecté",
      icon: "success"
    })
      .then(() => {
        window.location.reload()
      })

  }

  function openModal() {
    try {
      window.netlifyIdentity.open()
    } catch (e) {
      console.log(e)
    }
  }

  function isLogged() {
    try {
      return window.netlifyIdentity.currentUser() !== null
    } catch (e) {
      return false
    }
  }

  function renderAccountIcon() {
    if (isLogged()) {
      return <div onClick={modalLogout} className={"logout"}><p>Deconnexion</p></div>
    } else {
      return <div><img className={"account"} src={account} alt="" onClick={openModal}/></div>
    }
  }

  return (
    <div className={"account-container"}>
      {renderAccountIcon()}
    </div>
  )
}

export default Account
