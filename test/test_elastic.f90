! Unit test suite
!
!  Run this test suite with the command: `abaci test`
!
module test_elastic
  use Abaqus_Definitions, only: wp=>abaqus_real_kind
  use Elastic_mod           ! Module to test
  use naturalfruit          ! Test framework (for assert methods)
  implicit none

contains

  ! Unit test for the get_props subroutine
  !  Check that properties are assigned correctly
  subroutine test_get_props

    type(elastic_props_t) :: props
    real(wp) :: props_array(2) = [1.0d9, 0.5d0]

    props = get_properties(props_array)

    call assert_equal(props_array(1), props%e, &
                      message="props%e does not match input array")


    call assert_equal(props_array(2), props%xnu, &
                      message="props%xnu does not match input array")

  end subroutine test_get_props


  ! Unit test for the update_stress subroutine
  !  Assert that the resulting stress vector is correct
  subroutine test_update_stress

    real(wp) :: stress(3) = 0.0d0
    real(wp) :: strain(3) = [1.0d0, 2.0d0, 3.0d0]
    real(wp) :: jac_1(3,3) = reshape([1, 0, 0, 0, 1, 0, 0, 0, 1],[3,3])
    real(wp) :: jac_2(3,3) = reshape([0, 0, 1, 0, 1, 0, 1, 0, 0],[3,3])

    call update_stress(stress, strain, jac_1)

    call assert_equal(stress, [1.0d0, 2.0d0, 3.0d0] , &
                      message="incorrect stress vector")


    call update_stress(stress, strain, jac_2)

    call assert_equal(stress, [4.0d0, 4.0d0, 4.0d0] , &
                      message="incorrect stress vector")

  end subroutine test_update_stress

end module test_elastic
