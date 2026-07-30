import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.VolterraIntegralOperator

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure ExistenceUniquenessPackage {K : VolterraKernelPackage} (V : VolterraIntegralOperatorPackage K) where
  localExistence : Prop
  globalExistence : Prop
  uniqueness : Prop
  continuousDependence : Prop

structure ExistenceUniquenessEvidence {K : VolterraKernelPackage} {V : VolterraIntegralOperatorPackage K} (E : ExistenceUniquenessPackage V) where
  localExistenceClosed : E.localExistence
  globalExistenceClosed : E.globalExistence
  uniquenessClosed : E.uniqueness
  continuousDependenceClosed : E.continuousDependence

def ExistenceUniquenessClosed {K : VolterraKernelPackage} {V : VolterraIntegralOperatorPackage K} (E : ExistenceUniquenessPackage V) : Prop :=
  E.localExistence ∧ E.globalExistence ∧ E.uniqueness ∧ E.continuousDependence

theorem existence_uniqueness_closed_from_evidence {K : VolterraKernelPackage} {V : VolterraIntegralOperatorPackage K} (E : ExistenceUniquenessPackage V) (Ev : ExistenceUniquenessEvidence E) : ExistenceUniquenessClosed E := by
  exact And.intro Ev.localExistenceClosed (And.intro Ev.globalExistenceClosed (And.intro Ev.uniquenessClosed Ev.continuousDependenceClosed))

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse
