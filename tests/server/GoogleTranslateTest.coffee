googleTranslate = new practical.GoogleTranslate()

Tinytest.add 'Google Translate - should translate text' , (test)->
  translation = googleTranslate.translate("my name is Brandon", "es")

  expect(translation).to.be.a("string")
  expect(translation).to.equal("mi nombre es Brandon")

Tinytest.add 'Google Translate - should translate text with multiple lines' , (test)->
  translation = googleTranslate.translate("my name is Brandon\ni like apples\n", "es")
  expect(translation).to.be.a("string")
  expect(translation).to.equal("mi nombre es Brandon\nMe gustan las manzanas\n")


