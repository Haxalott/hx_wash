RegisterCommand('wash', function(source)
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)
    if vehicle == 0 then
        lib.notify({
            title = 'You need to be in a vehicle to do this',
            type = 'error'
        })
    else
        SetVehicleDirtLevel(vehicle, 0.0)
        lib.notify({
            title = 'Your vehicle has been washed',
            type = 'success'
        })
    end
end)

RegisterCommand('setmaxdirt', function(source)
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)
    if vehicle == 0 then
        lib.notify({
            title = 'You need to be in a vehicle to do this',
            type = 'error'
        })
    else
        SetVehicleDirtLevel(vehicle, 15.0)
        lib.notify({
            title = 'Your vehicle has gotten dirtier',
            type = 'success'
        })
    end
end)