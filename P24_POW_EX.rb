def pow(x, n)
    if n == 0
        return 1
    elsif n == 1
        return x
    elsif n % 2 == 0
        return pow(x, n / 2) * pow(x, n / 2)
    else
        return pow(x * x, n / 2) * x
    end
end

def main()
    start = Time.now.to_f
    puts pow(10, 4096) 
    puts (Time.now.to_f - start) * 1000 # 0.7221698760986328
end

main()