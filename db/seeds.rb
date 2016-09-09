Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number:        "0626965676",
    category: "chinese"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number:        "0767977427",
    category: "french"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number:        "0874868208",
    category: "vietnamese"
  },
  {
    name:         "le wagon",
    address:      "11 villa gaudelet 75011 Paris",
    phone_number:        "0626965653",
    category: "chinese"
  },
  {
    name:         "The Upcase",
    address:      "12 rue du blaireau  75018 Paris",
    phone_number:        "0908965676",
    category: "french"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }
