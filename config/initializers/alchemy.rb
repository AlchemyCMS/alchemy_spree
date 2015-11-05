Alchemy::Modules.register_module({
  engine_name: 'spree',
  name: 'spree',
  navigation: {
    controller: 'spree/admin/orders',
    action: 'index',
    name: 'Spree',
    image: 'alchemy_spree/alchemy_module_icon.png'
  }
})
