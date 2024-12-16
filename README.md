# Inheritance

## Description

In this, we simulate the inheritance of blood types in a family tree. A person’s blood type is determined by two alleles (genetic forms), which can be A, B, or O. Each person inherits one allele from each parent, leading to possible blood type combinations such as OO, OA, OB, AO, AA, AB, BO, BA, and BB.

The goal is to implement a family tree where each person has randomly assigned blood type alleles, and younger generations inherit their blood type alleles from their parents.

### Key Concepts

- **Alleles**: The genetic variations for blood type: A, B, and O.
- **Inheritance**: A child inherits one allele from each parent, and these alleles can combine in different ways to create the child's blood type.
- **Family Tree**: We simulate a family tree where each person has two parents. The oldest generation is assigned random alleles, and younger generations inherit one allele from each of their two parents.

---

## Requirements

1. **Create a Family**: 
   - The `create_family` function takes an integer `generations` as input and creates a family of that size.
   - Each family member (person) is assigned two alleles for their blood type.
   - The oldest generation (root generation) is assigned random alleles, while younger generations inherit alleles from their parents.

2. **Blood Type Alleles**:
   - For each person in the family, two blood type alleles are assigned.
   - For the oldest generation, the alleles are randomly assigned.
   - For the younger generations, alleles are inherited from their parents. Each person inherits one allele from each parent (randomly chosen from the parent's two alleles).

3. **Memory Management**:
   - Use dynamic memory allocation (e.g., `malloc`) to create each family member.
   - Each person should have a pointer to their parents (if applicable). The oldest generation will have no parents (i.e., set to NULL).

4. **Functionality**:
   - Implement the `create_family` function to allocate memory for the family members and assign alleles appropriately.
   - Use the `random_allele` function to randomly assign alleles to individuals in the oldest generation.

