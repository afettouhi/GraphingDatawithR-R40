load("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/Nimrod.rda")
x = table(Nimrod$Medium)
x
pie(x, labels = c("Brass band","Concert band","Organ",
                  "Orchestra"),
  col = c("gold3","deepskyblue","peachpuff3","magenta"))

