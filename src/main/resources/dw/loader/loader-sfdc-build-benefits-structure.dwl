%dw 2.0
import dw::loader::modules::loaderBenefitsBasicStructure
output application/java
---
loaderBenefitsBasicStructure::main(payload: payload) map ((pl01, idx) -> {
   businessGroup: pl01.businessGroup,
   date: pl01.date as LocalDateTime{format: "uuuu-MM-dd'T'HH:mm:ss.SSSXXX"},
   name: pl01.name,
   value: pl01.value,
   group: pl01.group,
   environmentType: pl01.environmentType
})