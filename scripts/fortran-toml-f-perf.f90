program perf
    use, intrinsic :: iso_fortran_env, only : input_unit, error_unit, output_unit
    use tomlf

    integer :: unit, length
    character(len=:), allocatable :: argument
    type(toml_table), allocatable :: table
    type(toml_error), allocatable :: error
    real :: startTime, stopTime

    if (allocated(argument)) deallocate(argument)
    call get_command_argument(1, length=length)
    allocate(character(len=length) :: argument)
    call get_command_argument(1, argument)


    open(newunit=unit, file=argument)
    if (allocated(table)) deallocate(table)
    call cpu_time(startTime)
    call toml_parse(table, unit, error)
    call cpu_time(stopTime)
    close(unit)
    if (allocated(error)) then
        write(error_unit, '(a)') error%message
    end if

    if (allocated(table)) then
        write(*, '(F10.6)') (stopTime - startTime)
    else
        error stop
    end if
end program perf
