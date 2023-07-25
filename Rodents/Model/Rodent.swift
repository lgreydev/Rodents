//
//  Rodent.swift
//  Rodents
//
//  Created by Sergey Lukaschuk on 2023-07-21.
//

import Foundation

struct Rodent: Identifiable {
    var id = UUID().uuidString
    var name: String
    var picture: String
    var diet: String
    var description: String
}

var rodents = [
    Rodent(name: "Eastern gray squirrel",
            picture: "eastern_gray_squirrel",
            diet: "Foods tree bark, tree buds, flowers, berries, many types of seeds and acorns, walnuts, and other nuts, like hazelnuts and some types of fungi found in the forests, including fly agaric mushrooms.",
            description: "The eastern gray squirrel, also known, particularly outside of North America, as simply the grey squirrel, is a tree squirrel in the genus Sciurus. It is native to eastern North America, where it is the most prodigious and ecologically essential natural forest regenerator. Widely introduced to certain places around the world, the eastern gray squirrel in Europe, in particular, is regarded as an invasive species. In Europe, Sciurus carolinensis is included since 2016 in the list of Invasive Alien Species of Union concern. This implies that this species cannot be imported, bred, transported, commercialized, or intentionally released into the environment in the whole of the European Union."),
    
    Rodent(name: "Deer Mouse",
            picture: "deer_mouse",
            diet: "The main dietary items usually include seeds, fruits, arthropods, leaves, and fungi; fungi have the least amount of intake.",
            description: " Peromyscus maniculatus is a rodent native to eastern North America. It is most commonly called the eastern deer mouse; when formerly grouped with the western deer mouse, it was referred to as the North American deermouse and is fairly widespread across most of North America east of the Mississippi River, with the major exception being the lowland southeastern United States. Like other Peromyscus species, it can be a vector and carrier of emerging infectious diseases such as hantaviruses and Lyme disease. It is closely related to Peromyscus leucopus, the white-footed mouse.")
]

