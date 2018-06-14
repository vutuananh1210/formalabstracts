import
analysis.real
 analysis.topology.topological_structures
structure homeo (α β : Type* )[topological_space α ][topological_space β ] extends α ≃ β :=
(to_fun_cont: continuous to_fun) 
(inv_fun_cont: continuous inv_fun )
variable (n:ℕ )
#check fin n 
#check (by apply_instance:
 topological_space (fin n → ℝ ))

 class manifold  (α :Type*)(n:ℕ ) extends
  topological_space α, 
  t2_space α := 
  (locally_ℝn:
   ∀ x :α , ∃ U,
 is_open U ∧ x ∈ U ∧ nonempty(homeo U (fin n → ℝ ))  ) 
